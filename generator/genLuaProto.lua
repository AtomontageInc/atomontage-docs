--[[
genLuaProto: parse EmmyLua-annotated engine "system script" Lua files (the Lua-side API that is
NOT part of AE:GetAELuaBindings()) into the same {Classes={...}} structure the C++ dump uses, so
genDocsNew / genEmmy document them uniformly.

Only *documented* public defs are picked up:
  - must be a real function definition (not inside a block comment, not `local function`,
    receiver not `self`)
  - must have a contiguous doc-comment block immediately above (>=1 comment line)
  - the block must NOT contain an @protected annotation
Internal helpers (no doc block, or @protected, or local/self) are skipped.
]]

local genLuaProto = {}

-- Engine system-script dir (same hardcoded atomontage base as main.lua — adjust per machine).
local SCRIPT_DIR = "C:/Users/maxkr/Documents/Code/Atomontage/atomontage/Resources/Studio/Script/ae/"

-- Files to harvest. Only well-annotated public-API scripts; zero-annotation files (json, fzy,
-- bootstrap, ui_func, profile, perlin, …) yield nothing and are omitted. voxelApiCATS.lua is
-- skipped because it re-defines the same Op* classes as voxelApi.lua (would duplicate).
local FILES = {
    "schedule.lua",
    "apiProto.lua",
    "voxelApi.lua",
    "collisionApi.lua",
    "interactionFilter.lua",
    "math_ext.lua",
    "shapes.lua",
    "networkedTable.lua",
    "util.lua",
    "textUtils.lua",
}

local classes = {}   -- className -> {name, onClient, onServer, functions, operators, constructors, properties}
local aliases = {}   -- ordered list of "name def" strings from ---@alias
local aliasSeen = {} -- dedup by alias name

-- normalize sloppy type names to their real EmmyLua names (e.g. `Table` -> `table`)
local function normType(t)
    return (t or ""):gsub("%f[%w]Table%f[%W]", "table")
end

-- primitive Lua/EmmyLua types (used to detect name-first `@return` ordering)
local PRIMITIVES = {
    number = true, integer = true, string = true, boolean = true,
    table = true, ["nil"] = true, any = true, ["function"] = true,
}

-- resolve a `@generic` type param to its constraint (T:table -> table), preserving a trailing '?'
local function resolveGeneric(t, generics)
    if not (generics and t) then return t end
    local base, opt = t:match("^([%w_]+)(%??)$")
    if base and generics[base] then return generics[base] .. opt end
    return t
end

local function getClass(name)
    local c = classes[name]
    if not c then
        c = { name = name, onClient = true, onServer = true,
              functions = {}, operators = {}, constructors = {}, properties = {} }
        classes[name] = c
    end
    return c
end

-- prose lines that carry no documentation value
local function isNoiseProse(s)
    if s == "" then return true end
    if s:match("^%-+$") then return true end            -- separator like -------
    if s:match("^TODO") or s:match("^FIXME") then return true end
    if s == "comment" then return true end              -- ---comment placeholder
    return false
end

-- strip a trailing '?' off a param name -> optional, fold into the type (matches C++ `type?` convention)
local function splitOptional(name, ptype)
    if name:sub(-1) == "?" then
        name = name:sub(1, -2)
        if ptype and ptype:sub(-1) ~= "?" then ptype = ptype .. "?" end
    end
    return name, ptype
end

-- split a "type [description]" string into type + rest. Handles `fun(a: X, b: Y): Z` types that
-- contain spaces (balance the parens), otherwise the type is a single whitespace-delimited token.
local function parseType(s)
    s = (s or ""):gsub("^%s+", "")
    if s:sub(1, 3) == "fun" and s:find("(", 1, true) then
        local depth, i, open = 0, 1, s:find("(", 1, true)
        i = open
        while i <= #s do
            local ch = s:sub(i, i)
            if ch == "(" then depth = depth + 1
            elseif ch == ")" then depth = depth - 1; if depth == 0 then break end end
            i = i + 1
        end
        local ret = s:sub(i + 1):match("^%s*:%s*(%S+)")   -- optional `: RetType` (single token)
        if ret then
            local rest = s:sub(i + 1):match("^%s*:%s*%S+%s*(.*)$") or ""
            return s:sub(1, i) .. ": " .. ret, rest
        end
        return s:sub(1, i), (s:sub(i + 1):gsub("^%s+", ""))
    end
    local typ, rest = s:match("^(%S+)%s*(.*)$")
    return typ or "any", rest or ""
end

-- parse "a, b, c" -> {"a","b","c"}
local function sigArgs(argStr)
    local out = {}
    for a in argStr:gmatch("[^,]+") do
        a = a:gsub("^%s+", ""):gsub("%s+$", "")
        if a ~= "" then out[#out + 1] = a end
    end
    return out
end

-- register a pending @class (name, parent, fields) from a doc block
local function flushClass(doc)
    if not (doc and doc.class) then return end
    local c = getClass(doc.class)
    if doc.classBase then c.extends = doc.classBase end
    if doc.fields then for _, f in ipairs(doc.fields) do table.insert(c.properties, f) end end
end

-- lowercase global tables that are real public API receivers (everything else public is PascalCase)
local LOWER_RECEIVERS = { util = true, ui = true, prof = true, perlin = true, math = true }

-- reject local class-builder vars (e.g. `function c:new()`), `self`, etc.
local function isPublicReceiver(recv)
    if recv == "self" then return false end
    if recv == "Global" then return true end
    if recv:sub(1, 1):match("%u") then return true end   -- PascalCase class (Object, Vox, OpAdd, ...)
    return LOWER_RECEIVERS[recv] or false
end

local function newDoc() return { prose = {}, params = {}, returns = {}, deprecated = false, protected = false, class = nil } end

-- build a function entry {name, params, returns, description, isDeprecated} and add to the class
local function commitFunction(recv, fname, argStr, doc)
    -- params: prefer @param; fall back to signature arg names typed as "any"
    local params = {}
    if #doc.params > 0 then
        for _, p in ipairs(doc.params) do
            params[#params + 1] = { name = p.name, type = resolveGeneric(p.type, doc.generics) }
        end
    else
        for _, a in ipairs(sigArgs(argStr)) do params[#params + 1] = { name = a, type = "any" } end
    end

    local returns = {}
    for _, r in ipairs(doc.returns) do
        returns[#returns + 1] = { name = r.name, type = resolveGeneric(r.type, doc.generics) }
    end

    local desc = {}
    for _, line in ipairs(doc.prose) do if not isNoiseProse(line) then desc[#desc + 1] = line end end
    -- prose may contain Lua table literals / generics ({...}, <...>) that MDX parses as JSX/expressions
    local descStr = table.concat(desc, "\n")   -- preserve the source's line breaks
    descStr = descStr:gsub("[<>{}]", { ["<"] = "&lt;", [">"] = "&gt;", ["{"] = "&#123;", ["}"] = "&#125;" })

    table.insert(getClass(recv).functions, {
        name = fname,
        params = params,
        returns = returns,
        description = descStr,
        isDeprecated = doc.deprecated,
        isLuaProto = true,  -- lets genDocsNew seed the mdx body from this description (C++ entries don't)
    })
end

function genLuaProto:parseFile(path)
    local fh = io.open(path, "r")
    if not fh then print("genLuaProto: could not open " .. path); return end

    local inBlock = false   -- inside a --[[ ]] comment
    local doc = nil         -- accumulating doc block, or nil

    for raw in fh:lines() do
        local line = raw:gsub("^%s+", "")

        -- block comment handling (skip commented-out code, incl. commented-out functions)
        if inBlock then
            if line:find("]]", 1, true) then inBlock = false end
            doc = nil
            goto continue
        end
        if line:find("%-%-%[%[") then
            if not line:find("%]%]", 1, true) then inBlock = true end
            doc = nil
            goto continue
        end

        -- annotation / comment line?
        local anno = line:match("^%-%-%-?@(.+)$")
        local isComment = line:match("^%-%-")
        if anno then
            doc = doc or newDoc()
            local key, rest = anno:match("^(%S+)%s*(.*)$")
            if key == "param" then
                local name, tail = rest:match("^(%S+)%s*(.*)$")
                local ptype = normType(parseType(tail))
                name, ptype = splitOptional(name or "", ptype)
                doc.params[#doc.params + 1] = { name = name, type = ptype }
            elseif key == "return" then
                local rtype, tail = parseType(rest)
                local rname
                -- tolerate name-first ordering (`@return L number ...` -> type=number, name=L)
                local second = tail and tail:match("^(%S+)")
                if second and PRIMITIVES[second] and not PRIMITIVES[rtype] then
                    rname, rtype = rtype, second
                    tail = tail:match("^%S+%s*(.*)$") or ""
                else
                    rname = tail and tail:match("^([%a_][%w_]*)%s*$")   -- lone identifier -> name
                end
                local entry = { type = normType(rtype) }
                if rname then entry.name = rname end
                doc.returns[#doc.returns + 1] = entry
            elseif key == "generic" then
                -- `@generic T`, `@generic T:table`, `@generic T, U` — record so `T`-typed params/returns
                -- can be resolved to their constraint (we don't emit @generic through the pipeline)
                doc.generics = doc.generics or {}
                for part in rest:gmatch("[^,]+") do
                    local gname, constraint = part:match("^%s*([%w_]+)%s*:?%s*([%w_]*)")
                    if gname then doc.generics[gname] = (constraint ~= "" and constraint) or "any" end
                end
            elseif key == "alias" then
                -- `---@alias Name Definition` — collect so referenced types resolve in the emmy
                local aname = rest:match("^(%S+)")
                if aname and not aliasSeen[aname] then
                    aliasSeen[aname] = true
                    aliases[#aliases + 1] = normType(rest)
                end
            elseif key == "field" then
                -- `@field [public|protected|private|package] name type` — strip the optional
                -- visibility modifier; skip non-public fields entirely
                local vis, afterVis = rest:match("^(%S+)%s+(.*)$")
                local visible = true
                if vis == "public" or vis == "package" then
                    rest = afterVis
                elseif vis == "protected" or vis == "private" then
                    visible = false
                end
                if visible then
                    local name, tail = rest:match("^(%S+)%s*(.*)$")
                    local ftype = normType(parseType(tail))
                    doc.fields = doc.fields or {}
                    doc.fields[#doc.fields + 1] = { name = name, type = ftype }
                end
            elseif key == "class" then
                -- `@class Name : Base` — split off the parent (a ':' in the name would otherwise
                -- become an NTFS alt-data-stream when used as a filename, and split the class in two)
                doc.class = rest:match("^([%w_]+)")
                doc.classBase = rest:match("^[%w_]+%s*:%s*([%w_]+)")
            elseif key == "deprecated" then
                doc.deprecated = true
            elseif key == "protected" or key == "private" then
                doc.protected = true
            end
            -- other @directives (@generic, @overload, ...) ignored
            goto continue
        elseif isComment then
            doc = doc or newDoc()
            local prose = line:match("^%-%-%-?%s?(.*)$") or ""
            doc.prose[#doc.prose + 1] = prose
            goto continue
        end

        -- function definition?
        do
            local recv, fname, argStr = line:match("^function%s+([%w_]+):([%w_]+)%s*%((.-)%)")
            if not recv then
                local gname, gargs = line:match("^function%s+([%w_]+)%s*%((.-)%)")
                if gname then recv, fname, argStr = "Global", gname, gargs end
            end
            local isLocal = line:match("^local%s+function")
            if recv and not isLocal then
                flushClass(doc)   -- e.g. `@class Name:Base` sitting directly above a function
                -- skip `__`-prefixed internals (e.g. Script:__updateNetworkedValue added at runtime)
                if isPublicReceiver(recv) and not fname:match("^__") and doc and not doc.protected then
                    commitFunction(recv, fname, argStr, doc)
                end
                doc = nil
                goto continue
            end
        end

        -- any other line breaks doc contiguity; register a pending @class first
        flushClass(doc)
        doc = nil

        ::continue::
    end
    fh:close()
end

-- parse all configured files and merge into the C++ bindings table
function genLuaProto:mergeInto(bindings)
    classes = {}
    aliases = {}
    aliasSeen = {}
    for _, name in ipairs(FILES) do
        self:parseFile(SCRIPT_DIR .. name)
    end

    local addedFns, newClasses = 0, 0
    for cname, cls in pairs(classes) do
        local target = bindings.Classes[cname]
        if target then
            target.functions = target.functions or {}
            for _, fn in ipairs(cls.functions) do table.insert(target.functions, fn); addedFns = addedFns + 1 end
            target.properties = target.properties or {}
            for _, p in ipairs(cls.properties) do table.insert(target.properties, p) end
        else
            bindings.Classes[cname] = cls
            newClasses = newClasses + 1
            addedFns = addedFns + #cls.functions
        end
    end
    print(string.format("genLuaProto: merged %d Lua functions across %d classes (%d new)",
        addedFns, (function() local n = 0 for _ in pairs(classes) do n = n + 1 end return n end)(), newClasses))
end

-- write collected `@alias` definitions into the emmy file (call after createFile, before class gen)
function genLuaProto:writeAliases(file)
    for _, a in ipairs(aliases) do
        file:write("--- @alias ", a, "\n")
    end
    if #aliases > 0 then file:write("\n") end
end

return genLuaProto
