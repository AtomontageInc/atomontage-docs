local genEmmy = {}

local util = require("generator.util")

-- Methods whose auto-generated emmy emission isn't expressive enough — e.g. they need EmmyLua
-- generics, type-literal magic (`\`T\``), aliased param types (keyCode/mouseButton), static `.`
-- syntax, or multiple overloads. Each entry's value is the emmy text to emit at the position
-- where auto-gen would have produced the basic version. C++ keeps its `LuaDocClass.Functions`
-- entries for completeness; we just replace the emmy output here.
-- Single source of truth: edit/add an override here, no separate skip-list needed.
local manualMethodOverrides = {
    Object = {
        AddComponent = [[--- @generic T: Component
--- @param type `T`|componentType
--- @return T
function Object:AddComponent(type) end

]],
        GetComponentByType = [[--- @generic ComponentType: Component
--- @param name `ComponentType`|componentType
--- @return ComponentType
function Object:GetComponentByType(name) end

]],
        GetComponentsByType = [[--- @generic ComponentType: Component
--- @param name `ComponentType`|componentType
--- @return ComponentType[]
function Object:GetComponentsByType(name) end

]],
        GetComponentWithChildren = [[--- @generic ComponentType: Component
--- @param name `ComponentType`|componentType
--- @param includeInactive? boolean
--- @return ComponentType
function Object:GetComponentWithChildren(name, includeInactive) end

]],
        GetComponentsWithChildren = [[--- @generic ComponentType: Component
--- @param name `ComponentType`|componentType
--- @param includeInactive? boolean
--- @return ComponentType[]
function Object:GetComponentsWithChildren(name, includeInactive) end

]],
        FindScript = [[--- @generic ScriptInstanceType: ScriptInstance
--- @param name `ScriptInstanceType`
--- @return ScriptInstanceType
function Object:FindScript(name) end

]],
        FindScriptWithChildren = [[--- @generic ScriptInstanceType: ScriptInstance
--- @param name `ScriptInstanceType`
--- @return ScriptInstanceType
function Object:FindScriptWithChildren(name) end

]],
        FindScriptInParents = [[--- @generic ScriptInstanceType: ScriptInstance
--- @param name `ScriptInstanceType`
--- @return ScriptInstanceType
function Object:FindScriptInParents(name) end

]],
    },

    Scene = {
        TraceRay = [[--- @class TraceRayParams:table
--- @field Origin Vec3
--- @field Dir Vec3
--- @field TraceAtlas boolean
--- @field TraceCommon boolean
--- @field ForceComponents VoxelRenderer[]
--- @field IgnoreComponents VoxelRenderer[]

--- @param p1 TraceRayParams
--- @return Hit[]
function Scene:TraceRay(p1) end

]],
    },

    Input = {
        MouseButtonDown = [[--- @param mouseButton mouseButton
--- @return boolean
function Input:MouseButtonDown(mouseButton) end

]],
        MouseButton = [[--- @param p1 mouseButton
--- @return boolean
function Input:MouseButton(p1) end

]],
        MouseButtonUp = [[--- @param p1 mouseButton
--- @return boolean
function Input:MouseButtonUp(p1) end

]],
    },

    -- Mat4 statics: sol2 binds these as free-function lambdas (no `Mat4f` self) — must be
    -- called as `Mat4.X(...)` not `Mat4:X(...)`. Auto-gen always emits `:`, so override here.
    Mat4 = {
        Translation = [[--- @param x number
--- @param y number
--- @param z number
--- @return Mat4
function Mat4.Translation(x, y, z) end

--- @param vec Vec3
--- @return Mat4
function Mat4.Translation(vec) end

]],
        RotationXYZ = [[--- @param x number
--- @param y number
--- @param z number
--- @return Mat4
function Mat4.RotationXYZ(x, y, z) end

--- @param angles Vec3
--- @return Mat4
function Mat4.RotationXYZ(angles) end

]],
        RotationYawPitchRoll = [[--- @param angleYaw number
--- @param anglePitch number
--- @param angleRoll number
--- @return Mat4
function Mat4.RotationYawPitchRoll(angleYaw, anglePitch, angleRoll) end

--- @param angles Vec3
--- @return Mat4
function Mat4.RotationYawPitchRoll(angles) end

]],
        Scaling = [[--- @param x number
--- @param y number
--- @param z number
--- @return Mat4
function Mat4.Scaling(x, y, z) end

--- @param scale Vec3
--- @return Mat4
function Mat4.Scaling(scale) end

]],
        LookAt = [[--- @param eyePos Vec3
--- @param targetPos Vec3
--- @param up Vec3
--- @return Mat4
function Mat4.LookAt(eyePos, targetPos, up) end

]],
        Perspective = [[--- @param fovY number
--- @param aspect number
--- @param znear number
--- @param zfar number
--- @return Mat4
function Mat4.Perspective(fovY, aspect, znear, zfar) end

]],
        Ortho = [[--- @param left number
--- @param right number
--- @param bottom number
--- @param top number
--- @param zNear number
--- @param zFar number
--- @return Mat4
function Mat4.Ortho(left, right, bottom, top, zNear, zFar) end

]],
        -- Mat4:Invert mutates the matrix in place and returns it. sol2 lets callers
        -- use either `m:Invert()` (instance) or `Mat4.Invert(m)` (static-style with
        -- explicit self) — emit both so EmmyLua type-checks both call patterns.
        Invert = [[--- @return Mat4
function Mat4:Invert() end

--- @param m Mat4
--- @return Mat4
function Mat4.Invert(m) end

]],
    },

    -- VoxelEdit (Brush) statics: bound as `static` member functions (no implicit self) —
    -- callers use `VoxelEdit.X(...)` syntax. Auto-gen emits `:`, so override here.
    VoxelEdit = {
        FillTmpLayers = [[--- @param layerFlags TmpLayerFlags
--- @param camPos Vec3
--- @param targets Vec3[]
--- @param targetRadius number
--- @param clientId integer
--- @return nil
function VoxelEdit.FillTmpLayers(layerFlags, camPos, targets, targetRadius, clientId) end

]],
        FreeTmpLayers = [[--- @param clientId integer
--- @return nil
function VoxelEdit.FreeTmpLayers(clientId) end

]],
    },

    -- Vec3 methods that are bound as plain instance methods but commonly called
    -- with `.` syntax (passing self explicitly). sol2 accepts both at runtime;
    -- we document both forms so EmmyLua doesn't complain about either.
    Vec3 = {
        Lerp = [[--- @param b Vec3
--- @param t number
--- @return Vec3
function Vec3:Lerp(b, t) end

--- @param a Vec3
--- @param b Vec3
--- @param t number
--- @return Vec3
function Vec3.Lerp(a, b, t) end

]],
        IsAnyNaN = [[--- @return boolean
function Vec3:IsAnyNaN() end

--- @param v Vec3
--- @return boolean
function Vec3.IsAnyNaN(v) end

]],
    },

    -- Quat statics: sol2 binds these as free-function lambdas (no `Quatf` self) — must be
    -- called as `Quat.X(...)` not `Quat:X(...)`. Auto-gen always emits `:`, so override here.
    Quat = {
        LookAt = [[--- @param dir Vec3
--- @param up Vec3?
--- @return Quat
function Quat.LookAt(dir, up) end

]],
        Lerp = [[--- @param p1 Quat
--- @param p2 Quat
--- @param p3 number
--- @return Quat
function Quat.Lerp(p1, p2, p3) end

]],
        Slerp = [[--- @param p1 Quat
--- @param p2 Quat
--- @param p3 number
--- @return Quat
function Quat.Slerp(p1, p2, p3) end

]],
        Sterp = [[--- @param a Quat
--- @param b Quat
--- @param t number
--- @param twistAxis Vec3?
--- @return Quat
function Quat.Sterp(a, b, t, twistAxis) end

]],
        Euler = [[--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @return Quat
function Quat.Euler(p1, p2, p3) end

--- @param p1 Vec3
--- @return Quat
function Quat.Euler(p1) end

]],
        AngleAxis = [[--- @param p1 number
--- @param p2 Vec3
--- @return Quat
function Quat.AngleAxis(p1, p2) end

]],
        Axes = [[--- @param u Vec3
--- @param v Vec3
--- @return Quat
function Quat.Axes(u, v) end

]],
    },
}

--[[
can support generics like this but name param must match class name

--- @generic T: Component
--- @param name `T`|componentType
--- @return T
function Object:GetComponentByType(name) end

--- @generic T: Component
--- @param name `T`|componentType
--- @return T[]
function Object:GetComponentsByType(name) end
]]

--default lines to add at file start
local emmyDefaultLines = [[
--- @meta

--- @alias serializableType
---| nil
---| boolean
---| number
---| string
---| Vec2
---| Vec2i
---| Vec3
---| Vec3i
---| Mat4
---| Quat
---| Object

--- @alias materialName
---| '"snow"' 0.00
---| '"sand"' 0.00
---| '"poop"' 0.05
---| '"flesh"' 0.05
---| '"vegetation"' 0.07
---| '"soil"' 0.10
---| '"fruit"' 0.10
---| '"food"' 0.10
---| '"leather"' 0.15
---| '"ice"' 0.15
---| '"rubber"' 0.20
---| '"paint"' 0.25
---| '"wood"' 0.25
---| '"fabric"' 0.25
---| '"gold"' 0.25
---| '"mortar"' 0.30
---| '"brick"' 0.30
---| '"plastic"' 0.30
---| '"bedrock"' 0.35
---| '"stone"' 0.45
---| '"aluminium"' 0.55
---| '"copper"' 0.55
---| '"bronze"' 0.60
---| '"concrete"' 0.65
---| '"bone"' 0.65
---| '"steel"' 0.65
---| '"nickel"' 0.70
---| '"ceramic"' 0.70
---| '"chromium"' 0.75

--- @alias mouseButton
---| 1 # left button
---| 2 # middle button
---| 3 # right button

--- Per-material removed-volume map. Keys are material names, values are total removed
--- volume in cubic meters. Returned by brush onFinished callback when material counting
--- is enabled (Brush:SetCountMaterialMask / Brush.removeCountList).
--- @alias RemoveCountInfo table<materialName, number>

-- Mostly SDL scancode names (https://wiki.libsdl.org/SDL_Keycode). The first block is
-- Atomontage-added (not SDL): Input.cpp::GetKeyCode substring-matches "Alt"/"Ctrl"/"Shift" to the
-- L-modifier scancodes, and parses "MouseButton<N>" to SDL_NUM_SCANCODES+N.
--- @alias keyCode
---| '"Alt"'
---| '"Ctrl"'
---| '"Shift"'
---| '"MouseButton1"'
---| '"MouseButton2"'
---| '"MouseButton3"'
---| '"MouseButton4"'
---| '"MouseButton5"'
---| '"0"'
---| '"1"'
---| '"2"'
---| '"3"'
---| '"4"'
---| '"5"'
---| '"6"'
---| '"7"'
---| '"8"'
---| '"9"'
---| '"A"'
---| '"AC Back"' # (the Back key (application control keypad))
---| '"AC Bookmarks"' # (the Bookmarks key (application control keypad))
---| '"AC Forward"' # (the Forward key (application control keypad))
---| '"AC Home"' # (the Home key (application control keypad))
---| '"AC Refresh"' # (the Refresh key (application control keypad))
---| '"AC Search"' # (the Search key (application control keypad))
---| '"AC Stop"' # (the Stop key (application control keypad))
---| '"Again"' # (the Again key (Redo))
---| '"AltErase"' # (Erase-Eaze)
---| '"'"'
---| '"Application"' # (the Application / Compose / Context Menu (Windows) key)
---| '"AudioMute"' # (the Mute volume key)
---| '"AudioNext"' # (the Next Track media key)
---| '"AudioPlay"' # (the Play media key)
---| '"AudioPrev"' # (the Previous Track media key)
---| '"AudioStop"' # (the Stop media key)
---| '"B"'
---| '"\""' # (Located at the lower left of the return key on ISO keyboards and at the right end of the QWERTY row on ANSI keyboards. Produces REVERSE SOLIDUS (backslash) and VERTICAL LINE in a US layout, REVERSE SOLIDUS and VERTICAL LINE in a UK Mac layout, NUMBER SIGN and TILDE in a UK Windows layout, DOLLAR SIGN and POUND SIGN in a Swiss German layout, NUMBER SIGN and APOSTROPHE in a German layout, GRAVE ACCENT and POUND SIGN in a French Mac layout, and ASTERISK and MICRO SIGN in a French Windows layout.)
---| '"Backspace"'
---| '"BrightnessDown"' # (the Brightness Down key)
---| '"BrightnessUp"' # (the Brightness Up key)
---| '"C"'
---| '"Calculator"' # (the Calculator key)
---| '"Cancel"'
---| '"CapsLock"'
---| '"Clear"'
---| '"Clear / Again"'
---| '","'
---| '"Computer"' # (the My Computer key)
---| '"Copy"'
---| '"CrSel"'
---| '"CurrencySubUnit"' # (the Currency Subunit key)
---| '"CurrencyUnit"' # (the Currency Unit key)
---| '"Cut"'
---| '"D"'
---| '"DecimalSeparator"' # (the Decimal Separator key)
---| '"Delete"'
---| '"DisplaySwitch"' # (display mirroring/dual display switch, video mode switch)
---| '"Down"' # (the Down arrow key (navigation keypad))
---| '"E"'
---| '"Eject"' # (the Eject key)
---| '"End"'
---| '"="'
---| '"Escape"' # (the Esc key)
---| '"Execute"'
---| '"ExSel"'
---| '"F"'
---| '"F1"'
---| '"F10"'
---| '"F11"'
---| '"F12"'
---| '"F13"'
---| '"F14"'
---| '"F15"'
---| '"F16"'
---| '"F17"'
---| '"F18"'
---| '"F19"'
---| '"F2"'
---| '"F20"'
---| '"F21"'
---| '"F22"'
---| '"F23"'
---| '"F24"'
---| '"F3"'
---| '"F4"'
---| '"F5"'
---| '"F6"'
---| '"F7"'
---| '"F8"'
---| '"F9"'
---| '"Find"'
---| '"G"'
---| '"`"' # (Located in the top left corner (on both ANSI and ISO keyboards). Produces GRAVE ACCENT and TILDE in a US Windows layout and in US and UK Mac layouts on ANSI keyboards, GRAVE ACCENT and NOT SIGN in a UK Windows layout, SECTION SIGN and PLUS-MINUS SIGN in US and UK Mac layouts on ISO keyboards, SECTION SIGN and DEGREE SIGN in a Swiss German layout (Mac: only on ISO keyboards), CIRCUMFLEX ACCENT and DEGREE SIGN in a German layout (Mac: only on ISO keyboards), SUPERSCRIPT TWO and TILDE in a French Windows layout, COMMERCIAL AT and NUMBER SIGN in a French Mac layout on ISO keyboards, and LESS-THAN SIGN and GREATER-THAN SIGN in a Swiss German, German, or French Mac layout on ANSI keyboards.)
---| '"H"'
---| '"Help"'
---| '"Home"'
---| '"I"'
---| '"Insert"' # (insert on PC, help on some Mac keyboards (but does send code 73, not 117))
---| '"J"'
---| '"K"'
---| '"KBDIllumDown"' # (the Keyboard Illumination Down key)
---| '"KBDIllumToggle"' # (the Keyboard Illumination Toggle key)
---| '"KBDIllumUp"' # (the Keyboard Illumination Up key)
---| '"Keypad 0"' # (the 0 key (numeric keypad))
---| '"Keypad 00"' # (the 00 key (numeric keypad))
---| '"Keypad 000"' # (the 000 key (numeric keypad))
---| '"Keypad 1"' # (the 1 key (numeric keypad))
---| '"Keypad 2"' # (the 2 key (numeric keypad))
---| '"Keypad 3"' # (the 3 key (numeric keypad))
---| '"Keypad 4"' # (the 4 key (numeric keypad))
---| '"Keypad 5"' # (the 5 key (numeric keypad))
---| '"Keypad 6"' # (the 6 key (numeric keypad))
---| '"Keypad 7"' # (the 7 key (numeric keypad))
---| '"Keypad 8"' # (the 8 key (numeric keypad))
---| '"Keypad 9"' # (the 9 key (numeric keypad))
---| '"Keypad A"' # (the A key (numeric keypad))
---| '"Keypad &"' # (the & key (numeric keypad))
---| '"Keypad @"' # (the @ key (numeric keypad))
---| '"Keypad B"' # (the B key (numeric keypad))
---| '"Keypad Backspace"' # (the Backspace key (numeric keypad))
---| '"Keypad Binary"' # (the Binary key (numeric keypad))
---| '"Keypad C"' # (the C key (numeric keypad))
---| '"Keypad Clear"' # (the Clear key (numeric keypad))
---| '"Keypad ClearEntry"' # (the Clear Entry key (numeric keypad))
---| '"Keypad :"' # (the : key (numeric keypad))
---| '"Keypad ,"' # (the Comma key (numeric keypad))
---| '"Keypad D"' # (the D key (numeric keypad))
---| '"Keypad &&"' # (the && key (numeric keypad))
---| '"'''Keypad
---| '"Keypad Decimal"' # (the Decimal key (numeric keypad))
---| '"Keypad /"' # (the / key (numeric keypad))
---| '"Keypad E"' # (the E key (numeric keypad))
---| '"Keypad Enter"' # (the Enter key (numeric keypad))
---| '"Keypad ="' # (the = key (numeric keypad))
---| '"Keypad = (AS400)"' # (the Equals AS400 key (numeric keypad))
---| '"Keypad !"' # (the ! key (numeric keypad))
---| '"Keypad F"' # (the F key (numeric keypad))
---| '"Keypad >"' # (the Greater key (numeric keypad))
---| '"Keypad #"' # (the # key (numeric keypad))
---| '"Keypad Hexadecimal"' # (the Hexadecimal key (numeric keypad))
---| '"Keypad {"' # (the Left Brace key (numeric keypad))
---| '"Keypad ("' # (the Left Parenthesis key (numeric keypad))
---| '"Keypad <"' # (the Less key (numeric keypad))
---| '"Keypad MemAdd"' # (the Mem Add key (numeric keypad))
---| '"Keypad MemClear"' # (the Mem Clear key (numeric keypad))
---| '"Keypad MemDivide"' # (the Mem Divide key (numeric keypad))
---| '"Keypad MemMultiply"' # (the Mem Multiply key (numeric keypad))
---| '"Keypad MemRecall"' # (the Mem Recall key (numeric keypad))
---| '"Keypad MemStore"' # (the Mem Store key (numeric keypad))
---| '"Keypad MemSubtract"' # (the MemSubtract key (numeric keypad))
---| '"Keypad -"' # (the 0-key (numeric keypad))
---| '"Keypad *"' # (the * key (numeric keypad))
---| '"Keypad Octal"' # (the Octal key (numeric keypad))
---| '"Keypad %"' # (the Percent key (numeric keypad))
---| '"Keypad ."' # (the . key (numeric keypad))
---| '"Keypad +"' # (the + key (numeric keypad))
---| '"Keypad +/-"' # (the +/- key (numeric keypad))
---| '"Keypad ^"' # (the Power key (numeric keypad))
---| '"Keypad }"' # (the Right Brace key (numeric keypad))
---| '"Keypad )"' # (the Right Parenthesis key (numeric keypad))
---| '"Keypad Space"' # (the Space key (numeric keypad))
---| '"Keypad Tab"' # (the Tab key (numeric keypad))
---| '"Keypad |"' # (the | key (numeric keypad))
---| '"Keypad XOR"' # (the XOR key (numeric keypad))
---| '"L"'
---| '"Left Alt"'
---| '"Left Ctrl"'
---| '"Left"' # (the Left arrow key (navigation keypad))
---| '"["'
---| '"Left GUI"' # (windows, command (apple), meta)
---| '"Left Shift"'
---| '"M"'
---| '"Mail"' # (the Mail/eMail key)
---| '"MediaSelect"' # (the Media Select key)
---| '"Menu"'
---| '"-"'
---| '"ModeSwitch"'
---| '"Mute"'
---| '"N"'
---| '"Numlock"' # (the Num Lock key (PC) / the Clear key (Mac))
---| '"O"'
---| '"Oper"'
---| '"Out"'
---| '"P"'
---| '"PageDown"'
---| '"PageUp"'
---| '"Paste"'
---| '"Pause"' # (the Pause / Break key)
---| '"."'
---| '"Power"' # (The USB document says this is a status flag, not a physical key - but some Mac keyboards do have a power key.)
---| '"PrintScreen"'
---| '"Prior"'
---| '"Q"'
---| '"R"'
---| '"Right Alt"' # (alt gr, option)
---| '"Right Ctrl"'
---| '"Return"' # (the Enter key (main keyboard))
---| '"Return"'
---| '"Right GUI"' # (windows, command (apple), meta)
---| '"Right"' # (the Right arrow key (navigation keypad))
---| '"]"'
---| '"Right Shift"'
---| '"S"'
---| '"ScrollLock"'
---| '"Select"'
---| '";"'
---| '"Separator"'
---| '"/"'
---| '"Sleep"' # (the Sleep key)
---| '"Space"' # (the Space Bar key(s))
---| '"Stop"'
---| '"SysReq"' # (the SysReq key)
---| '"T"'
---| '"Tab"' # (the Tab key)
---| '"ThousandsSeparator"' # (the Thousands Separator key)
---| '"U"'
---| '"Undo"'
---| '""' # (no name, empty string)
---| '"Up"' # (the Up arrow key (navigation keypad))
---| '"V"'
---| '"VolumeDown"'
---| '"VolumeUp"'
---| '"W"'
---| '"WWW"' # (the WWW/World Wide Web key)
---| '"X"'
---| '"Y"'
---| '"Z"'


--- Polymorphic runtime alias. Resolves to whichever runtime is active in the current Lua state:
--- - Server-side global script: `Server`
--- - Client app: `Client`
--- - Server-side per-client script: `ClientContext`
--- Calls to methods that exist on only one of those will fail at runtime when called from a different side.
--- @class RUI : Server, Client, ClientContext
RUI = nil

--- Internal table populated by the engine's binding system. Maps class/enum names to metadata used by the EmmyLua doc generator.
--- @type table
_AEBindings = nil

--- Logs a message to the engine log file (server log on the server, client log on the client).
--- For interactive console output use `print()` instead.
--- @param message string
function Log(message) end

--- Logs an error message (with stack trace) to the engine log file.
--- @param message string
function LogErr(message) end

--- Engine-invoked callbacks. The engine looks up entries on this table by name and
--- calls them if present. User scripts may assign their own implementations to
--- intercept these events; bootstrap.lua provides defaults for the common ones.
--- @class Callbacks
--- Called when a Lua error occurs. If unset, generateError() is called directly.
--- @field error fun(message: string, errorType: string, uiActionID: integer?)
--- Called once per frame, before scripts' Update(). `deltaTime` is in seconds.
--- @field update fun(deltaTime: number)
--- Called when files are dropped onto the application window.
--- @field dropFiles fun(files: string[], fromClientId: integer)
--- Called on application/scene shutdown. Last chance to save state.
--- @field onClose fun()
--- Called when the OS dispatches a deep-link URL to the application.
--- @field onUniversalLink fun(link: string)
--- Called after a prefab is inserted into the scene. `ob` is the inserted root object.
--- @field onPrefabInserted fun(ob: Object)
--- Called when a previously-requested music file finishes downloading.
--- @field onMusicDownloaded fun(musicFile: string)
Callbacks = {}

-- shape class hierarchy (auto-gen doesn't currently encode base classes, declare them here)
--- @class Box:Shape
--- @class Sphere:Shape
--- @class Capsule:Shape
--- @class Cylinder:Shape
--- @class Polygon:Shape


]]

-- map: readonlyProps[ClassName][propertyName] = true. Built from the bindings dumps so
-- writeProps can append "(readonly)" to the @field description for documented-readonly
-- properties. EmmyLua/sumneko has no native @readonly enforcement — this is informational
-- and shows up in hover tooltips.
local readonlyProps = {}

-- map: deprecatedProps[ClassName][propertyName] = true and deprecatedMethods[ClassName][methodName] = true.
-- Built from the bindings dumps so writeProps/writeMethods can emit `--- @deprecated` for entries
-- the C++ side flagged with `: deprecated`. EmmyLua/sumneko renders these strikethrough on hover
-- and warns at call sites.
local deprecatedProps = {}
local deprecatedMethods = {}

local function indexReadonlyFromBindings(bindings)
    if not bindings or not bindings.Classes then return end
    for className, class in pairs(bindings.Classes) do
        if class.properties then
            for _, prop in ipairs(class.properties) do
                if prop.readonly and prop.name then
                    readonlyProps[className] = readonlyProps[className] or {}
                    readonlyProps[className][prop.name] = true
                end
                if prop.isDeprecated and prop.name then
                    deprecatedProps[className] = deprecatedProps[className] or {}
                    deprecatedProps[className][prop.name] = true
                end
            end
        end
        if class.functions then
            for _, fn in ipairs(class.functions) do
                if fn.isDeprecated and fn.name then
                    deprecatedMethods[className] = deprecatedMethods[className] or {}
                    deprecatedMethods[className][fn.name] = true
                end
            end
        end
        if class.constructors then
            for _, fn in ipairs(class.constructors) do
                if fn.isDeprecated and fn.name then
                    deprecatedMethods[className] = deprecatedMethods[className] or {}
                    deprecatedMethods[className][fn.name] = true
                end
            end
        end
    end
end

function genEmmy:createFile(bindings)
    local file = io.open("generator\\emmyApi\\apiEmmyAtomontage.lua", "w")

    -- index readonly + deprecated flags from the bindings
    indexReadonlyFromBindings(bindings)

    --default lines
    file:write(emmyDefaultLines, "\n")

    --add component alias
    local comps = util:getAllComponents(bindings)
    table.sort(comps) --sort ABC
    file:write("--- @alias componentType", "\n")
    for i, comp in ipairs(comps) do
        file:write([[---| '"]], comp, [["']], "\n")
    end
    file:write("\n")

    return file
end

-- exposed for writeProps below
function genEmmy:isReadonly(className, propName)
    return readonlyProps[className] and readonlyProps[className][propName] or false
end

function genEmmy:isPropDeprecated(className, propName)
    return deprecatedProps[className] and deprecatedProps[className][propName] or false
end

function genEmmy:isMethodDeprecated(className, methodName)
    return deprecatedMethods[className] and deprecatedMethods[className][methodName] or false
end

function genEmmy:addEnum(file, name, intro, finalRows)
    local docsPath = "enums/"
    local className = util:firstToUpper(name)
    self:writeClassHeader(file, className, intro, docsPath)
    file:write("--- @enum ",className, "\n")
    
    --class table
    file:write(className, " = {", "\n")
    for i,info in ipairs(finalRows) do
        local name = info[1]
        local desc = info[2]
        if desc and desc ~= "" then
            file:write("\t-- ", desc, "\n")
        end 
        file:write("\t", name, " = ", i-1, ",", "\n")
    end
    file:write("}", "\n\n")
end

--generate emmy annotation for one class
function genEmmy:generateEmmyLua(file, name, intro, finalMethods, finalProperties)
    local className = util:firstToUpper(name)
    local docsPath = ""
    self:writeClassHeader(file, className, intro, docsPath)
    file:write("--- @class ",className, "\n")
    self:writeOperators(file, className, finalMethods)
    self:writeProps(file, className, finalProperties)
    self:writeMethods(file, className, finalMethods)
end

function genEmmy:writeClassHeader(file, className, documentation, docsPath)
    --write class documentation
    local hasClassDocumentation = #documentation > 5 
    if (hasClassDocumentation) then
        file:write("--[[", "\n")
        for i = 5, #documentation do
            local line = documentation[i]
            --title= not supported, strip out
            local  hasTitle = string.find(line, "```lua title=")
            if (hasTitle) then line = "```lua" end
            line = line:gsub("bool", "boolean")
            file:write(line, "\n")
        end
        --not correct if using /internal classes
        local url = "https://docs.atomontage.com/api/"..className
        file:write("[View Documentation](",url,")", "\n")
        file:write("]]", "\n")
    end
end

local operators = {
    ["__unm"] = true,
    ["__add"] = true,
    ["__sub"] = true,
    ["__mul"] = true,
    ["__div"] = true,
    ["__idiv"] = true,
    ["__mod"] = true,
    ["__pow"] = true,
    ["__concat"] = true,
    ["__band"] = true,
    ["__bor"] = true,
    ["__bxor"] = true,
    ["__bnot"] = true,
    ["__shl"] = true,
    ["__shr"] = true,
    -- relational operators (eq/lt/le) aren't supported by sumneko's `@operator` annotation —
    -- it only covers arithmetic/bitwise/concat/idiv/index/etc. Comparison operators are
    -- inferred from typed fields, so leaving these out doesn't lose anything.
    --["__eq"] = true,
    --["__lt"] = true,
    --["__le"] = true,
}

function genEmmy:writeOperators(file, className, finalMethods)
    for i, prop in ipairs(finalMethods) do
        local lines = prop.entry
        local header, returnType, name, params = genEmmy:dissectMethodEntry(lines)

        if operators[name] then
            local _, _, operation = string.find(name, "^__(%S+)")

            --write function
            local paramNames = {}
            local paramTypes = {}
            for i, info in ipairs(params) do
                local paramType = info[1]
                local paramName = info[2] or ("p" .. i)
                assert(paramType ~= "...", "vararg unhandeled")
                table.insert(paramTypes, paramType)
                table.insert(paramNames, paramName)
            end

            --extension doesnt support other cases yet i.e. `number * Vec3` only `Vec3 * number`
            local left = paramTypes[1]
            local right = paramTypes[2]
            assert(paramTypes[3] == nil)
            local leftIsClass = left == className
            if leftIsClass then
                --Vec3f __div (Vec3f, Vec3f)
                --@operator div(Vec3): Vec3
                local param = right or left --in case of i.e. unm with only one param
                file:write("--- @operator ", operation, "(", param, "):", returnType, "\n")
            end
        end
    end
end

-- Splits a comma-separated parameter list into trimmed param strings, ignoring commas
-- that are nested inside (), [] or {} so embedded function-type signatures like
-- `fun(success : boolean, response : string)` stay intact as a single param.
local function splitTopLevelParams(s)
    local parts = {}
    local depth = 0
    local startIdx = 1
    for i = 1, #s do
        local c = s:sub(i, i)
        if c == '(' or c == '[' or c == '{' then
            depth = depth + 1
        elseif c == ')' or c == ']' or c == '}' then
            depth = depth - 1
        elseif c == ',' and depth == 0 then
            local part = s:sub(startIdx, i - 1):match("^%s*(.-)%s*$")
            if part and part ~= "" then parts[#parts + 1] = part end
            startIdx = i + 1
        end
    end
    local tail = s:sub(startIdx):match("^%s*(.-)%s*$")
    if tail and tail ~= "" then parts[#parts + 1] = tail end
    return parts
end

-- Parses a single "TYPE NAME" param entry where TYPE may contain spaces / parens
-- (e.g. `fun(success : boolean) onResponse`). Splits on the LAST whitespace —
-- everything before is the type, everything after is the name. Returns (type, name)
-- with name=nil if there's only a type (no trailing identifier).
local function splitTypeAndName(word)
    local typeStr, nameStr = word:match("^(.+)%s+(%S+)$")
    if typeStr and nameStr then return typeStr, nameStr end
    return word, nil
end

function genEmmy:writeProps(file, className, finalProperties)
    -- Emit one `--- @field name type [description]` per property. Sumneko/lua-language-server
    -- supports inline description after the type, so no need for a sidecar table with
    -- `name = nil` placeholders — that workaround caused "Cannot assign nil to <NonNilType>"
    -- diagnostics for typed fields like Object/Vec3.
    --
    -- Sumneko has no per-`@field` `@deprecated` annotation: placing `--- @deprecated`
    -- before a `@field` bubbles the deprecation up to the whole class. So we surface
    -- `readonly` and `deprecated` as plain text markers in the description (visible in
    -- hover tooltips, not enforced as diagnostics). Methods can still use real
    -- `--- @deprecated` since sumneko does support it on functions.
    for i, prop in ipairs(finalProperties) do
        local header = prop.entry[1]
        --### Vec3 position {#Vec3-position}
        --### fun(progress : number) onProgress {#anchor}   (type may contain spaces / parens)
        header = header:gsub("const ", "")
        local body = header:match("^###%s+(.-)%s*{#") or header:match("^###%s+(.+)$")
        assert(body, "could not parse property header: " .. header)
        local returnType, name = splitTypeAndName(body)
        assert(returnType, "could not split type/name from: " .. body)
        returnType = self:convertToEmmyLuaType(returnType)

        local description = util:hasDocumentation(prop.entry) and util:getDocumentation(prop.entry) or nil
        if description then
            description = description:gsub("[\r\n]+", " ")
        end

        local flags = {}
        if self:isReadonly(className, name) then flags[#flags + 1] = "readonly" end
        if self:isPropDeprecated(className, name) then flags[#flags + 1] = "deprecated" end
        if #flags > 0 then
            local prefix = "(" .. table.concat(flags, ", ") .. ")"
            description = description and (prefix .. " " .. description) or prefix
        end

        if description then
            file:write("--- @field ", name, " ", returnType, " ", description, "\n")
        else
            file:write("--- @field ", name, " ", returnType, "\n")
        end
    end
    file:write(className, " = {}", "\n\n")
end

function genEmmy:writeMethods(file, className, finalMethods)
    local overrides = manualMethodOverrides[className]
    local emittedOverrides = {}
    --methods
    for i, prop in ipairs(finalMethods) do
        local lines = prop.entry
        local header, returnType, name, params = genEmmy:dissectMethodEntry(lines)

        if overrides and overrides[name] then
            -- emit the manual override once (in place of the auto-generated emission)
            if not emittedOverrides[name] then
                local ov = overrides[name]
                -- overrides are freeform strings (may define a helper @class etc.), so the
                -- auto @deprecated below is skipped. Inject it above the function's annotation
                -- block (before @param/@return, matching the non-override path) — not before a
                -- preceding @class, and not after @return.
                if self:isMethodDeprecated(className, name) and not ov:find("@deprecated", 1, true) then
                    local marker = "--- @deprecated\n"
                    if ov:find("\n%-%-%- @param") then
                        ov = ov:gsub("\n(%-%-%- @param)", "\n"..marker.."%1", 1)
                    elseif ov:find("\n%-%-%- @vararg") then
                        ov = ov:gsub("\n(%-%-%- @vararg)", "\n"..marker.."%1", 1)
                    elseif ov:find("\n%-%-%- @return") then
                        ov = ov:gsub("\n(%-%-%- @return)", "\n"..marker.."%1", 1)
                    else
                        ov = ov:gsub("\nfunction ", "\n"..marker.."function ", 1)
                    end
                end
                file:write(ov)
                emittedOverrides[name] = true
            end
            goto continue
        end

        --write function documentation
        if (util:hasDocumentation(lines)) then
            file:write("--[[", "\n")
            for i = 2, #lines do
                local line = lines[i]
                --title= not supported, strip out
                local hasTitle = string.find(line, "```lua title=")
                if (hasTitle) then line = "```lua" end
                line = line:gsub("bool", "boolean")
                file:write(line, "\n")
            end
            local _, _, headingId = string.find(header, "{(%S*)}")
            assert(headingId, "headingId not found: " .. header.." "..className)
            local uri = "https://docs.atomontage.com/api/" .. className .. headingId
            file:write("[View Documentation](", uri, ")", "\n")
            file:write("]]", "\n")
        end

        --is constructor
        local isConstructor = name == className and returnType == className

        if self:isMethodDeprecated(className, name) then
            file:write("--- @deprecated\n")
        end

        --write function
        local paramNames = {}
        for i, info in ipairs(params) do
            local paramType = info[1]
            local paramName = info[2] or ("p" .. i)
            -- @param name type info
            if paramType == "..." then
                --TODO for now just 'any' but might need to support specific type or something like @alias primitives
                paramName = "..."
                file:write("--- @vararg any", "\n")
            else
                file:write("--- @param ", paramName, " ", paramType, "\n")
            end
            table.insert(paramNames, paramName)
        end

        local paramNamesStr = table.concat(paramNames, ", ")
        file:write("--- @return ", returnType, "\n")
        if (isConstructor) then
            file:write("function ", name, "(", paramNamesStr, ") end", "\n\n")
        else
            if name == "new" then
                file:write("function ", className, ".", name, "(", paramNamesStr, ") end", "\n\n")
            else
                file:write("function ", className, ":", name, "(", paramNamesStr, ") end", "\n\n")
            end
        end
        ::continue::
    end
end

--split lines into info
function genEmmy:dissectMethodEntry(lines)
    local header = lines[1]
    header = header:gsub("const ", "") --for now just remove that
    local _, _, returnType, name, paramsStr = string.find(header, "### ([%w%s%,%[%]?|]-)%s?(%S*)%((.*)%)")
    local params = {}
    assert(paramsStr, "header contains illegal characters: " .. header.." " .. tostring(returnType).. " " .. tostring(name).. " " .. tostring(paramsStr))
    for _, word in ipairs(splitTopLevelParams(paramsStr)) do
        local ptype, paramName = splitTypeAndName(word)
        if paramName == "" then paramName = nil end
        ptype = self:convertToEmmyLuaType(ptype)
        table.insert(params, { ptype, paramName })
    end

    returnType = self:convertToEmmyLuaType(returnType)
    return header, returnType, name, params
end

function genEmmy:convertToEmmyLuaType(strType)
    --already done in docs now
    --[[
    strType = strType:gsub("bool", "boolean")
    strType = strType:gsub("int", "integer")
    strType = strType:gsub("float", "number")
    strType = strType:gsub("double", "number")
    strType = strType:gsub("char", "string")
    strType = strType:gsub("void", "nil")
    ]]
    -- genDocs escapes `<`/`>` to HTML entities for MDX rendering; undo that here so
    -- EmmyLua generic types like `table<string,number>` come through unescaped.
    strType = strType:gsub("&lt;", "<"):gsub("&gt;", ">")
    return strType
end


return genEmmy
