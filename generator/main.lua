require("os")

local util = require("generator.util")
local genEmmy = require("generator.genEmmy")
--local genDocs = require("generator.genDocs") --old generator, superseded by genDocsNew; loaded both dumps at require-time
local genDocsNew = require("generator.genDocsNew")
local serpent = require("generator.serpent")

print("start")
--genDocs:gen()
genDocsNew:gen()

--only works on windows
local function copyFile(fromFolder, toFolder)
    local ok = os.execute('xcopy /E /S /y /q "' .. fromFolder .. '" "' .. toFolder .. '"')
    assert(ok)
end

--change on other computer, api files are copied here
local atomontage = "C:\\Users\\maxkr\\Documents\\Code\\Atomontage\\atomontage"
--local repoRoot = "C:\\Users\\maxkr\\Documents\\Code\\Atomontage Projects\\atomontage-docs"
local thisFile = debug.getinfo(1, "S").source:sub(2)
local repoRoot = thisFile:match("^(.*)[/\\]generator[/\\]main%.lua$")

local apiFrom = repoRoot .. "\\generator\\emmyApi"
local apiTo = atomontage .. "\\Resources\\Studio\\LuaApi\\Atomontage\\library"
copyFile(apiFrom, apiTo)

local sdkFileFrom = repoRoot .. "\\generator\\emmyApi\\apiEmmyAtomontage.lua"
local sdkFileTo = atomontage .. "\\Resources\\Sdk\\Montage\\apiEmmyAtomontage.lua"
copyFile(sdkFileFrom, sdkFileTo)

local systemFrom = atomontage .. "\\Build\\VS\\Studio\\RelWithDebInfo\\Data\\Studio\\Script\\ae"
local systemTo = atomontage .. "\\Resources\\Studio\\LuaApi\\Atomontage\\library\\systemScripts\\ae"
--copyFile(systemFrom, systemTo)

print("done")