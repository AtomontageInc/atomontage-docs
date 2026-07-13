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
--- Calls to methods that exist on only one of those will fail at runtime when called from a different side.
--- @class RUI : Server, Client
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



--- @alias componentType
---| '"Camera"'
---| '"Mesh"'
---| '"RigidBody"'
---| '"Script"'
---| '"Sky"'
---| '"VoxelData"'

--- @alias opTarget Shape|Object|Object[]

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/AE)
]]
--- @class AE
--- @field clientID number (readonly)
AE = {}

--- @param fromId number
--- @return table
function AE:GetLogs(fromId) end

--- @return number
function AE:NewLogId() end

--- @return boolean
function AE:IsClientApp() end

--- @return boolean
function AE:IsServerApp() end

--- @return boolean
function AE:IsStudioApp() end

--- @return boolean
function AE:OnServer() end

--- @return boolean
function AE:OnClient() end

--- @return number
function AE:GetDebugTime() end

--[[
Returns the [`CommandLine`](./commandLine.mdx) (engine command-line arguments).

[View Documentation](https://docs.atomontage.com/api/AE#CommandLine-GetCommandLine)
]]
--- @return CommandLine
function AE:GetCommandLine() end

--- @param fileName string
--- @return string
function AE:GetScript(fileName) end

--- @return table
function AE:GetVersion() end

--- @return System
function AE:GetSystem() end

--- @return Device
function AE:GetDevice() end

--[[
Reads an engine profiler timer's last-frame value in **seconds** (multiply by `1e6` for µs to match the "Profiling On Server" window's Duration column). Pass a timer name discovered via [`GetLogTimers`](#table-GetLogTimers-string-namePrefix), e.g. `AE:GetLogTime("SUF/Server - Update")`. Single reads fluctuate frame-to-frame — sample over several frames and average/take percentiles.

[View Documentation](https://docs.atomontage.com/api/AE#number-GetLogTime-string-name)
]]
--- @param name string
--- @return number
function AE:GetLogTime(name) end

--[[
Lists all engine profiler timer **names** under a prefix — use it to discover what's measurable, then call [`GetLogTime`](#number-GetLogTime-string-name) on each. `AE:GetLogTimers("")` returns everything; `AE:GetLogTimers("NEW/")` filters by prefix. Common prefixes: `SUF/` (server update-frame labels shown in the Profiling window, with `SUF/Frame` as the total frame timer) and `NEW/` (independent C++ subsystem probes that may overlap `SUF/`).

[View Documentation](https://docs.atomontage.com/api/AE#table-GetLogTimers-string-namePrefix)
]]
--- @param namePrefix string
--- @return table
function AE:GetLogTimers(namePrefix) end

--- @param name string
--- @param defaultVal number?
--- @return number
function AE:GetLogValue(name, defaultVal) end

--- @param name string
--- @param value number
--- @return nil
function AE:SetLogValue(name, value) end

--- @param namePrefix string
--- @return table
function AE:GetLogValuesWithPrefix(namePrefix) end

--- @param assetFolder string
--- @param subfolder string
--- @param assetType string
--- @return Asset[], string[]
function AE:GetAssetsFiltered(assetFolder, subfolder, assetType) end

--- @return Asset[]
function AE:GetAssets() end

--- @return string[]
function AE:GetAssetSources() end

--- @param asset Asset|AssetLink
--- @return string
function AE:AssetPathInMontage(asset) end

--- @param name string
--- @return Asset
function AE:GetBuiltinMaterial(name) end

--- @param image Asset|AssetLink
--- @return Asset
function AE:GetTextureForImage(image) end

--- @param asset Asset|AssetLink
--- @return Asset
function AE:GetThumbnailForAsset(asset) end

--- @return integer
function AE:GetAssetsChangeCounter() end

--- @param typeName string
--- @return integer
function AE:TypeInt(typeName) end

--- @param enumName string
--- @return string[]
function AE:GetEnumValues(enumName) end

--- @return table
function AE:GetAELuaBindings() end

--- @return table, table
function AE:GetMemoryUsage() end

--- @return nil
function AE:ReloadGeometry() end

--- @return nil
function AE:AEVV_InvalidateData() end

--- @return boolean
function AE:ToggleFullScreen() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/AnyVar)
]]
--- @class AnyVar
--- @field valueType string (readonly)
--- @field value any
AnyVar = {}

--- @param type string
--- @return boolean
function AnyVar:IsType(type) end

--- @param type string?
--- @return boolean
function AnyVar:IsAsset(type) end

--- @param type string?
--- @return boolean
function AnyVar:IsAssetLink(type) end

--- @return boolean
function AnyVar:IsServerObject() end

--- @return boolean
function AnyVar:IsServerComponent() end

--- @return boolean
function AnyVar:IsObject() end

--- @return boolean
function AnyVar:IsComponent() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Asset)
]]
--- @class Asset
--- @field name string
--- @field type integer
--- @field typeStr string
--- @field deleted boolean
--- @field filepath string
--- @field relpath string
--- @field canReferenceAssets boolean
Asset = {}

--- @return Asset[]
function Asset:GetReferencedAssets() end

--- @return table
function Asset:GetReferencedAssetsAndTypes() end

--- @param asset Asset
--- @return Asset[]
function Asset:GetAssetsReferencingAsset(asset) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/AssetLink)
]]
--- @class AssetLink
--- @field asset Asset
--- @field assetType string (readonly)
--- @field assetName string (readonly)
--- @field isMissing boolean (readonly)
AssetLink = {}

--- @return AssetLink
function AssetLink() end

--- @param assetType string
--- @return AssetLink
function AssetLink(assetType) end

--- @param asset Asset
--- @return AssetLink
function AssetLink(asset) end

--[[
`Client`

[View Documentation](https://docs.atomontage.com/api/Audio)
]]
--- @class Audio
--- @field masterVolume number Audio volume in range 0 - 1.
--- @field soundVolume number Audio volume in range 0 - 1.
--- @field musicVolume number Audio volume in range 0 - 1.
Audio = {}

--[[
Play a sound at a position, with volume and loop. Only single channel audio.
Returns [AudioSource](./audioSource.mdx)

[View Documentation](https://docs.atomontage.com/api/Audio#AudioSource-PlaySound-stringAsset-sound-Vec3-position-number-volume-boolean-loop)
]]
--- @param sound string|Asset
--- @param position Vec3?
--- @param volume number?
--- @param loop boolean?
--- @return AudioSource
function Audio:PlaySound(sound, position, volume, loop) end

--- @param sound string|Asset
--- @param position Vec3?
--- @param volume number?
--- @param loop boolean?
--- @return AudioSource
function Audio:PlaySoundRelative(sound, position, volume, loop) end

--[[
Play music with volume and loop. This plays stereo music without any position, just like a normal audio player.
Returns [AudioMusic](./audioMusic.mdx)

[View Documentation](https://docs.atomontage.com/api/Audio#AudioMusic-PlayMusic-Asset-music-number-volume-boolean-loop)
]]
--- @param music Asset
--- @param volume number?
--- @param loop boolean?
--- @return AudioMusic
function Audio:PlayMusic(music, volume, loop) end

--- @param music Asset
--- @param volume number?
--- @param loop boolean?
--- @return AudioMusic
function Audio:PrepareMusic(music, volume, loop) end

--[[
Pause all playing sounds and music

[View Documentation](https://docs.atomontage.com/api/Audio#nil-PauseAudio)
]]
--- @return nil
function Audio:PauseAudio() end

--[[
Resume all paused sounds and music

[View Documentation](https://docs.atomontage.com/api/Audio#nil-ResumeAudio)
]]
--- @return nil
function Audio:ResumeAudio() end

--- @return nil
function Audio:StopAudio() end

--[[
`Client`

Returned by [`Audio:PlayMusic()`](./audio.mdx#AudioMusic-PlayMusic-Asset-music-number-volume-booleanean-loop)

[View Documentation](https://docs.atomontage.com/api/AudioMusic)
]]
--- @class AudioMusic
--- @field volume number Volume of the music. Number in range 0 - 1
--- @field loop boolean Set to true for looping.
--- @field pitch number
--- @field playing boolean (readonly)
--- @field paused boolean (readonly)
--- @field stopped boolean (readonly)
--- @field playbackPos number
--- @field playbackLength number (readonly)
AudioMusic = {}

--[[
Play the music. If already playing it will restart from begining. Paused music will resume playback where it was paused.

[View Documentation](https://docs.atomontage.com/api/AudioMusic#nil-Play)
]]
--- @return nil
function AudioMusic:Play() end

--[[
Pause the music

[View Documentation](https://docs.atomontage.com/api/AudioMusic#nil-Pause)
]]
--- @return nil
function AudioMusic:Pause() end

--[[
Stop the music

[View Documentation](https://docs.atomontage.com/api/AudioMusic#nil-Stop)
]]
--- @return nil
function AudioMusic:Stop() end

--[[
`Client`

Returned by [`Audio:PlaySound()`](./audio.mdx#AudioSource-PlaySound-stringAsset-sound-Vec3-position-number-volume-booleanean-loop)

[View Documentation](https://docs.atomontage.com/api/AudioSource)
]]
--- @class AudioSource
--- @field pos Vec3 Position of sound in 3D space
--- @field velocity Vec3 Direction of movement. Length of vector determine speed. Units is m/s Important for fast moving object. It affect doppler shift which cause that fast incoming object sounds with higher pitch.
--- @field followObject Object Make position of sound and this object same and keep them synced.
--- @field volume number Volume of the sound. Number in range 0 - 1
--- @field loop boolean Set to true for looping.
--- @field relativePos boolean
--- @field pitch number
--- @field minDistance number
--- @field maxDistance number
--- @field attenuation number
--- @field playing boolean (readonly)
--- @field paused boolean (readonly)
--- @field stopped boolean (readonly)
--- @field playbackPos number
--- @field playbackLength number (readonly)
AudioSource = {}

--[[
Play the sound. If already playing it will restart from begining. Paused sound will resume playback where they were paused.

[View Documentation](https://docs.atomontage.com/api/AudioSource#nil-Play)
]]
--- @return nil
function AudioSource:Play() end

--[[
Pause the sound

[View Documentation](https://docs.atomontage.com/api/AudioSource#nil-Pause)
]]
--- @return nil
function AudioSource:Pause() end

--[[
Stop the sound

[View Documentation](https://docs.atomontage.com/api/AudioSource#nil-Stop)
]]
--- @return nil
function AudioSource:Stop() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Box)
]]
--- @class Box
--- @field pos Vec3
--- @field rot Quat
--- @field size Vec3
Box = {}

--- @param pos Vec3?
--- @return Box
function Box(pos) end

--- @param pos Vec3
--- @param size Vec3
--- @return Box
function Box(pos, size) end

--[[
Centered box

[View Documentation](https://docs.atomontage.com/api/Box#Box-Box-Vec3-pos-Quat-rot-Vec3-size)
]]
--- @param pos Vec3
--- @param rot Quat
--- @param size Vec3
--- @return Box
function Box(pos, rot, size) end

--[[
---
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Button)
]]
--- @class Button : Widget
--- @field text string
--- @field multiLine boolean
--- @field buttonType string
--- @field value boolean
--- @field icon string
--- @field icon2 string
--- @field iconMargin Vec2
--- @field iconSize number
--- @field closeWindow boolean
Button = {}

--[[
---
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/ButtonPanel)
]]
--- @class ButtonPanel : Widget
--- @field buttonType string
--- @field value boolean
ButtonPanel = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Camera)
]]
--- @class Camera
--- @field active boolean
--- @field activeInHierarchy boolean (readonly)
--- @field object Object (readonly) Reference to object instance
--- @field obj Object (readonly)
--- @field isDestroyed boolean (readonly) Indicates whether the object is destroyed (true) or not (false).
--- @field type string (readonly) Specifies the object's type as a string, useful for type identification.
--- @field onePerObject boolean (readonly)
--- @field fovY number Defines the vertical field of view in degrees
Camera = {}

--- @param a Camera
--- @param b Camera
--- @return boolean
function Camera:__eq(a, b) end

--[[
Converts a 2D screen percentage coordinate(i.e from Input:MousePosPerc()) to a 3D world space ray (Vec3), used for determining 3D locations from screen interactions.

[View Documentation](https://docs.atomontage.com/api/Camera#Vec3-ScreenToWorldRay-Vec2-screenRelPos)
]]
--- @param screenRelPos Vec2
--- @return Vec3
function Camera:ScreenToWorldRay(screenRelPos) end

--[[
Transforms a 3D world coordinate (Vec3) to a 2D screen space percentage coordinate(range 0-1), useful for positioning ui elements like text above a 3D object on the screen.

[View Documentation](https://docs.atomontage.com/api/Camera#Vec2-WorldToScreen-Vec3-worldPos)
]]
--- @param worldPos Vec3
--- @return Vec2
function Camera:WorldToScreen(worldPos) end

--- @param worldPos Vec3
--- @return Vec3
function Camera:WorldToScreen3f(worldPos) end

--- @param worldPos Vec3
--- @return boolean
function Camera:IsPointVisible(worldPos) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Capsule)
]]
--- @class Capsule
--- @field pos Vec3
--- @field pos2 Vec3
--- @field radius number
--- @field diameter number
--- @field radius2 number
--- @field diameter2 number
--- @field useShellPositions boolean
Capsule = {}

--- @return Capsule
function Capsule() end

--[[
Capsule between two points

[View Documentation](https://docs.atomontage.com/api/Capsule#Capsule-Capsule-Vec3-pos1-Vec3-pos2-number-radius1-number-radius2)
]]
--- @param pos1 Vec3
--- @param pos2 Vec3
--- @param radius1 number?
--- @param radius2 number?
--- @return Capsule
function Capsule(pos1, pos2, radius1, radius2) end

--[[
`Client`
`Server`

`Cast` creates raycasts. `Cast:Ray(origin, direction)` returns a [`Raycast`](./raycast.mdx) you then run:

```lua
local hit = Cast:Ray(obj.pos, obj.rot * Vec3.forward * 100)
              :Ignore(self.obj)   -- optional: skip objects
              :Run()              -- first hit (or :RunAll() for every hit along the ray)
if hit then print(hit.pos) end
```

For hot loops (100+ casts/frame) prefer [`Collision:Raycast`](./collision.mdx) directly.

[View Documentation](https://docs.atomontage.com/api/Cast)
]]
--- @class Cast
Cast = {}

--[[
Create a raycast. Reuse the returned Raycast object (mutate startPos/ray) to avoid per-call overhead.
Caching only helps significantly when the filter is stable — calling Ignore()/Force() invalidates
the internal cache, so re-adding the same ignore list every frame saves only the table alloc.
For hot loops (100+ casts/frame), prefer native Collision:Raycast() directly (~25% faster).

[View Documentation](https://docs.atomontage.com/api/Cast#Raycast-Ray-Vec3-startPos-Vec3-ray)
]]
--- @param startPos Vec3
--- @param ray Vec3
--- @return Raycast
function Cast:Ray(startPos, ray) end

--[[
---
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Checkbox)
]]
--- @class Checkbox : Widget
--- @field text string
--- @field value boolean
--- @field checkboxType string
--- @field switchHeight number
Checkbox = {}

--[[
`Client`
:::info Client Only
This class is only available on client
:::

[View Documentation](https://docs.atomontage.com/api/Client)
]]
--- @class Client
--- @field permission ClientPermission
--- @field platform string (readonly)
--- @field sysInfo string (readonly)
Client = {}

--[[
True while the client is in Init mode (the editor's edit mode), as opposed to live/play.

[View Documentation](https://docs.atomontage.com/api/Client#boolean-IsInitMode)
]]
--- @return boolean
function Client:IsInitMode() end

--- @return integer
function Client:GetID() end

--- @param fileName string
--- @param lineNumber integer?
--- @return nil
function Client:OpenScriptFile(fileName, lineNumber) end

--- @param fileName string
--- @param lineNumber integer?
--- @return nil
function Client:OpenMontageScriptFile(fileName, lineNumber) end

--- @return string
function Client:GetMontageURL() end

--- @param url string
--- @return nil
function Client:SetMontageURL(url) end

--- @return nil
function Client:LoadMontageByURL() end

--- @return nil
function Client:CancelLoadMontageByURL() end

--- @return string
function Client:GetMontageURLBase() end

--- @return table
function Client:GetMontageURLParameters() end

--- @return string
function Client:GetMontageURLParametersRaw() end

--- @param params table
--- @return string
function Client:GetMontageURLWithParameters(params) end

--- @param url string
--- @return nil
function Client:ConnectToMontage(url) end

--[[
Unknown,
Connecting,
FailedToConnect,
StatusMessage,
ReadyToAcknowledge,
Connected,
Disconnected

[View Documentation](https://docs.atomontage.com/api/Client#string-GetConnectionStatus)
]]
--- @return string
function Client:GetConnectionStatus() end

--- @return string
function Client:GetConnectionStatusDetailed() end

--- @param reason string?
--- @return nil
function Client:Disconnect(reason) end

--[[
Time for a network message to travel from client to server and back


[View Documentation](https://docs.atomontage.com/api/Client#integer-GetPing)
]]
--- @return integer
function Client:GetPing() end

--- @return integer
function Client:GetSceneMsgsInQueue() end

--- @return table
function Client:GetMainDispatcherStats() end

--- @return table
function Client:GetRenderStats() end

--- @return boolean
function Client:GetRenderStatsEnabled() end

--- @param enable boolean
--- @return nil
function Client:SetRenderStatsEnabled(enable) end

--- @return nil
function Client:ConnectToServer() end

--- @param path string
--- @return boolean opened
function Client:OpenFolder(path) end

--- @return boolean
function Client:GetNetworkThrottlingNow() end

--- @param color Color
--- @return nil
function Client:SetIntersectionTint(color) end

--- @param centerWC Vec3
--- @param rot Quat
--- @param sizeWC Vec3
--- @return nil
function Client:SetIntersectionBox(centerWC, rot, sizeWC) end

--- @param posWC Vec3
--- @param radius number
--- @return nil
function Client:SetIntersectionSphere(posWC, radius) end

--- @param text string
--- @param pos Vec2
--- @param anchor Vec2
--- @param color Color
--- @param size integer?
--- @param outlineColor Color?
--- @param time number?
--- @param outlineWidth number?
--- @return nil
function Client:WriteToScreen(text, pos, anchor, color, size, outlineColor, time, outlineWidth) end

--- @return nil
function Client:CloseApp() end

--- @return string
function Client:GetEULA() end

--- @return Vec2
function Client:GetWindowSize() end

--- @return Vec2
function Client:GetViewportSize() end

--- @param target Object
--- @param opts table?
--- @return string
function Client:CaptureObjectThumbnail(target, opts) end

--- @return Color
function Client:GetBGColor() end

--- @param color Color|Vec4
--- @return nil
function Client:SetBGColor(color) end

--- @return boolean
function Client:GetVREnabled() end

--- @param enable boolean
--- @param vrDevice string
--- @return nil
function Client:SetVREnabled(enable, vrDevice) end

--- @param vrDevice string
--- @return nil
function Client:ToggleVREnabled(vrDevice) end

--- @param side integer
--- @param space Space
--- @return Vec3 pos, Quat rot
function Client:GetVREyeTransform(side, space) end

--- @param space Space
--- @return Vec3 pos, Quat rot
function Client:GetVRHeadsetTransform(space) end

--- @param hand Side
--- @param duration number
--- @param frequency number
--- @param amplitude number
--- @return nil
function Client:ApplyVRHapticFeedback(hand, duration, frequency, amplitude) end

--- @return boolean
function Client:GetVREyeTrackingSupported() end

--- @param scale number
--- @return number scale
function Client:SetVRUserScale(scale) end

--- @return number
function Client:GetVRUserScale() end

--- @return number
function Client:GetVRUserScaleMin() end

--- @return number
function Client:GetVRUserScaleMax() end

--- @return nil
function Client:StartVRPassthrough() end

--- @return nil
function Client:StopVRPassthrough() end

--- @return boolean
function Client:IsVRPassthroughEnabled() end

--- @return boolean
function Client:IsVRPassthroughSupported() end

--- @return boolean
function Client:IsUploadingFiles() end

--- @return boolean
function Client:IsDownloadingFiles() end

--- @return nil
function Client:Restart() end

--- @return string
function Client:ReloadShaders() end

--- @return nil
function Client:ToggleChannelRendering() end

--- @return integer
function Client:GetRenderChannelsCount() end

--- @param which integer
--- @return number
function Client:GetRenderChannelOpacity(which) end

--- @param which integer
--- @param value number
--- @return nil
function Client:SetRenderChannelOpacity(which, value) end

--- @return boolean
function Client:IsMobile() end

--- @return integer
function Client:GetMemoryUsage() end

--- @return string
function Client:GetCredits() end

--- @return table
function Client:GetErrors() end

--- @param text string
--- @return nil
function Client:CopyToClipboard(text) end

--[[
may not work on all platforms

[View Documentation](https://docs.atomontage.com/api/Client#string-GetClipboardText)
]]
--- @return string
function Client:GetClipboardText() end

--- @param url string
--- @return nil
function Client:OpenBrowserWithURL(url) end

--- @param fromCache boolean
--- @return nil
function Client:ReloadPage(fromCache) end

--- @return nil
function Client:ResetPlayerLODPriorityBubble() end

--[[
LODs in this bubble are prioritized, should be placed around the player or camera
params: capsuleStart, capsuleEnd, capsuleRadius, velocity, size

[View Documentation](https://docs.atomontage.com/api/Client#nil-AddPlayerLODPriorityBubbleShape-Vec3-capsulePointA-Vec3-capsulePointB-number-capsuleRadius-Vec3-velocity-number-size)
]]
--- @param capsulePointA Vec3
--- @param capsulePointB Vec3
--- @param capsuleRadius number
--- @param velocity Vec3
--- @param size number
--- @return nil
function Client:AddPlayerLODPriorityBubbleShape(capsulePointA, capsulePointB, capsuleRadius, velocity, size) end

--[[
Tint the view for this frame or permanently

[View Documentation](https://docs.atomontage.com/api/Client#nil-SetScreenColor-Color-color-boolean-permanent)
]]
--- @param color Color
--- @param permanent boolean?
--- @return nil
function Client:SetScreenColor(color, permanent) end

--- @param type integer
--- @param duration number
--- @return nil
function Client:EnableRenderingWithFadeEffect(type, duration) end

--- @param type integer
--- @param duration number
--- @return nil
function Client:DisableRenderingWithFadeEffect(type, duration) end

--- @param type integer
--- @param duration number
--- @return nil
function Client:ToggleRenderingWithFadeEffect(type, duration) end

--- @param color Vec4
--- @return nil
function Client:SetOutlineColor(color) end

--- @param color Vec4
--- @return nil
function Client:SetHighlightColor(color) end

--- @param pos Vec3
--- @param radius number
--- @param color Vec4
--- @param shade boolean
--- @return nil
function Client:DrawPointSpriteSphere(pos, radius, color, shade) end

--[[
Draw a sphere sprite at a world position, optionally shaded. Client-side, call every frame.

[View Documentation](https://docs.atomontage.com/api/Client#nil-DrawBillboardSphere-Vec3-pos-number-radius-Vec4-color-boolean-shade)
]]
--- @param pos Vec3
--- @param radius number
--- @param color Vec4
--- @param shade boolean
--- @return nil
function Client:DrawBillboardSphere(pos, radius, color, shade) end

--[[
Draw a camera-facing textured quad in world space. Client-side, call every frame.

[View Documentation](https://docs.atomontage.com/api/Client#nil-DrawBillboard-integer-texture-Vec3-pos-number-size-Vec4-color-number-angleDeg)
]]
--- @param texture integer
--- @param pos Vec3
--- @param size number
--- @param color Vec4
--- @param angleDeg number
--- @return nil
function Client:DrawBillboard(texture, pos, size, color, angleDeg) end

--[[
Batch-draw multiple billboards from a table of descriptors.

[View Documentation](https://docs.atomontage.com/api/Client#nil-DrawBillboards-table-billboards)
]]
--- @param billboards table
--- @return nil
function Client:DrawBillboards(billboards) end

--[[
`Client`
`Server`

:::warning Deprecated
The collision functions in this class are old and may not correctly work.
Instead use `Cast:Ray()` and `Collide()`
:::

[View Documentation](https://docs.atomontage.com/api/Collision)
]]
--- @class Collision
--- @field filter Filter
--- @field maxHitCount integer Doesn't influence result, just limits returned hits table size
--- @field shape Shape
--- @field precise boolean
--- @field rayPos Vec3
--- @field rayDir Vec3
Collision = {}

--- @return Collision
function Collision() end

--[[
Use rayPos, rayDir, returns table of Hit values or empty table for no hit.
Returns [Hit](Hit).

[View Documentation](https://docs.atomontage.com/api/Collision#Hit-Raycast)
]]
--- @return Hit[]
function Collision:Raycast() end

--- @param readColor boolean
--- @param readNormal boolean
--- @param readMaterial boolean
--- @return Hit[]
function Collision:Raycast(readColor, readNormal, readMaterial) end

--- @param pos Vec3
--- @param dir Vec3
--- @return Hit[]
function Collision:Raycast(pos, dir) end

--- @param pos Vec3
--- @param dir Vec3
--- @param readColor boolean?
--- @param readNormal boolean?
--- @param readMaterial boolean?
--- @return Hit[]
function Collision:Raycast(pos, dir, readColor, readNormal, readMaterial) end

--- @param startPos Vec3
--- @param endPos Vec3
--- @param readColor boolean?
--- @param readNormal boolean?
--- @param readMaterial boolean?
--- @return table
function Collision:RaycastTo(startPos, endPos, readColor, readNormal, readMaterial) end

--[[
Checks collision between shape and geometry passed by filter.
Returns [Overlap](Overlap).

[View Documentation](https://docs.atomontage.com/api/Collision#Overlap-GetOverlap-Shape-shape)
]]
--- @param shape Shape?
--- @return Overlap[]
function Collision:GetOverlap(shape) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Color)
]]
--- @class Color
--- @field r number
--- @field g number
--- @field b number
--- @field a number
--- @field visible boolean (readonly)
--- @field solid Color (readonly)
--- @field hue number
--- @field saturation number
--- @field lightness number
--- @field saturationHsl number
--- @field value number
--- @field Transparent Color (readonly)
--- @field White Color (readonly)
--- @field Black Color (readonly)
--- @field Red Color (readonly)
--- @field RedLight Color (readonly)
--- @field Green Color (readonly)
--- @field GreenLight Color (readonly)
--- @field Blue Color (readonly)
--- @field Yellow Color (readonly)
--- @field Magenta Color (readonly)
--- @field Cyan Color (readonly)
--- @field Orange Color (readonly)
--- @field OrangeLight Color (readonly)
--- @field Purple Color (readonly)
--- @field Brown Color (readonly)
--- @field Pink Color (readonly)
--- @field Grey Color (readonly)
--- @field GreyDark Color (readonly)
Color = {}

--- @param v number?
--- @return Color
function Color(v) end

--- @param r number
--- @param g number
--- @param b number
--- @param a number?
--- @return Color
function Color(r, g, b, a) end

--- @param rgb number
--- @param a number
--- @return Color
function Color(rgb, a) end

--- @param v Vec4
--- @return Color
function Color(v) end

--- @param v Vec3
--- @return Color
function Color(v) end

--- @param color Color
--- @return Color
function Color(color) end

--- @return string
function Color:__tostring() end

--- @param a Color
--- @param b Color
--- @return boolean
function Color:__eq(a, b) end

--- @param h number
--- @param s number
--- @param l number
--- @return nil
function Color:FromHsl(h, s, l) end

--- @return number h, number s, number l
function Color:ToHsl() end

--- @return table
function Color:ToHslT() end

--- @param h number
--- @param s number
--- @param v number
--- @return nil
function Color:FromHsv(h, s, v) end

--- @return number h, number s, number v
function Color:ToHsv() end

--- @return Color
function Color:Copy() end

--[[
---
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Colorbox)
]]
--- @class Colorbox : Widget
--- @field value Color
Colorbox = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/CommandLine)
]]
--- @class CommandLine
CommandLine = {}

--- @param option string
--- @return boolean
function CommandLine:HasOption(option) end

--- @param option string
--- @param defaultValue number
--- @return number
function CommandLine:GetOptionFloat(option, defaultValue) end

--- @param option string
--- @param defaultValue integer
--- @return integer
function CommandLine:GetOptionInt(option, defaultValue) end

--- @param option string
--- @param defaultValue string
--- @return string
function CommandLine:GetOption(option, defaultValue) end

--- @param option string
--- @param defaultValue Vec2
--- @return Vec2
function CommandLine:GetOptionVec2(option, defaultValue) end

--- @param option string
--- @param defaultValue Vec3
--- @return Vec3
function CommandLine:GetOptionVec3(option, defaultValue) end

--- @param option string
--- @param defaultValue Vec4
--- @return Vec4
function CommandLine:GetOptionVec4(option, defaultValue) end

--- @return any[]
function CommandLine:GetAll() end

--[[
`Client`
`Server`

All components inherit from this class. It is not meant to be instantiated directly.
* [Script](Script)
* [Camera](Camera)
* [VoxelData](VoxelData)
* [Mesh](Mesh)
* [Sky](Sky)

[View Documentation](https://docs.atomontage.com/api/Component)
]]
--- @class Component
--- @field active boolean
--- @field activeInHierarchy boolean (readonly)
--- @field object Object (readonly)
--- @field obj Object (readonly)
--- @field isDestroyed boolean (readonly)
--- @field type string (readonly)
--- @field onePerObject boolean (readonly)
Component = {}

--[[
`Client`
`Server`

Save and load values for this client. 
These values are stored clients local storage and will be available on all montages he visits.
This is useful for saving settings, last player position, etc.

To avoid naming conflicts with other montages, use a unique prefix for each game. For example, if your game is called "MyGame", you can use "MyGame/" as a prefix for all your keys.

```lua
Config:SetVec3("MyGame/PlayerPosition", player.pos)
```

```lua
local defaultPos = Vec3(0,0,0)
local pos = Config:GetVec3("MyGame/PlayerPosition", defaultPos)
player.pos = pos
```

If you want to save a setting only for this montage include the montage id in the setting
```lua
--extract id from url
local url = Client:GetMontageURL()
local id, params = string.match(url, "/view%?m=([%w%-%_]*)(.*)")
Config:SetFloat(id.."/MyGame/Highscore", highscore)
```

[View Documentation](https://docs.atomontage.com/api/Config)
]]
--- @class Config
Config = {}

--- @param key string
--- @param value integer
--- @return nil
function Config:SetInt(key, value) end

--- @param key string
--- @param value number
--- @return nil
function Config:SetFloat(key, value) end

--- @param key string
--- @param value boolean
--- @return nil
function Config:SetBool(key, value) end

--- @param key string
--- @param value string
--- @return nil
function Config:SetString(key, value) end

--- @param key string
--- @param value Vec2
--- @return nil
function Config:SetVec2(key, value) end

--- @param key string
--- @param value Vec3
--- @return nil
function Config:SetVec3(key, value) end

--- @param key string
--- @param value Vec4
--- @return nil
function Config:SetVec4(key, value) end

--- @param key string
--- @param default any?
--- @return any
function Config:Get(key, default) end

--- @param key string
--- @param value any
--- @return nil
function Config:Set(key, value) end

--- @param key string
--- @param default any?
--- @return any
function Config:TempGet(key, default) end

--- @param key string
--- @param value any
--- @return nil
function Config:TempSet(key, value) end

--- @param key string
--- @return nil
function Config:TempDel(key) end

--- @param key string
--- @return boolean
function Config:TempExists(key) end

--- @param key string
--- @return nil
function Config:Del(key) end

--- @param key string
--- @return boolean
function Config:Exists(key) end

--[[
force saving Config

[View Documentation](https://docs.atomontage.com/api/Config#nil-Save)
]]
--- @return nil
function Config:Save() end

--- @param key string
--- @param defaultValue number?
--- @return integer
function Config:GetInt(key, defaultValue) end

--- @param key string
--- @param defaultValue number?
--- @return number
function Config:GetFloat(key, defaultValue) end

--- @param key string
--- @param defaultValue boolean?
--- @return boolean
function Config:GetBool(key, defaultValue) end

--- @param key string
--- @param defaultValue string?
--- @return string
function Config:GetString(key, defaultValue) end

--- @param key string
--- @param defaultValue Vec2?
--- @return Vec2
function Config:GetVec2(key, defaultValue) end

--- @param key string
--- @param defaultValue Vec3?
--- @return Vec3
function Config:GetVec3(key, defaultValue) end

--- @param key string
--- @param defaultValue Vec4?
--- @return Vec4
function Config:GetVec4(key, defaultValue) end

--- @return table
function Config:GetAllValuesStringified() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Cylinder)
]]
--- @class Cylinder
--- @field pos Vec3
--- @field pos2 Vec3
--- @field radius number
--- @field diameter number
--- @field radius2 number
--- @field diameter2 number
Cylinder = {}

--- @return Cylinder
function Cylinder() end

--[[
Cylinder between two points


[View Documentation](https://docs.atomontage.com/api/Cylinder#Cylinder-Cylinder-Vec3-pos1-Vec3-pos2-number-radius1-number-radius2)
]]
--- @param pos1 Vec3
--- @param pos2 Vec3
--- @param radius1 number?
--- @param radius2 number?
--- @return Cylinder
function Cylinder(pos1, pos2, radius1, radius2) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Filter)
]]
--- @class Filter
--- @field useStatic boolean
--- @field useNotStatic boolean use dynamic voxel objects
--- @field useTmpStatic boolean
--- @field useTmpNotStatic boolean
--- @field ignoreList Object[]
--- @field forceList Object[]
Filter = {}

--- @return Filter
function Filter() end

--- @param ignoreList Object[]
--- @param forceList Object[]
--- @return Filter
function Filter(ignoreList, forceList) end

--- @param useStatic boolean
--- @param useNotStatic boolean
--- @return Filter
function Filter(useStatic, useNotStatic) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Gamepad)
]]
--- @class Gamepad
Gamepad = {}

--- @param button integer
--- @return boolean
function Gamepad:ButtonDown(button) end

--- @param button integer
--- @return boolean
function Gamepad:Button(button) end

--- @param button integer
--- @return boolean
function Gamepad:ButtonUp(button) end

--- @param axis integer
--- @return number
function Gamepad:Axis(axis) end

--- @param lowFrequencyRumble integer
--- @param highFrequencyRumble integer
--- @param duration integer
--- @return integer
function Gamepad:Rumble(lowFrequencyRumble, highFrequencyRumble, duration) end

--- @param leftRumble integer
--- @param rightRumble integer
--- @param duration integer
--- @return integer
function Gamepad:RumbleTriggers(leftRumble, rightRumble, duration) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Global)
]]
--[[
shoud be Scene:FindObjectsWithTag

[View Documentation](https://docs.atomontage.com/api/Global#Object-FindObjectsWithTag-string-tag)
]]
--- @param tag string
--- @return Object[]
function FindObjectsWithTag(tag) end

--- @param shape Shape
--- @return OpCollide
function Collide(shape) end

--[[
doesnt really work idk why, need this in engine

[View Documentation](https://docs.atomontage.com/api/Global#number-widthPx-TextWidth-string-text-number-size)
]]
--- @param text string
--- @param size number?
--- @return number widthPx
function TextWidth(text, size) end

--[[
draw text for one frame on client

[View Documentation](https://docs.atomontage.com/api/Global#nil-Text-string-text-Vec2Vec3-posPerc-Vec2-pivot-Vec2-pixelOffset-Vec4-color-number-size-Vec4-colorOutline)
]]
--- @param text string
--- @param posPerc Vec2|Vec3
--- @param pivot Vec2?
--- @param pixelOffset Vec2?
--- @param color Vec4?
--- @param size number?
--- @param colorOutline Vec4?
--- @return nil
function Text(text, posPerc, pivot, pixelOffset, color, size, colorOutline) end

--[[
---
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Graph)
]]
--- @class Graph : Widget
--- @field maxValue number
--- @field maxBars integer
--- @field barFill number
Graph = {}

--- @param value number
--- @param color Color
--- @return nil
function Graph:Push(value, color) end

--- @return nil
function Graph:Clear() end

--- @param value number
--- @param color Color
--- @return nil
function Graph:AddThreshold(value, color) end

--- @return nil
function Graph:ClearThresholds() end

--[[
---
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Header)
]]
--- @class Header : Widget
--- @field text string
--- @field collapsed boolean
Header = {}

--[[
`Client`
`Server`

Returned by [raycasts](Collision#Hit-Raycast).

[View Documentation](https://docs.atomontage.com/api/Hit)
]]
--- @class Hit
--- @field pos Vec3 (readonly)
--- @field distance number (readonly)
--- @field normal Vec3? (readonly)
--- @field color Color? (readonly)
--- @field material string? (readonly)
--- @field type HitType (readonly)
--- @field obj Object?
Hit = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Image)
]]
--- @class Image
Image = {}

--[[
`Client`
`Server`
:::info Client Only
Input from this class can only be read on the client side.
:::

Simple way to check a clients input.
For more advanced use we recommend receive input via the [events system](../manual/scripting/examples/Input) 
because it respects the order in which the input was received and other benefits. 

[View Documentation](https://docs.atomontage.com/api/Input)
]]
--- @class Input
Input = {}

--- @param includeEditor boolean?
--- @return table[]
function Input:GetEvents(includeEditor) end

--- @param key keyCode
--- @return boolean
function Input:KeyDown(key) end

--- @param key keyCode
--- @return boolean
function Input:Key(key) end

--- @param key keyCode
--- @return boolean
function Input:KeyUp(key) end

--- @return keyCode[]
function Input:KeyCombosDown() end

--- @param key1 keyCode
--- @param key2 keyCode?
--- @param key3 keyCode?
--- @return boolean
function Input:KeyComboDown(key1, key2, key3) end

--- @param key1 keyCode
--- @param key2 keyCode?
--- @param key3 keyCode?
--- @return boolean
function Input:KeyCombo(key1, key2, key3) end

--- @return boolean
function Input:ShiftKey() end

--- @return boolean
function Input:CtrlKey() end

--- @return boolean
function Input:AltKey() end

--- @param mouseButton mouseButton
--- @return boolean
function Input:MouseButtonDown(mouseButton) end

--- @param p1 mouseButton
--- @return boolean
function Input:MouseButton(p1) end

--- @param p1 mouseButton
--- @return boolean
function Input:MouseButtonUp(p1) end

--- @return integer
function Input:MouseWheel() end

--- @return Vec2
function Input:MousePos() end

--- @return Vec2
function Input:MousePosLast() end

--- @return Vec2
function Input:MouseMove() end

--- @return Vec2
function Input:MousePosPerc() end

--- @return Vec2
function Input:MousePosPercLast() end

--- @return Vec2
function Input:MouseMovePerc() end

--[[
Injects a synthetic key down/up into the real input funnel, as if the user pressed it.

[View Documentation](https://docs.atomontage.com/api/Input#nil-InjectKey-string-key-boolean-down)
]]
--- @param key string
--- @param down boolean
--- @return nil
function Input:InjectKey(key, down) end

--- @param button integer
--- @param down boolean
--- @return nil
function Input:InjectMouseButton(button, down) end

--- @param dxPerc number
--- @param dyPerc number
--- @return nil
function Input:InjectMouseMove(dxPerc, dyPerc) end

--- @param xPerc number
--- @param yPerc number
--- @return nil
function Input:InjectMousePos(xPerc, yPerc) end

--- @param amount integer
--- @return nil
function Input:InjectMouseWheel(amount) end

--[[
Releases all keys and buttons previously set via the `Inject*` functions.

[View Documentation](https://docs.atomontage.com/api/Input#nil-ClearInjected)
]]
--- @return nil
function Input:ClearInjected() end

--- @return boolean
function Input:GetRelativeMouseMode() end

--- @param relative boolean
--- @return nil
function Input:SetRelativeMouseMode(relative) end

--- @return boolean
function Input:GetEmulateMouseWithTouch() end

--- @param emulate boolean
--- @return nil
function Input:SetEmulateMouseWithTouch(emulate) end

--- @return boolean
function Input:GetEmulateTouchWithMouse() end

--- @param emulate boolean
--- @return nil
function Input:SetEmulateTouchWithMouse(emulate) end

--- @return number
function Input:GesturePinch() end

--- @return number
function Input:GestureRotate() end

--- @return Vec2
function Input:GestureMove() end

--- @return integer
function Input:NumFingers() end

--[[
int passed is the unique ID of that touch obtained i.e. from Input:Fingers() or Input:GetEvents()

[View Documentation](https://docs.atomontage.com/api/Input#boolean-FingerDown-integer-fingerIndex)
]]
--- @param fingerIndex integer
--- @return boolean
function Input:FingerDown(fingerIndex) end

--- @return integer[]
function Input:Fingers() end

--- @param fingerIndex integer
--- @return boolean
function Input:FingerUp(fingerIndex) end

--- @param fingerIndex integer
--- @return Vec2
function Input:FingerPos(fingerIndex) end

--- @param hand integer
--- @param button VRControllerButton
--- @return boolean
function Input:VRButtonDown(hand, button) end

--- @param hand integer
--- @param button VRControllerButton
--- @return boolean
function Input:VRButton(hand, button) end

--- @param hand integer
--- @param button VRControllerButton
--- @return boolean
function Input:VRButtonUp(hand, button) end

--- @param hand integer
--- @return number
function Input:VRHandTrigger(hand) end

--- @param hand integer
--- @return number
function Input:VRIndexTrigger(hand) end

--- @param hand integer
--- @return Vec2
function Input:VRThumbStick(hand) end

--- @param hand integer
--- @return Vec2
function Input:VRTrackpad(hand) end

--- @param hand integer
--- @return boolean
function Input:VRIsControllerValid(hand) end

--- @param hand integer
--- @return Vec3
function Input:VRControllerPos(hand) end

--- @param hand integer
--- @return Vec3
function Input:VRControllerDir(hand) end

--- @param hand integer
--- @param space Side
--- @return Vec3 posLocal, Quat rotLocal
function Input:VRControllerTransform(hand, space) end

--- @param hand integer
--- @param space Side
--- @return Vec3 posLocal, Quat rotLocal
function Input:VRPointerTransform(hand, space) end

--- @return Gamepad[]
function Input:Gamepads() end

--- @return Gamepad
function Input:GetActiveGamepad() end

--[[
---
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Inputbox)
]]
--- @class Inputbox : Widget
--- @field value string|int|float
--- @field range Range
--- @field inputType string
--- @field multiLine boolean
--- @field decimals integer
--- @field prefixLabel string
Inputbox = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/InteractionFilter)
]]
--- @class InteractionFilter
InteractionFilter = {}

--[[
ignore objects(s)

[View Documentation](https://docs.atomontage.com/api/InteractionFilter#self-Ignore-ObjectObjectnil-ignore)
]]
--- @param ignore Object|Object[]|nil
--- @return self
function InteractionFilter:Ignore(ignore) end

--[[
Replace the force list entirely with the given object(s). Unlike Force() which appends, this overwrites.
Perf: on cached ops, changing force/ignore triggers an expensive C++ filter update on next Run().
If the same list is passed again, the update is skipped. For best perf with cached ops, keep
separate pre-cached ops per target (e.g. one for static, one per dynamic object) instead of
calling SetForce with different objects each frame.

[View Documentation](https://docs.atomontage.com/api/InteractionFilter#InteractionFilter-SetForce-ObjectObject-force)
]]
--- @param force Object|Object[]
--- @return InteractionFilter
function InteractionFilter:SetForce(force) end

--[[
Replace the ignore list entirely with the given object(s). Unlike Ignore() which appends, this overwrites.
Perf: see SetForce comment above.

[View Documentation](https://docs.atomontage.com/api/InteractionFilter#InteractionFilter-SetIgnore-ObjectObject-ignore)
]]
--- @param ignore Object|Object[]
--- @return InteractionFilter
function InteractionFilter:SetIgnore(ignore) end

--- @param force Object|Object[]|nil
--- @return InteractionFilter
function InteractionFilter:Force(force) end

--- @return InteractionFilter
function InteractionFilter:ForceStatic() end

--- @return InteractionFilter
function InteractionFilter:IgnoreStatic() end

--[[
Perf: tags prevent filter caching and force containsStatic scan each Run()

[View Documentation](https://docs.atomontage.com/api/InteractionFilter#InteractionFilter-IgnoreTag-stringstringnil-ignore)
]]
--- @param ignore string|string[]|nil
--- @return InteractionFilter
function InteractionFilter:IgnoreTag(ignore) end

--[[
Perf: tags prevent filter caching and force containsStatic scan each Run()

[View Documentation](https://docs.atomontage.com/api/InteractionFilter#InteractionFilter-ForceTag-stringstringnil-force)
]]
--- @param force string|string[]|nil
--- @return InteractionFilter
function InteractionFilter:ForceTag(force) end

--[[
Single Run-time entry point: build the Filter on first call, sync it on subsequent calls.
Tag-resolved object membership is re-checked each call (via applyTagsToFilter's listsEqual gate),
so the cached Filter stays correct even as scene tags change, without reassigning filter.forceList
or filter.ignoreList when the resolved set hasn't actually changed.
Pass a builtin ignore tag (e.g. "No Voxel Paint", "No Voxel Change") to merge it with user-set
ignoreTags without mutating self.ignoreTags. The merged list is cached and only rebuilt when
user ignoreTags change (via IgnoreTag()).

[View Documentation](https://docs.atomontage.com/api/InteractionFilter#Filter-prepareFilter-string-builtinIgnoreTag)
]]
--- @param builtinIgnoreTag string?
--- @return Filter
function InteractionFilter:prepareFilter(builtinIgnoreTag) end

--[[
---
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Label)
]]
--- @class Label : Widget
--- @field text string
--- @field labelType string
--- @field multiLine boolean
--- @field maxWidth number
Label = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Mat3)
]]
--- @class Mat3
--- @operator add(Mat3):Mat3
--- @operator add(number):Mat3
--- @operator sub(Mat3):Mat3
--- @operator sub(number):Mat3
--- @operator mul(Mat3):Mat3
--- @operator mul(number):Mat3
--- @operator div(Mat3):Mat3
--- @operator div(number):Mat3
--- @field xaxis Vec3
--- @field yaxis Vec3
--- @field zaxis Vec3
--- @field row1 Vec3
--- @field row2 Vec3
--- @field row3 Vec3
Mat3 = {}

--- @param scalar number?
--- @return Mat3
function Mat3(scalar) end

--- @param x1 number
--- @param x2 number
--- @param x3 number
--- @param y1 number
--- @param y2 number
--- @param y3 number
--- @param z1 number
--- @param z2 number
--- @param z3 number
--- @return Mat3
function Mat3(x1, x2, x3, y1, y2, y3, z1, z2, z3) end

--- @param row1 Vec3
--- @param row2 Vec3
--- @param row3 Vec3
--- @return Mat3
function Mat3(row1, row2, row3) end

--- @param row1 Vec3i
--- @param row2 Vec3i
--- @param row3 Vec3i
--- @return Mat3
function Mat3(row1, row2, row3) end

--- @param mat Mat3
--- @return Mat3
function Mat3(mat) end

--- @param mat4 Mat4
--- @return Mat3
function Mat3(mat4) end

--- @param quat Quat
--- @return Mat3
function Mat3(quat) end

--- @param a Mat3
--- @param b Mat3
--- @return Mat3
function Mat3:__add(a, b) end

--- @param a number
--- @param b Mat3
--- @return Mat3
function Mat3:__add(a, b) end

--- @param a Mat3
--- @param b number
--- @return Mat3
function Mat3:__add(a, b) end

--- @param a Mat3
--- @param b Mat3
--- @return Mat3
function Mat3:__sub(a, b) end

--- @param a number
--- @param b Mat3
--- @return Mat3
function Mat3:__sub(a, b) end

--- @param a Mat3
--- @param b number
--- @return Mat3
function Mat3:__sub(a, b) end

--- @param a Mat3
--- @param b Mat3
--- @return Mat3
function Mat3:__mul(a, b) end

--- @param a Vec3
--- @param b Mat3
--- @return Vec3
function Mat3:__mul(a, b) end

--- @param a number
--- @param b Mat3
--- @return Mat3
function Mat3:__mul(a, b) end

--- @param a Mat3
--- @param b number
--- @return Mat3
function Mat3:__mul(a, b) end

--- @param a Mat3
--- @param b Mat3
--- @return Mat3
function Mat3:__div(a, b) end

--- @param a Vec3
--- @param b Mat3
--- @return Vec3
function Mat3:__div(a, b) end

--- @param a number
--- @param b Mat3
--- @return Mat3
function Mat3:__div(a, b) end

--- @param a Mat3
--- @param b number
--- @return Mat3
function Mat3:__div(a, b) end

--- @return Mat3
function Mat3:__unm() end

--- @param a Mat3
--- @param b Mat3
--- @return boolean
function Mat3:__eq(a, b) end

--- @param key integer
--- @return Vec3
function Mat3:__index(key) end

--- @param key integer
--- @param value Vec3
--- @return nil
function Mat3:__newindex(key, value) end

--- @return string
function Mat3:__tostring() end

--- @return number
function Mat3:GetDeterminant() end

--- @return nil
function Mat3:Transpose() end

--- @return Mat3
function Mat3:GetTransposed() end

--- @return nil
function Mat3:Invert() end

--- @return Mat3
function Mat3:GetInverted() end

--- @return boolean
function Mat3:IsIdentity() end

--- @return boolean
function Mat3:IsZero() end

--- @return Mat3
function Mat3:Copy() end

--- @return boolean
function Mat3:IsSingular() end

--- @return boolean
function Mat3:IsAnyNaN() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Mat4)
]]
--- @class Mat4
--- @operator add(Mat4):Mat4
--- @operator add(number):Mat4
--- @operator sub(Mat4):Mat4
--- @operator sub(number):Mat4
--- @operator mul(Mat4):Mat4
--- @operator mul(number):Mat4
--- @operator div(Mat4):Mat4
--- @operator div(number):Mat4
--- @field xaxis Vec4
--- @field yaxis Vec4
--- @field zaxis Vec4
--- @field translation Vec4
--- @field row1 Vec4
--- @field row2 Vec4
--- @field row3 Vec4
--- @field row4 Vec4
Mat4 = {}

--- @param scalar number?
--- @return Mat4
function Mat4(scalar) end

--- @param x1 number
--- @param x2 number
--- @param x3 number
--- @param x4 number
--- @param y1 number
--- @param y2 number
--- @param y3 number
--- @param y4 number
--- @param z1 number
--- @param z2 number
--- @param z3 number
--- @param z4 number
--- @param w1 number
--- @param w2 number
--- @param w3 number
--- @param w4 number
--- @return Mat4
function Mat4(x1, x2, x3, x4, y1, y2, y3, y4, z1, z2, z3, z4, w1, w2, w3, w4) end

--- @param row1 Vec4
--- @param row2 Vec4
--- @param row3 Vec4
--- @param row4 Vec4
--- @return Mat4
function Mat4(row1, row2, row3, row4) end

--- @param mat Mat3
--- @return Mat4
function Mat4(mat) end

--- @param mat4 Mat4
--- @return Mat4
function Mat4(mat4) end

--- @param quat Quat
--- @return Mat4
function Mat4(quat) end

--- @param a Mat4
--- @param b Mat4
--- @return Mat4
function Mat4:__add(a, b) end

--- @param a number
--- @param b Mat4
--- @return Mat4
function Mat4:__add(a, b) end

--- @param a Mat4
--- @param b number
--- @return Mat4
function Mat4:__add(a, b) end

--- @param a Mat4
--- @param b Mat4
--- @return Mat4
function Mat4:__sub(a, b) end

--- @param a number
--- @param b Mat4
--- @return Mat4
function Mat4:__sub(a, b) end

--- @param a Mat4
--- @param b number
--- @return Mat4
function Mat4:__sub(a, b) end

--- @param a Mat4
--- @param b Mat4
--- @return Mat4
function Mat4:__mul(a, b) end

--- @param a number
--- @param b Mat4
--- @return Mat4
function Mat4:__mul(a, b) end

--- @param a Mat4
--- @param b number
--- @return Mat4
function Mat4:__mul(a, b) end

--- @param a Mat4
--- @param b Mat4
--- @return Mat4
function Mat4:__div(a, b) end

--- @param a number
--- @param b Mat4
--- @return Mat4
function Mat4:__div(a, b) end

--- @param a Mat4
--- @param b number
--- @return Mat4
function Mat4:__div(a, b) end

--- @param index integer
--- @return Vec4
function Mat4:__index(index) end

--- @param index integer
--- @param value Vec4
--- @return nil
function Mat4:__newindex(index, value) end

--- @return Mat4
function Mat4:__unm() end

--- @param a Mat4
--- @param b Mat4
--- @return boolean
function Mat4:__eq(a, b) end

--- @return string
function Mat4:__tostring() end

--- @return number
function Mat4:GetDeterminant() end

--- @return nil
function Mat4:Transpose() end

--- @return Mat4
function Mat4:GetTransposed() end

--- @return Mat4
function Mat4:Invert() end

--- @param m Mat4
--- @return Mat4
function Mat4.Invert(m) end

--- @return Mat4
function Mat4:GetInverted() end

--- @return Mat4
function Mat4:Copy() end

--- @return boolean
function Mat4:IsIdentity() end

--- @return boolean
function Mat4:IsZero() end

--- @return boolean
function Mat4:IsSingular() end

--- @return boolean
function Mat4:IsAnyNaN() end

--- @param x number
--- @param y number
--- @param z number
--- @return Mat4
function Mat4.Translation(x, y, z) end

--- @param vec Vec3
--- @return Mat4
function Mat4.Translation(vec) end

--- @param x number
--- @param y number
--- @param z number
--- @return Mat4
function Mat4.RotationXYZ(x, y, z) end

--- @param angles Vec3
--- @return Mat4
function Mat4.RotationXYZ(angles) end

--- @param angleYaw number
--- @param anglePitch number
--- @param angleRoll number
--- @return Mat4
function Mat4.RotationYawPitchRoll(angleYaw, anglePitch, angleRoll) end

--- @param angles Vec3
--- @return Mat4
function Mat4.RotationYawPitchRoll(angles) end

--- @param x number
--- @param y number
--- @param z number
--- @return Mat4
function Mat4.Scaling(x, y, z) end

--- @param scale Vec3
--- @return Mat4
function Mat4.Scaling(scale) end

--- @param eyePos Vec3
--- @param targetPos Vec3
--- @param up Vec3
--- @return Mat4
function Mat4.LookAt(eyePos, targetPos, up) end

--- @param fovY number
--- @param aspect number
--- @param znear number
--- @param zfar number
--- @return Mat4
function Mat4.Perspective(fovY, aspect, znear, zfar) end

--- @param left number
--- @param right number
--- @param bottom number
--- @param top number
--- @param zNear number
--- @param zFar number
--- @return Mat4
function Mat4.Ortho(left, right, bottom, top, zNear, zFar) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Material)
]]
--- @class Material
Material = {}

--- @param name string
--- @return boolean
function Material:HasProperty(name) end

--- @param name string
--- @return Vec3
function Material:GetPropertyVec3(name) end

--- @param name string
--- @param vec Vec3
--- @return nil
function Material:SetPropertyVec3(name, vec) end

--- @param name string
--- @return Vec4
function Material:GetPropertyVec4(name) end

--- @param name string
--- @param vec Vec4
--- @return nil
function Material:SetPropertyVec4(name, vec) end

--[[
Feeds a live `Vec3`/`Vec4` value into a shader uniform without rebuilding or reloading shaders — the practical way to drive a "maker-settable" uniform (e.g. from a UI slider). Notes:
- The named field must already exist in a UBO the material actually uses; a brand-new UBO at an unused binding won't get filled. Pack scalars into a `Vec4`.
- The value applies on the **next frame**; no [`Client:ReloadShaders`](./client.mdx) needed for the value itself.
- An unset UBO field reads as **garbage** — call `SetProperty` once at load to initialize it, and clamp to sane ranges in the shader.
- Get the shared material the renderer actually draws with `Scene:CreateMaterial("name")` (returns the cached instance, not a copy).

See also the typed [`SetPropertyVec3`](#nil-SetPropertyVec3-string-name-Vec3-vec) / [`SetPropertyVec4`](#nil-SetPropertyVec4-string-name-Vec4-vec).

[View Documentation](https://docs.atomontage.com/api/Material#nil-SetProperty-string-name-Vec3Vec4-vec)
]]
--- @param name string
--- @param vec Vec3|Vec4
--- @return nil
function Material:SetProperty(name, vec) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Mesh)
]]
--- @class Mesh
--- @field active boolean
--- @field activeInHierarchy boolean (readonly)
--- @field object Object (readonly)
--- @field obj Object (readonly)
--- @field isDestroyed boolean (readonly)
--- @field type string (readonly)
--- @field onePerObject boolean (readonly)
--- @field resourceUsageMode ResourceUsage
--- @field topology PrimitiveTopology
--- @field vertexCount integer
--- @field indexCount integer
--- @field material Material
Mesh = {}

--- @param a Mesh
--- @param b Mesh
--- @return boolean
function Mesh:__eq(a, b) end

--- @param topology PrimitiveTopology?
--- @return nil
function Mesh:ClearShape(topology) end

--- @param pos Vec3
--- @param uv Vec2?
--- @param color Color?
--- @return integer
function Mesh:AddVertex(pos, uv, color) end

--- @param pos Vec3
--- @param color Color
--- @return integer
function Mesh:AddVertex(pos, color) end

--- @param a integer
--- @param b integer?
--- @param c integer?
--- @return nil
function Mesh:AddIndex(a, b, c) end

--[[
Adds a Shape (Box/Sphere/Capsule/Cylinder/Polyhedron) to the mesh as triangles or lines, tinted by `color`.

[View Documentation](https://docs.atomontage.com/api/Mesh#nil-AddShape-Shape-shape-Color-color)
]]
--- @param shape Shape
--- @param color Color
--- @return nil
function Mesh:AddShape(shape, color) end

--[[
`Client`
`Server`

The object visible in the hierarchy. Every object has a transform and can have additional components attached to it.


[View Documentation](https://docs.atomontage.com/api/Object)
]]
--- @class Object
--- @field pos Vec3 The global (world) position of the object
--- @field posX number
--- @field posY number
--- @field posZ number
--- @field rot Quat The global (world) rotation of the object as a quaternion
--- @field eulerRot Vec3 The global (world) rotation of the object represented as Euler angles.
--- @field scale number The global (world) scale of the object.
--- @field localPos Vec3 The local position of the object relative to its parent
--- @field localRot Quat The local rotation of the object represented as a quaternion.
--- @field localEulerRot Vec3 The local rotation of the object represented as Euler angles.
--- @field localScale number The local scale of the object relative to its parent
--- @field right Vec3 (readonly) The right direction vector of the object in world space.
--- @field up Vec3 (readonly) The up direction vector of the object in world space.
--- @field forward Vec3 (readonly) The forward direction vector of the object in world space.
--- @field transformFingerprint number (readonly) 64-bit value that changes when the object's global (world) position, rotation, or scale change — including motion caused by an ancestor moving. Useful for cheap change detection.
--- @field name string
--- @field active boolean Set the object to be active or inactive. Inactive objects are not updated or rendered. All its children also become inactive.
--- @field activeInHierarchy boolean (readonly) Readonly. Check if the object is active in the scene. It may be inactive because a parent is inactive.
--- @field save boolean Save this object in the hierarchy. If not saved it will be deleted after lua reset or server restart
--- @field isDestroyed boolean (readonly) True if the object was destroyed. Note that references to this object will still be valid 
--- @field id string (readonly) This is id is unique across clients and server
--- @field parent Object?
--- @field children Object[] (readonly)
--- @field subtreeVersion integer (readonly) Monotonic counter bumped on this object and all of its ancestors whenever a child is added, removed, or reordered anywhere in its subtree (parent/unparent/reorder). Does NOT change for transform edits (use [`transformFingerprint`](#number-transformFingerprint)) or component add/remove. Cheap O(1) check for invalidating caches derived from the child hierarchy, e.g. `WithChildren()`.
--- @field siblingIndex integer This object's position among its parent's children.
--- @field isPrefabObject boolean (readonly)
--- @field components Component[] (readonly)
--- @field voxelData VoxelData? (readonly)
--- @field voxelRenderer VoxelData? (readonly)
--- @field rigidBody RigidBody? (readonly)
Object = {}

--- @param a Object
--- @param b Object
--- @return boolean
function Object:__eq(a, b) end

--[[
Transforms a local position to world space, allowing you to convert coordinates relative to an object into global coordinates.

[View Documentation](https://docs.atomontage.com/api/Object#Vec3-LocalToWorld-Vec3-point)
]]
--- @param point Vec3
--- @return Vec3
function Object:LocalToWorld(point) end

--[[
Converts a world position to local space, making it useful for determining an object's position relative to another object.

[View Documentation](https://docs.atomontage.com/api/Object#Vec3-WorldToLocal-Vec3-point)
]]
--- @param point Vec3
--- @return Vec3
function Object:WorldToLocal(point) end

--- @param vec Vec3
--- @return Vec3
function Object:LocalToWorldVec(vec) end

--- @param vec Vec3
--- @return Vec3
function Object:WorldToLocalVec(vec) end

--[[
Rotates the object to face the given world point (optional up vector).

[View Documentation](https://docs.atomontage.com/api/Object#nil-LookAt-Vec3-pos-Vec3-up)
]]
--- @param pos Vec3
--- @param up Vec3?
--- @return nil
function Object:LookAt(pos, up) end

--[[
Get child object by name

[View Documentation](https://docs.atomontage.com/api/Object#Object-GetChild-string-name)
]]
--- @param name string
--- @return Object?
function Object:GetChild(name) end

--- @param fileName string
--- @param sync boolean?
--- @return Script
function Object:AddScript(fileName, sync) end

--- @return Mesh
function Object:AddMesh() end

--- @return VoxelData?
function Object:AddVoxelData() end

--- @return Camera
function Object:AddCamera() end

--- @return Sky
function Object:AddSkybox() end

--- @return boolean
function Object:RemoveParent() end

--- @param component Component|string
--- @return boolean
function Object:RemoveComponent(component) end

--- @generic ComponentType: Component
--- @param name `ComponentType`|componentType
--- @return ComponentType
function Object:GetComponentByType(name) end

--- @generic ComponentType: Component
--- @param name `ComponentType`|componentType
--- @return ComponentType[]
function Object:GetComponentsByType(name) end

--- @param typeName string
--- @return Component?
function Object:GetComponent(typeName) end

--- @param typeName string
--- @return Component[]
function Object:GetComponents(typeName) end

--- @generic T: Component
--- @param type `T`|componentType
--- @return T
function Object:AddComponent(type) end

--[[
get the object and all its children, descendants, does not returns destroyed objects

[View Documentation](https://docs.atomontage.com/api/Object#Object-WithChildren-boolean-includeInactive)
]]
--- @param includeInactive boolean?
--- @return Object[]
function Object:WithChildren(includeInactive) end

--- @generic ScriptInstanceType: ScriptInstance
--- @param name `ScriptInstanceType`
--- @return ScriptInstanceType
function Object:FindScript(name) end

--- @generic ScriptInstanceType: ScriptInstance
--- @param name `ScriptInstanceType`
--- @return ScriptInstanceType
function Object:FindScriptWithChildren(name) end

--[[
Recursively search this object and all descendants; return the first object matching by name (string) or by identity (Object).

[View Documentation](https://docs.atomontage.com/api/Object#Object-FindObjectWithChildren-stringObject-find-boolean-includeInactive)
]]
--- @param find string|Object
--- @param includeInactive boolean?
--- @return Object?
function Object:FindObjectWithChildren(find, includeInactive) end

--- @generic ComponentType: Component
--- @param name `ComponentType`|componentType
--- @param includeInactive? boolean
--- @return ComponentType
function Object:GetComponentWithChildren(name, includeInactive) end

--- @generic ComponentType: Component
--- @param name `ComponentType`|componentType
--- @param includeInactive? boolean
--- @return ComponentType[]
function Object:GetComponentsWithChildren(name, includeInactive) end

--- @param name string
--- @return boolean
function Object:HasScript(name) end

--[[
Volume of all the VoxelData components in the object and all its children

[View Documentation](https://docs.atomontage.com/api/Object#number-GetVolumeWithChildren-string-stopIfChildObjHasScript)
]]
--- @param stopIfChildObjHasScript string
--- @return number
function Object:GetVolumeWithChildren(stopIfChildObjHasScript) end

--- @return string
function Object:GetNetworkFlow() end

--- @return string
function Object:GetScriptUpdateTime() end

--- @return integer
function Object:GetRefCount() end

--- @return nil
function Object:Destroy() end

--- @param find string|Object
--- @return Object?
function Object:FindObjectInParents(find) end

--- @generic ScriptInstanceType: ScriptInstance
--- @param name `ScriptInstanceType`
--- @return ScriptInstanceType
function Object:FindScriptInParents(name) end

--- @param tag string
--- @return nil
function Object:AddTag(tag) end

--- @param tag string
--- @return nil
function Object:RemoveTag(tag) end

--- @param tag string
--- @return boolean
function Object:HasTag(tag) end

--- @return string[]
function Object:GetTags() end

--[[
find first tag matching string
[View Documentation](https://docs.atomontage.com/api/Object#nil-FindTag-any-tag)
]]
--- @param tag any
--- @return nil
function Object:FindTag(tag) end

--[[
find tag in parents in order
[View Documentation](https://docs.atomontage.com/api/Object#string-tag-Object-FindTagWithParents-string-tag)
]]
--- @param tag string
--- @return string tag, Object
function Object:FindTagWithParents(tag) end

--[[
`Client`
`Server`

The voxel **add** operation, returned by [`Vox:Add(target)`](./vox.mdx#OpAdd-Add-opTarget-target). Configure it with the chain (inherited from [`OpBase`](./opBase.mdx)), then call `:Run()`. See [`Vox`](./vox.mdx) for the pattern.

[View Documentation](https://docs.atomontage.com/api/OpAdd)
]]
--- @class OpAdd : OpBaseColored
OpAdd = {}

--[[
`Client`
`Server`

Base class for the [`Vox`](./vox.mdx) operation builders ([`OpAdd`](./opAdd.mdx), [`OpRemove`](./opRemove.mdx), [`OpPaint`](./opPaint.mdx), [`OpCopy`](./opCopy.mdx), …). You don't use it directly — its chain methods (`Force`, `Ignore`, `OnFinished`, `Run`, …) are inherited by all of them. See [`Vox`](./vox.mdx) for the usage pattern.

[View Documentation](https://docs.atomontage.com/api/OpBase)
]]
--- @class OpBase : InteractionFilter
OpBase = {}

--[[
Set the target shape/object(s) for this operation. Updates the cached VoxelEdit shape in-place if already built.

[View Documentation](https://docs.atomontage.com/api/OpBase#OpBase-Target-opTarget-target)
]]
--- @param target opTarget
--- @return OpBase
function OpBase:Target(target) end

--[[
Callback function. `OnFinished` is called after `OnProgress` if it was last part

[View Documentation](https://docs.atomontage.com/api/OpBase#nil-OnFinished-fun-onFinished)
]]
--- @param onFinished fun()
--- @return nil
function OpBase:OnFinished(onFinished) end

--[[
Callback function. May not be called every frame. Is called after script updates

[View Documentation](https://docs.atomontage.com/api/OpBase#nil-OnProgress-fun-onProgress)
]]
--- @param onProgress fun()
--- @return nil
function OpBase:OnProgress(onProgress) end

--- @param onError function
--- @return nil
function OpBase:OnError(onError) end

--- @return OpBase
function OpBase:Draw() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/OpBaseColored)
]]
--- @class OpBaseColored : OpBaseTextured
OpBaseColored = {}

--- @param r Vec3|number
--- @param g number?
--- @param b number?
--- @return OpBaseColored
function OpBaseColored:Color(r, g, b) end

--[[
Apply a voxel material. How it interacts with Color/Texture:
- textured materials (stone/concrete/bedrock/sand/flesh/bone) always show their texture, ignoring Color
- metals stay reflective; other (untextured) materials take your Color if set, else their own albedo
- a Texture image overrides Color too, unless you set a Color which then tints it

[View Documentation](https://docs.atomontage.com/api/OpBaseColored#nil-Material-materialName-mat)
]]
--- @param mat materialName
--- @return nil
function OpBaseColored:Material(mat) end

--- @param metallicity number
--- @return OpBaseColored
function OpBaseColored:Metallicity(metallicity) end

--- @param roughness number
--- @return OpBaseColored
function OpBaseColored:Roughness(roughness) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/OpBaseMaterials)
]]
--- @class OpBaseMaterials : OpBaseColored
OpBaseMaterials = {}

--- @param ignore materialName|materialName[]
--- @return self
function OpBaseMaterials:IgnoreMaterial(ignore) end

--- @param names materialName|materialName[]
--- @return self
function OpBaseMaterials:ForceMaterial(names) end

--- @param maxHardness number|materialName|nil
--- @return self
function OpBaseMaterials:MaxHardness(maxHardness) end

--- @param minHardness number|materialName
--- @return self
function OpBaseMaterials:MinHardness(minHardness) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/OpBaseTextured)
]]
--- @class OpBaseTextured : OpBase
OpBaseTextured = {}

--[[
Project an image onto the voxels (works on Add/Paint/Remove). The image replaces color; set a
Color to tint it. Projected along `dir` (planar): lands only on the face toward `dir`, fading out on
angled faces (decal-style). Use TriplanarTexture to cover every face without fading instead.

[View Documentation](https://docs.atomontage.com/api/OpBaseTextured#OpBaseTextured-Texture-string-tex-Vec3-dir-number-scale-stringbooleannil-normal)
]]
--- @param tex string?
--- @param dir Vec3
--- @param scale number?
--- @param normal string|boolean|nil
--- @return OpBaseTextured
function OpBaseTextured:Texture(tex, dir, scale, normal) end

--[[
Texture voxels from all three world axes, blended by surface normal (works on Add/Paint/Remove).
The image replaces color; set a Color to tint it.

[View Documentation](https://docs.atomontage.com/api/OpBaseTextured#OpBaseTextured-TriplanarTexture-string-tex-Vec3-anchor-number-scale-stringbooleannil-normal)
]]
--- @param tex string?
--- @param anchor Vec3?
--- @param scale number?
--- @param normal string|boolean|nil
--- @return OpBaseTextured
function OpBaseTextured:TriplanarTexture(tex, anchor, scale, normal) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/OpCollide)
]]
--- @class OpCollide : InteractionFilter
--- @field Ignore fun(op:OpCollide, ignore: Object|Object[]?): OpCollide
--- @field Force fun(op:OpCollide, force: Object|Object[]?): OpCollide
--- @field ForceStatic fun(op:OpCollide): OpCollide
--- @field IgnoreStatic fun(op:OpCollide): OpCollide
--- @field ForceTag fun(op:OpCollide, tag: string|string[]): OpCollide
--- @field IgnoreTag fun(op:OpCollide, tag: string|string[]): OpCollide
OpCollide = {}

--- @return OpCollide
function OpCollide:Draw() end

--- @return Overlap[]
function OpCollide:Run() end

--[[
`Client`
`Server`

The voxel **copy** operation, returned by [`Vox:Copy(target)`](./vox.mdx#OpCopy-Copy-opTarget-target). Configure it with the chain (inherited from [`OpBase`](./opBase.mdx)), then call `:Run()`. See [`Vox`](./vox.mdx) for the pattern.

[View Documentation](https://docs.atomontage.com/api/OpCopy)
]]
--- @class OpCopy : OpBase
--- @field target opTarget
OpCopy = {}

--[[
Select the object to copy to.
source before Run() to relocate. To add: plumb args through Run() into copyAtShape (ve.copyDestination*).

[View Documentation](https://docs.atomontage.com/api/OpCopy#OpCopy-To-ObjectObject-to)
]]
--- @param to Object|Object[]
--- @return OpCopy
function OpCopy:To(to) end

--- @return OpCopy
function OpCopy:ToStatic() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/OpDeflate)
]]
--- @class OpDeflate : OpBaseTextured
OpDeflate = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/OpInflate)
]]
--- @class OpInflate : OpBaseTextured
OpInflate = {}

--[[
`Client`
`Server`

The voxel **paint** operation, returned by [`Vox:Paint(target)`](./vox.mdx#OpPaint-Paint-opTarget-target). Configure it with the chain (inherited from [`OpBase`](./opBase.mdx)), then call `:Run()`. See [`Vox`](./vox.mdx) for the pattern.

[View Documentation](https://docs.atomontage.com/api/OpPaint)
]]
--- @class OpPaint : OpBaseColored
OpPaint = {}

--- @param r Vec3|Vec4|number
--- @param g number?
--- @param b number?
--- @param a number?
--- @return OpPaint
function OpPaint:Color(r, g, b, a) end

--[[
Various blend modes which you may know from Photoshop. See a list of explanations
[here](https://photoshoptrainingchannel.com/blending-modes-explained/#normal-blending-modes)

[View Documentation](https://docs.atomontage.com/api/OpPaint#OpPaint-BlendMode-BlendMode-blendMode)
]]
--- @param blendMode BlendMode
--- @return OpPaint
function OpPaint:BlendMode(blendMode) end

--[[
blend radius ratio, how much the paint will blend out from the edge of the shape, 1 is no blend

[View Documentation](https://docs.atomontage.com/api/OpPaint#OpPaint-Hardness-number-hardness)
]]
--- @param hardness number
--- @return OpPaint
function OpPaint:Hardness(hardness) end

--[[
`Client`
`Server`

The voxel **remove** operation, returned by [`Vox:Remove(target)`](./vox.mdx#OpRemove-Remove-opTarget-target). Configure it with the chain (inherited from [`OpBase`](./opBase.mdx)), then call `:Run()`. See [`Vox`](./vox.mdx) for the pattern.

[View Documentation](https://docs.atomontage.com/api/OpRemove)
]]
--- @class OpRemove : OpBaseTextured
OpRemove = {}

--[[
Callback function. `OnFinished` is called after `OnProgress` if it was last part

[View Documentation](https://docs.atomontage.com/api/OpRemove#OpRemove-OnFinished-fun-onFinished)
]]
--- @param onFinished fun()
--- @return OpRemove
function OpRemove:OnFinished(onFinished) end

--[[
count volume of material removed, result is returned in OnFished

[View Documentation](https://docs.atomontage.com/api/OpRemove#OpRemove-CountMaterial-materialNamematerialNamenil-countMat)
]]
--- @param countMat materialName|materialName[]|nil
--- @return OpRemove
function OpRemove:CountMaterial(countMat) end

--- @param strength number?
--- @return OpRemove
function OpRemove:SoftRemovalStrength(strength) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/OpSmoothen)
]]
--- @class OpSmoothen : OpBaseTextured
OpSmoothen = {}

--[[
`Client`
`Server`

A [`Vox`](./vox.mdx) voxel-operation builder. Configure it with the chain (inherited from [`OpBase`](./opBase.mdx)), then call `:Run()`. See [`Vox`](./vox.mdx) for the pattern.

[View Documentation](https://docs.atomontage.com/api/OpSubtract)
]]
--- @class OpSubtract : OpBaseMaterials
--- @field target Object|Object[]
--- @field destinationPos Vec3
--- @field destinationRot Quat
--- @field destinationScale Vec3
OpSubtract = {}

--[[
apply the color of the subtracted object

[View Documentation](https://docs.atomontage.com/api/OpSubtract#OpSubtract-UseColor)
]]
--- @return OpSubtract
function OpSubtract:UseColor() end

--- @return nil
function OpSubtract:Run() end

--[[
`Client`
`Server`

Returned by [`Overlap()` functions](Collision#Overlap-GetOverlap-Shape-shape).

[View Documentation](https://docs.atomontage.com/api/Overlap)
]]
--- @class Overlap
--- @field center Vec3
--- @field radius number
--- @field obj Object
--- @field shape Shape
Overlap = {}

--[[
---
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Panel)
]]
--- @class Panel : Widget
--- @field scroll boolean
--- @field scrollX boolean
--- @field scrollY boolean
--- @field scrollPosY number
--- @field scrollSpaceY number
--- @field textureColor Color
--- @field texture Asset
--- @field textureScaleMode string
--- @field borders string
--- @field glyph string
--- @field glyphScaleMode string
Panel = {}

--- @param widget Widget
--- @return nil
function Panel:ScrollYToWidget(widget) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/PhysSimEvent)
]]
--- @class PhysSimEvent
--- @field pos Vec3 (readonly)
--- @field impactNormal Vec3 (readonly)
--- @field size number (readonly)
--- @field cldeeNormal Vec3 (readonly)
--- @field cldr Object (readonly)
--- @field cldee Object (readonly)
--- @field eventType PhysSimEventType (readonly)
--- @field targetType HitType (readonly)
--- @field cldeeMaterial string (readonly)
PhysSimEvent = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/PhysSimEvents)
]]
--- @class PhysSimEvents
PhysSimEvents = {}

--- @param eventType PhysSimEventType?
--- @return PhysSimEvent[]
function PhysSimEvents:GetEvents(eventType) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Polygon)
]]
--- @class Polygon
--- @field points Vec3[]
Polygon = {}

--- @return Polygon
function Polygon() end

--- @param points Vec3[]
--- @return nil
function Polygon:SetPoints(points) end

--- @param p Vec3
--- @return nil
function Polygon:AddPoint(p) end

--[[
`Client`
`Server`

A polyhedron is built from half-spaces.
Each half-space is defined by a plane (a point + a normal) and represents “everything on one side of that plane.”

```lua
function self:examplePolyhedron(pos)
    local dirs = {
        Vec3( 1, 0, 0),
        Vec3(-1, 0, 0),
        Vec3( 0, 1, 0),
        Vec3( 0, 0, 1)
    }

    local sides = {}
    for _, n in ipairs(dirs) do
        local pl = Vec4()
        pl:MakePlane(pos + n, n)
        table.insert(sides, pl)
    end

    local sh = Polyhedron()
    sh.sides = sides
    return sh
end
```

[View Documentation](https://docs.atomontage.com/api/Polyhedron)
]]
--- @class Polyhedron
--- @field pos Vec3
--- @field sides Vec4[] the half spaces that make up the polyhedron.Use `Vec4:MakePlane(pos, normal)` to create a plane.
--- @field sidesCount integer
Polyhedron = {}

--- @return Polyhedron
function Polyhedron() end

--- @param sides Vec4[]
--- @return Polyhedron
function Polyhedron(sides) end

--- @param index integer
--- @return Vec4 side
function Polyhedron:GetSide(index) end

--- @param index integer
--- @param side Vec4
--- @return nil
function Polyhedron:SetSide(index, side) end

--- @param px number
--- @param py number
--- @param pz number
--- @param nx number
--- @param ny number
--- @param nz number
--- @return nil
function Polyhedron:AddPlane(px, py, pz, nx, ny, nz) end

--- @return boolean valid, string error
function Polyhedron:IsValid() end

--[[
Returns a **new** polyhedron transformed by position, rotation, and uniform scale; the original instance is left unchanged.

[View Documentation](https://docs.atomontage.com/api/Polyhedron#Polyhedron-Transform-Vec3-pos-Quat-rot-number-scale)
]]
--- @param pos Vec3
--- @param rot Quat
--- @param scale number
--- @return Polyhedron
function Polyhedron:Transform(pos, rot, scale) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Quat)
]]
--- @class Quat
--- @operator add(Quat):Quat
--- @operator sub(Quat):Quat
--- @operator mul(Quat):Quat
--- @operator mul(number):Quat
--- @operator mul(Vec3):Vec3
--- @operator mul(Vec4):Vec4
--- @operator div(number):Quat
--- @operator pow(number):Quat
--- @operator unm(Quat):Quat
--- @field x number
--- @field y number
--- @field z number
--- @field w number
--- @field identity Quat (readonly)
Quat = {}

--- @return Quat
function Quat() end

--- @param w number
--- @param x number
--- @param y number
--- @param z number
--- @return Quat
function Quat(w, x, y, z) end

--- @param mat3 Mat3
--- @return Quat
function Quat(mat3) end

--- @param mat4 Mat4
--- @return Quat
function Quat(mat4) end

--- @param angle number
--- @param axis Vec3
--- @return Quat
function Quat(angle, axis) end

--- @param a Quat
--- @param b Quat
--- @return Quat
function Quat:__add(a, b) end

--- @param a Quat
--- @param b Quat
--- @return Quat
function Quat:__sub(a, b) end

--- @param a Quat
--- @param b Quat
--- @return Quat
function Quat:__mul(a, b) end

--- @param q Quat
--- @param s number
--- @return Quat
function Quat:__mul(q, s) end

--- @param s number
--- @param q Quat
--- @return Quat
function Quat:__mul(s, q) end

--- @param q Quat
--- @param v Vec3
--- @return Vec3
function Quat:__mul(q, v) end

--- @param q Quat
--- @param v Vec4
--- @return Vec4
function Quat:__mul(q, v) end

--- @param a Quat
--- @param b number
--- @return Quat
function Quat:__div(a, b) end

--- @param a Quat
--- @param b number
--- @return Quat
function Quat:__pow(a, b) end

--- @param a Quat
--- @return Quat
function Quat:__unm(a) end

--- @param a Quat
--- @param b Quat
--- @return boolean
function Quat:__eq(a, b) end

--- @return string
function Quat:__tostring() end

--- @return number
function Quat:Len() end

--- @return number
function Quat:Length() end

--- @return number
function Quat:SqrLength() end

--- @return boolean
function Quat:IsZero() end

--- @param w number
--- @param x number
--- @param y number
--- @param z number
--- @return nil
function Quat:Set(w, x, y, z) end

--- @return Quat
function Quat:Copy() end

--- @param other Quat
--- @return number
function Quat:Dot(other) end

--- @param p1 Quat
--- @param p2 Quat
--- @param p3 number
--- @return Quat
function Quat.Lerp(p1, p2, p3) end

--- @param p1 Quat
--- @param p2 Quat
--- @param p3 number
--- @return Quat
function Quat.Slerp(p1, p2, p3) end

--- @param a Quat
--- @param b Quat
--- @param t number
--- @param twistAxis Vec3?
--- @return Quat
function Quat.Sterp(a, b, t, twistAxis) end

--- @return nil
function Quat:Normalize() end

--- @return Quat
function Quat:GetNormalized() end

--- @return nil
function Quat:Invert() end

--- @return Quat
function Quat:GetInversed() end

--- @param ex number
--- @param ey number
--- @param ez number
--- @return nil
function Quat:RotateByEuler(ex, ey, ez) end

--- @param angle number
--- @param v Vec3
--- @return Quat
function Quat:Rotate(angle, v) end

--- @param angle number
--- @param v Vec3
--- @return Quat
function Quat:GetRotated(angle, v) end

--- @return Quat
function Quat:GetConjugate() end

--- @return number
function Quat:GetPitch() end

--- @return number
function Quat:GetYaw() end

--- @return number
function Quat:GetRoll() end

--- @return Vec3
function Quat:GetEuler() end

--- @return number
function Quat:GetAngle() end

--- @return Vec3
function Quat:GetAxis() end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @return Quat
function Quat.Euler(p1, p2, p3) end

--- @param p1 Vec3
--- @return Quat
function Quat.Euler(p1) end

--- @param u Vec3
--- @param v Vec3
--- @return Quat
function Quat.Axes(u, v) end

--- @param p1 number
--- @param p2 Vec3
--- @return Quat
function Quat.AngleAxis(p1, p2) end

--- @param dir Vec3
--- @param up Vec3?
--- @return Quat
function Quat.LookAt(dir, up) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Random)
]]
--- @class Random
Random = {}

--- @param maxAngle number?
--- @return Quat
function Random:Quat(maxAngle) end

--- @param diameter number?
--- @return Vec3
function Random:OnSphere(diameter) end

--- @param diameter number?
--- @return Vec3
function Random:InSphere(diameter) end

--- @param diameter number?
--- @return Vec3
function Random:OnCircle(diameter) end

--- @param diameter number?
--- @return Vec3
function Random:InCircle(diameter) end

--- @return Vec3
function Random:Vec3() end

--- @param dimsOrBox Vec3|Box
--- @return Vec3
function Random:OnBox(dimsOrBox) end

--- @param dimsOrBox Vec3|Box
--- @return Vec3
function Random:InBox(dimsOrBox) end

--[[
Fisher-Yates shuffle. Stays in Lua: table swaps via sol2 are slower than native Lua bytecode.

[View Documentation](https://docs.atomontage.com/api/Random#table-Shuffle-table-tbl)
]]
--- @param tbl table
--- @return table
function Random:Shuffle(tbl) end

--- @param min number?
--- @param max number?
--- @return number
function Random:Number(min, max) end

--- @param min number?
--- @param max number?
--- @param deviationChance number?
--- @return number
function Random:RangeWithDistribution(min, max, deviationChance) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Range)
]]
--- @class Range
--- @field a number
--- @field b number
--- @field toRangei Rangei (readonly)
Range = {}

--- @return Range
function Range() end

--- @param a number
--- @param b number
--- @return Range
function Range(a, b) end

--- @return Range
function Range:Copy() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Rangei)
]]
--- @class Rangei
--- @field a integer
--- @field b integer
--- @field toRange Range (readonly)
Rangei = {}

--- @return Rangei
function Rangei() end

--- @param a integer
--- @param b integer
--- @return Rangei
function Rangei(a, b) end

--- @return Rangei
function Rangei:Copy() end

--[[
`Client`
`Server`

A raycast builder — you don't construct it directly, you get one from [`Cast:Ray(origin, direction)`](./cast.mdx#Raycast-Ray-Vec3-startPos-Vec3-ray). Chain filters (`Ignore`/`Force`) and options (`WithColor`/`WithNormal`/…), then call [`:Run()`](#Hit-Run) for the first hit or [`:RunAll()`](#Hit-RunAll) for all hits:

```lua
local hit = Cast:Ray(pos, dir):Ignore(self.obj):Run()
```

[View Documentation](https://docs.atomontage.com/api/Raycast)
]]
--- @class Raycast : InteractionFilter
--- @field Ignore fun(op: Raycast, ignore: Object|Object[]?): Raycast
--- @field Force fun(op: Raycast, force: Object|Object[]?): Raycast
--- @field ForceStatic fun(op: Raycast): Raycast
--- @field IgnoreStatic fun(op: Raycast): Raycast
--- @field ForceTag fun(op: Raycast, tag: string|string[]): Raycast
--- @field IgnoreTag fun(op: Raycast, tag: string|string[]): Raycast
Raycast = {}

--- @return Raycast
function Raycast:WithColor() end

--- @return Raycast
function Raycast:WithNormal() end

--- @return Raycast
function Raycast:WithMaterial() end

--- @return Raycast
function Raycast:Draw() end

--- @return Hit[]
function Raycast:RunAll() end

--- @return Hit
function Raycast:Run() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Rect)
]]
--- @class Rect
--- @field p1 Vec2
--- @field p2 Vec2
--- @field p1x number
--- @field p1y number
--- @field p2x number
--- @field p2y number
--- @field size Vec2 (readonly)
--- @field sizeX number (readonly)
--- @field sizeY number (readonly)
--- @field isValid boolean (readonly)
Rect = {}

--- @return Rect
function Rect() end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return Rect
function Rect(p1, p2) end

--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @return Rect
function Rect(x1, y1, x2, y2) end

--- @param other Rect
--- @return boolean
function Rect:Overlaps(other) end

--- @param other Rect
--- @return boolean
function Rect:Inside(other) end

--- @param x number
--- @return nil
function Rect:MoveX(x) end

--- @param y number
--- @return nil
function Rect:MoveY(y) end

--- @param v Vec2
--- @return nil
function Rect:Move(v) end

--- @param center Vec2
--- @return nil
function Rect:MoveTo(center) end

--- @param p Vec2
--- @return nil
function Rect:ClampPoint(p) end

--- @return Rect
function Rect:Copy() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Recti)
]]
--- @class Recti
--- @field p1 Vec2i
--- @field p2 Vec2i
--- @field size Vec2i (readonly)
--- @field sizeX integer (readonly)
--- @field sizeY integer (readonly)
--- @field isValid boolean (readonly)
Recti = {}

--- @return Recti
function Recti() end

--- @param x1 integer
--- @param y1 integer
--- @param x2 integer
--- @param y2 integer
--- @return Recti
function Recti(x1, y1, x2, y2) end

--- @return Recti
function Recti:Copy() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/RigidBody)
]]
--- @class RigidBody
--- @field active boolean
--- @field activeInHierarchy boolean (readonly)
--- @field object Object (readonly)
--- @field obj Object (readonly)
--- @field isDestroyed boolean (readonly)
--- @field type string (readonly)
--- @field onePerObject boolean (readonly)
--- @field velocity Vec3
--- @field angularVelocity Vec3
--- @field mass number
--- @field massByObject boolean
--- @field volume number
--- @field inertia Vec3
--- @field inertiaByObject boolean
--- @field inertiaMul number
--- @field sleeping boolean
--- @field startSleeping boolean
--- @field allowSleeping boolean
--- @field simulate boolean
--- @field centerOfMass Vec3
--- @field gravityScale number
RigidBody = {}

--- @param a RigidBody
--- @param b RigidBody
--- @return boolean
function RigidBody:__eq(a, b) end

--- @param atPointM Vec3
--- @param impulse Vec3
--- @return nil
function RigidBody:AddImpulse(atPointM, impulse) end

--- @param impulse Vec3
--- @return nil
function RigidBody:AddAngularImpulse(impulse) end

--- @param force Vec3
--- @return nil
function RigidBody:AddForce(force) end

--- @param torque Vec3
--- @return nil
function RigidBody:AddTorque(torque) end

--- @param acceleration Vec3
--- @return nil
function RigidBody:AddAcceleration(acceleration) end

--- @param acceleration Vec3
--- @return nil
function RigidBody:AddAngularAcceleration(acceleration) end

--- @param eventType PhysSimEventType?
--- @return PhysSimEvent[]
function RigidBody:GetCollisions(eventType) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Scene)
]]
--- @class Scene
--- @field voxelDataResourceTemplateSizeThreshold integer
--- @field simulationPaused boolean
--- @field simulationSpeed number
--- @field gravity number
Scene = {}

--[[
Gets the shared [`Material`](./material.mdx) the renderer actually draws with (the cached instance, not a copy) — use it to drive live shader uniforms via [`Material:SetProperty`](./material.mdx#nil-SetProperty-string-name-Vec3Vec4-vec).

[View Documentation](https://docs.atomontage.com/api/Scene#Material-CreateMaterial-string-path)
]]
--- @param path string
--- @return Material?
function Scene:CreateMaterial(path) end

--[[
Simulation time in seconds; use this instead of the sandboxed `os.time`.

[View Documentation](https://docs.atomontage.com/api/Scene#number-GetTime)
]]
--- @return number
function Scene:GetTime() end

--[[

Time passed since the last Update() call. Since time between updates is not constant use this to adjust changes such as movement according to the amount of time that has passed
```lua
function self:Update()
    local speed = 10
    local move = Vec3.right
    --remember to multiply by delta time, since the time passed between each Update() is not constant
    self.obj.pos = self.obj.pos + move * speed * Scene:GetDeltaTime() 
end
```
[View Documentation](https://docs.atomontage.com/api/Scene#number-GetDeltaTime)
]]
--- @return number
function Scene:GetDeltaTime() end

--[[
High-resolution wall-clock time in seconds, for measuring real-time differences.

[View Documentation](https://docs.atomontage.com/api/Scene#number-GetDebugTime)
]]
--- @return number
function Scene:GetDebugTime() end

--- @return integer
function Scene:GetCurrentFrame() end

--[[
What is currently being processed i.e Start, Update, LateUpdate etc.

[View Documentation](https://docs.atomontage.com/api/Scene#string-GetProcessState)
]]
--- @return string
function Scene:GetProcessState() end

--[[
Create an object on server or client. The object is not automatically synced to clients unless its set to.
For naming we recommend to: 
* Use capital case 
* Use spaces between words
* If the object only holds a script component, name the object after the script
* Avoid creating multiple objects with the same name (i.e. by numbering them)
* If the object somehow belongs to a player include the user ID in the name
```lua
local ob = Scene:CreateObject("Player Controller 1")
```

Also see [`Scene:MakeNameValid`](#string-MakeNameValid-string-name)


[View Documentation](https://docs.atomontage.com/api/Scene#Object-CreateObject-string-name-Object-parentObj-boolean-save-boolean-selectInEditor)
]]
--- @param name string?
--- @param parentObj Object?
--- @param save boolean?
--- @param selectInEditor boolean?
--- @return Object
function Scene:CreateObject(name, parentObj, save, selectInEditor) end

--- @param name string
--- @param save boolean
--- @param selectInEditor boolean
--- @return Object
function Scene:CreateObject(name, save, selectInEditor) end

--[[
Flags the object for deletion. The object will not actually be destroyed until the next frame.

[View Documentation](https://docs.atomontage.com/api/Scene#nil-DestroyObject-Object-obj)
]]
--- @param obj Object
--- @return nil
function Scene:DestroyObject(obj) end

--- @param name string
--- @return Object[]
function Scene:GetObjectsByName(name) end

--- @param name string
--- @return Object
function Scene:GetObjectByName(name) end

--- @param id string
--- @return Object
function Scene:GetObjectById(id) end

--- @param typeName string
--- @return boolean
function Scene:IsComponentOnePerObject(typeName) end

--- @return VoxelData?
function Scene:GetStaticVoxelData() end

--- @return Object[]
function Scene:GetRootObjects() end

--- @return Object[]
function Scene:GetAllObjects() end

--- @param obj Object
--- @return Object
function Scene:CloneObject(obj) end

--- @param obj Object
--- @param intoObj Object
--- @return Object
function Scene:CloneObject(obj, intoObj) end

--- @param obj Object
--- @param name string
--- @return Object
function Scene:CloneObject(obj, name) end

--- @param obj Object
--- @param keepPrefabLink boolean
--- @return Object
function Scene:CloneObject(obj, keepPrefabLink) end

--- @param obj Object
--- @param name string
--- @param keepPrefabLink boolean
--- @return Object
function Scene:CloneObject(obj, name, keepPrefabLink) end

--- @param obj Object
--- @param newParentObj Object
--- @return nil
function Scene:MoveObject(obj, newParentObj) end

--- @param obj Object
--- @param siblingObj Object
--- @return nil
function Scene:MoveObjectAfter(obj, siblingObj) end

--- @param obj Object
--- @param siblingObj Object
--- @return nil
function Scene:MoveObjectBefore(obj, siblingObj) end

--- @param obj Object
--- @return nil
function Scene:MoveObjectToRoot(obj) end

--- @param obj Object
--- @param newParentObj Object
--- @return boolean
function Scene:CanMoveObject(obj, newParentObj) end

--[[
Returns the currently active (rendering) camera.

[View Documentation](https://docs.atomontage.com/api/Scene#Camera-GetActiveCamera)
]]
--- @return Camera
function Scene:GetActiveCamera() end

--[[
Makes the given camera the active view.

[View Documentation](https://docs.atomontage.com/api/Scene#nil-SetActiveCamera-Camera-cam)
]]
--- @param cam Camera
--- @return nil
function Scene:SetActiveCamera(cam) end

--- @param db string
--- @return VoxelDB?
function Scene:GetVoxelDB(db) end

--- @param name string
--- @return boolean
function Scene:IsNameValid(name) end

--- @param name string
--- @return string
function Scene:MakeNameValid(name) end

--- @return table
function Scene:GetLogCounters() end

--- @return nil
function Scene:ResetLogCountersDif() end

--- @param obj Object
--- @return boolean
function Scene:ResetPrefab(obj) end

--- @param obj Object
--- @return nil
function Scene:UnpackPrefab(obj) end

--- @return nil
function Scene:RebuildLighting() end

--- @param type string
--- @param algo string
--- @return nil
function Scene:CreateLighting(type, algo) end

--- @return boolean
function Scene:GetProfileScriptsUpdate() end

--[[
Enables or disables collection of the per-script Update timings read by [`GetScriptsProfiling`](#table-GetScriptsProfiling). Toggling it off only stops collection — the accumulated `avg`/`max` survive until cleared by `Server:LuaReset()`.

[View Documentation](https://docs.atomontage.com/api/Scene#nil-SetProfileScriptsUpdate-boolean-value)
]]
--- @param value boolean
--- @return nil
function Scene:SetProfileScriptsUpdate(value) end

--- @return table
function Scene:GetSimpleStats() end

--- @return table
function Scene:GetVDRStats() end

--[[
Returns an array of per-script-**type** rows (summed across all instances of that script), each row being `{name, time, avg, max, cnt}`:

| Field | Meaning |
| - | - |
| `name` | Script type name |
| `time` | Time in the last frame (µs) |
| `avg` | Running average per frame (µs) — use this for stable readings |
| `max` | Worst single frame (µs) |
| `cnt` | Number of live instances of this script |

All times are in microseconds (may come back as comma-formatted strings — parse with `tonumber((tostring(v):gsub(",","")))`). Collection must first be enabled with [`SetProfileScriptsUpdate(true)`](#nil-SetProfileScriptsUpdate-booleanean-value), otherwise the rows stay empty/stale. Only time spent inside `Update`/`LateUpdate` is counted — work in RPC handlers, event listeners, and `Attach`/`Start` is **not** attributed here.

[View Documentation](https://docs.atomontage.com/api/Scene#table-GetScriptsProfiling)
]]
--- @return table
function Scene:GetScriptsProfiling() end

--[[
`Client`
`Server`

Script component. Not to be confused with the actual [lua table instance](ScriptInstance) of the script referred to as `self`.

[View Documentation](https://docs.atomontage.com/api/Script)
]]
--- @class Script
--- @field active boolean
--- @field activeInHierarchy boolean (readonly)
--- @field object Object (readonly)
--- @field obj Object (readonly)
--- @field isDestroyed boolean (readonly)
--- @field type string (readonly)
--- @field onePerObject boolean (readonly)
--- @field instance ScriptInstance
--- @field name string
--- @field luaFile Asset
--- @field luaFilePath string
--- @field file string (deprecated)
--- @field syncToClients boolean
--- @field priority integer
--- @field varsTable VarTable (readonly)
Script = {}

--- @param a Script
--- @param b Script
--- @return boolean
function Script:__eq(a, b) end

--- @param key string
--- @param value any
--- @return nil
function Script:setSerializeVar(key, value) end

--- @param key string
--- @param link AssetLink
--- @return nil
function Script:setSerializeVarAsset(key, link) end

--- @param funcName string
--- @vararg any
--- @return integer
function Script:RPC(funcName, ...) end

--- @return string
function Script:GetNetworkFlow() end

--[[
Microseconds spent in this script's last `Update`/`LateUpdate`, returned as a string (may contain comma separators — parse with `tonumber((tostring(s):gsub(",","")))`). Requires `Scene:SetProfileScriptsUpdate(true)`.

[View Documentation](https://docs.atomontage.com/api/Script#string-GetScriptUpdateTime)
]]
--- @return string
function Script:GetScriptUpdateTime() end

--- @return string
function Script:GetScriptCompileTime() end

--[[
Microseconds of this script's last `Attach` call (string, µs).

[View Documentation](https://docs.atomontage.com/api/Script#string-GetScriptAttachTime)
]]
--- @return string
function Script:GetScriptAttachTime() end

--[[
Microseconds of this script's last `Start` call (string, µs).

[View Documentation](https://docs.atomontage.com/api/Script#string-GetScriptStartTime)
]]
--- @return string
function Script:GetScriptStartTime() end

--[[
`Client`
`Server`

The lua table referred to in a script with `self`
The [`Script`](Script) component attached to the object can be found via `self.component`.

```lua
local self = {}

--Called once on object creation before Start()
function self:Attach()
end

--Called once on object creation after Attach()
function self:Start()
end

--Called once a frame after Start() if the object is active
function self:Update(dt)
end

--Called after Update(), before rendering
function self:LateUpdate()
end

function self:OnActivate()
end

function self:OnDeactivate()
end

--Called when script component or object is destroyed
function self:Detach()
end

return self
```

### Script Lifecycle
The rules:
* The script is loaded and `Attach()` is called right away, even if the object is inactive
* If the object is active `Start()` etc is called one frame later. Currently only on server this may change in the future  
* Each step is done for all applicable objects in a row i.e load all scripts, `Attach()` all objects, `Start()` all active objects
* Never call `OnActivate()` `OnDeactivate()` before `Start()`
* Never call `OnDeactivate()` if `OnActivate()` has not been called

```mermaid
---
title: Script Lifecycle
---
graph TD;
    C([Script component loaded via scene or created at runtime])-->L
    
subgraph Immediately
    L["Load scripts"]-->A;
end
subgraph NextFrame

    A["Attach()"]-- if active -->S;
    S["Start()"]-- if active -->OA;

    OA["OnActivate()"]-- if active -->U;
    OA["OnActivate()"]-- if inactive, next frame -->OD;


    U["Update()"]-->LU;
    LU["LateUpdate()"]--every frame-->U;
    LU["LateUpdate()"]--deactivated, next frame-->OD;

    OD["OnDeactivate()"]--activated, next frame-->OA;
end

    NextFrame -->DEL;

    DEL([Flagged for deletion at any step])-->D

    D["Detach()"] --> *([Destroy Script Component]);
```

[View Documentation](https://docs.atomontage.com/api/ScriptInstance)
]]
--- @class ScriptInstance
--- @field obj Object
--- @field com Script
--- @field onServer boolean Use this to run part of the code only on server or client```lua if self.onServer then    -- do something only on serverend```
--- @field onClient boolean Use this to run part of the code only on server or client```lua if self.onClient then    -- do something only on clientend```import { render } from "react-dom"
--- @field component Script The script component, separate from the lua table
--- @field object Object The object this script is attached to
ScriptInstance = {}

--[[
Called after Update(), before rendering

[View Documentation](https://docs.atomontage.com/api/ScriptInstance#nil-LateUpdate)
]]
--- @return nil
function ScriptInstance:LateUpdate() end

--[[
Call a lua function by name from server to all clients or from one client to server. You may pass parameters. 
You may send tables and basic math types such as `Vec3` or `Quat` but other classes may not be supported.

```lua
function self:Start()
    --remember to sync the script component to clients otherwise there is no one to receive the RPCs
    self.component.syncToClients = true
    self.cam = Scene:GetActiveCamera()

    events.mouseButtonDown.addListener(self, function (button, from)
        if self.onServer then return end
        --if left mouse button pressed create a ray from mouse position and direction
        if button == 1 then
            local mpos = Input:MousePosPerc()
            local tf = self.cam.object
            local pos = tf.pos + tf.forward * 1.5

            --call this function on all clients with these two parameters
            self:RPC("serverRaycast", pos, tf.forward*1000)
        end
    end)

end

function self:serverRaycast(origin, ray)
    assert(self.onServer)
    local hit = Collision():Raycast(origin, ray)[1]
    if hit then
        --make a cross at hit
        deb:cross(hit.pos)
        print("hit")
    end
end
```


[View Documentation](https://docs.atomontage.com/api/ScriptInstance#nil-RPC-string)
]]
--- @param p1 string
--- @vararg any
--- @return nil
function ScriptInstance:RPC(p1, ...) end

--[[
From server call a lua function by name on one specific client

[View Documentation](https://docs.atomontage.com/api/ScriptInstance#nil-RPC-integer-string)
]]
--- @param p1 integer
--- @param p2 string
--- @vararg any
--- @return nil
function ScriptInstance:RPC(p1, p2, ...) end

--[[
Called once on object creation before Start() even if the script is not active

[View Documentation](https://docs.atomontage.com/api/ScriptInstance#nil-Attach)
]]
--- @return nil
function ScriptInstance:Attach() end

--[[
Called when script component or object is destroyed

[View Documentation](https://docs.atomontage.com/api/ScriptInstance#nil-Detach)
]]
--- @return nil
function ScriptInstance:Detach() end

--[[
Called once on object creation after Attach() once the script becomes active

[View Documentation](https://docs.atomontage.com/api/ScriptInstance#nil-Start)
]]
--- @return nil
function ScriptInstance:Start() end

--- @return nil
function ScriptInstance:FixedUpdate() end

--[[
Called once a frame after Start() if the object is active 

[View Documentation](https://docs.atomontage.com/api/ScriptInstance#nil-Update-number-deltaTime)
]]
--- @param deltaTime number
--- @return nil
function ScriptInstance:Update(deltaTime) end

--- @param deltaTime number
--- @return nil
function ScriptInstance:LateUpdate(deltaTime) end

--[[
Script active state changed through object or component. Never called before Start() 

[View Documentation](https://docs.atomontage.com/api/ScriptInstance#nil-OnActivate)
]]
--- @return nil
function ScriptInstance:OnActivate() end

--[[
Script active state changed through object or component. Never called before Start() and OnActivate() 

[View Documentation](https://docs.atomontage.com/api/ScriptInstance#nil-OnDeactivate)
]]
--- @return nil
function ScriptInstance:OnDeactivate() end

--- @return nil
function ScriptInstance:EditorAttach() end

--- @return nil
function ScriptInstance:EditorDetach() end

--- @return nil
function ScriptInstance:EditorStart() end

--- @return nil
function ScriptInstance:EditorFixedUpdate() end

--- @param deltaTime number
--- @return nil
function ScriptInstance:EditorUpdate(deltaTime) end

--- @param deltaTime number
--- @return nil
function ScriptInstance:EditorLateUpdate(deltaTime) end

--- @return nil
function ScriptInstance:EditorOnActivate() end

--- @return nil
function ScriptInstance:EditorOnDeactivate() end

--- @param funcName string
--- @vararg any
--- @return nil
function ScriptInstance:RPC(funcName, ...) end

--[[
---
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Selectbox)
]]
--- @class Selectbox : Widget
--- @field value integer
--- @field valueStr string
--- @field values table
Selectbox = {}

--[[
---
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Separator)
]]
--- @class Separator : Widget
Separator = {}

--[[
`Server`
:::info Server Only
This class is only available on server
:::

[View Documentation](https://docs.atomontage.com/api/Server)
]]
--- @class Server
--- @field clientID integer (readonly)
--- @field settings ServerSceneSettings (readonly)
Server = {}

--[[
True while the server is in Init mode (editing); false in Live mode (play).

[View Documentation](https://docs.atomontage.com/api/Server#boolean-IsInitMode)
]]
--- @return boolean
function Server:IsInitMode() end

--[[
Switch the server into Init mode (editing). If `reloadGeom` is true, voxel geometry is reloaded on the mode change.

[View Documentation](https://docs.atomontage.com/api/Server#nil-EnterInitMode-boolean-reloadGeom)
]]
--- @param reloadGeom boolean?
--- @return nil
function Server:EnterInitMode(reloadGeom) end

--[[
Switch the server into Live mode (play). If `reloadGeom` is true, voxel geometry is reloaded on the mode change.

[View Documentation](https://docs.atomontage.com/api/Server#nil-EnterLiveMode-boolean-reloadGeom)
]]
--- @param reloadGeom boolean?
--- @return nil
function Server:EnterLiveMode(reloadGeom) end

--- @return integer[]
function Server:GetClients() end

--- @param clientID integer
--- @return boolean
function Server:IsVRClient(clientID) end

--- @param clientID integer
--- @return nil
function Server:DisconnectClient(clientID) end

--[[
Re-runs all server Lua scripts from scratch. The entire Lua state is wiped — no tables, globals, or per-script `self` data survive — then every script reloads. Does not reload scene geometry.

[View Documentation](https://docs.atomontage.com/api/Server#nil-LuaReset)
]]
--- @return nil
function Server:LuaReset() end

--- @param prefab Asset
--- @param newName string?
--- @param setSave boolean?
--- @return Object
function Server:InsertPrefab(prefab, newName, setSave) end

--- @param fromObject Object
--- @return Asset
function Server:MakePrefab(fromObject) end

--- @param obj Object
--- @return boolean
function Server:UpdatePrefab(obj) end

--- @return table
function Server:GetInsertPrefabStats() end

--- @param name string
--- @param count integer
--- @return nil
function Server:PreloadVDRsForPrefab(name, count) end

--[[
Saves the whole scene to disk, including voxel geometry.

[View Documentation](https://docs.atomontage.com/api/Server#nil-SaveScene)
]]
--- @return nil
function Server:SaveScene() end

--[[
Saves the object hierarchy and scripts only, without voxel geometry (much faster than `SaveScene`).

[View Documentation](https://docs.atomontage.com/api/Server#nil-SaveSceneHierarchy)
]]
--- @return nil
function Server:SaveSceneHierarchy() end

--[[
Full scene reload — reloads geometry and re-runs scripts. Heavier than [`LuaReset`](#nil-LuaReset).

[View Documentation](https://docs.atomontage.com/api/Server#nil-ReloadScene)
]]
--- @return nil
function Server:ReloadScene() end

--- @param reloadTerrain boolean?
--- @return nil
function Server:ResetSceneToInitState(reloadTerrain) end

--- @return nil
function Server:BackupMontage() end

--- @return integer
function Server:GetMemoryUsage() end

--- @return table
function Server:GetErrors() end

--- @return integer
function Server:GetMaxConnections() end

--- @param url string
--- @param headers table
--- @param data string
--- @param onResponse fun(success:boolean, response:string, statusCode:integer)
--- @return nil
function Server:HttpPost(url, headers, data, onResponse) end

--- @param url string
--- @param headers table
--- @param onResponse fun(success:boolean, response:string, statusCode:integer)
--- @return nil
function Server:HttpGet(url, headers, onResponse) end

--- @param url string
--- @param headers table
--- @param destPathInMontage string
--- @param onResponse fun(success:boolean, response:string, statusCode:integer, asset:Asset?)
--- @return nil
function Server:HttpDownload(url, headers, destPathInMontage, onResponse) end

--- @param clientID integer
--- @return integer
function Server:GetPing(clientID) end

--- @return integer
function Server:GetSceneSendQueueMax() end

--- @param asset Asset
--- @param eventUpdate fun(progress:number)
--- @param eventFinish fun(success:boolean, url:string)
--- @return nil
function Server:MakeUrlForAsset(asset, eventUpdate, eventFinish) end

--- @param target Object
--- @param opts table?
--- @return string
function Server:CaptureObjectThumbnail(target, opts) end

--- @param asset Asset
--- @param opts table?
--- @return string
function Server:MakeThumbnailForAsset(asset, opts) end

--- @return table
function Server:GetStreamingStats() end

--- @return table
function Server:GetVolumeDbInfo() end

--- @return table
function Server:GetVolumeDbStats() end

--- @return table
function Server:GetMainDispatcherStats() end

--- @param collectionId number
--- @return integer
function Server:GetCollectionPreferredLoad(collectionId) end

--- @param collectionId number
--- @param preferredLoad integer
--- @return nil
function Server:SetCollectionPreferredLoad(collectionId, preferredLoad) end

--- @return nil
function Server:GenTestVoxelScene() end

--- @return nil
function Server:GenTestVoxelScene2() end

--- @return nil
function Server:GenTestVoxelScene3() end

--- @param maxZ integer
--- @param maxY integer
--- @param maxX integer
--- @param patternSize integer
--- @return nil
function Server:MakeVoxelScene(maxZ, maxY, maxX, patternSize) end

--- @param minPos Vec3i?
--- @param maxPos Vec3i?
--- @return nil
function Server:RebuildLODsBrightnessMethod(minPos, maxPos) end

--- @param minPos Vec3i?
--- @param maxPos Vec3i?
--- @return boolean
function Server:RebuildLODsGradientMethod(minPos, maxPos) end

--- @param lodI integer
--- @return boolean
function Server:ShowAllNormalsPerVoxel(lodI) end

--- @param lodI integer
--- @return boolean
function Server:ShowAllNormalsPerBT(lodI) end

--- @return nil
function Server:PBRTranscodeToPBR0Ver1() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/ServerComponent)
]]
--- @class ServerComponent
--- @field id string (readonly)
--- @field type integer (readonly)
--- @field typeStr string (readonly)
ServerComponent = {}

--- @return ServerComponent
function ServerComponent() end

--- @param idStr string
--- @param type integer
--- @return ServerComponent
function ServerComponent(idStr, type) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/ServerObject)
]]
--- @class ServerObject
--- @field id string (readonly)
--- @field name string (readonly)
ServerObject = {}

--- @return ServerObject
function ServerObject() end

--- @param idStr string
--- @param name string
--- @return ServerObject
function ServerObject(idStr, name) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/ServerSceneSettings)
]]
--- @class ServerSceneSettings
--- @field voxelCacheWarningCount integer
--- @field enableLuaVoxelOpCallstack boolean
--- @field enableVoxelOpBoundsDraw boolean
--- @field voxelOpBoundsDrawDuration number
--- @field voxelOpBoundsShowVMask boolean
--- @field voxelOpBoundsShowAlbedo boolean
--- @field voxelOpBoundsShowColor boolean
--- @field voxelOpBoundsShowNormal boolean
--- @field voxelOpBoundsShowRoughness boolean
--- @field voxelOpBoundsShowMetallicity boolean
--- @field voxelOpBoundsShowMaterials boolean
--- @field enableVoxelCacheDraw boolean
--- @field enableVoxelObjectBoundsDraw boolean
--- @field voxelCacheDrawDuration number
ServerSceneSettings = {}

--[[
`Client`
`Server`

For [voxel edits](VoxelEdit#Shape-shape), [collisions](Collision#Shape-shape) and [rendering](Mesh#nil-AddShape-Shape-shape-Color-color)

All shapes inherit from this class. It is not meant to be instantiated directly.
* [Box](Box)
* [Sphere](Sphere)
* [Capsule](Capsule)
* [Cylinder](Cylinder)
* [Polygon](Polygon)
* [Polyhedron](Polyhedron)

[View Documentation](https://docs.atomontage.com/api/Shape)
]]
--- @class Shape
Shape = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Sky)
]]
--- @class Sky
--- @field active boolean
--- @field activeInHierarchy boolean (readonly)
--- @field object Object (readonly)
--- @field obj Object (readonly)
--- @field isDestroyed boolean (readonly)
--- @field type string (readonly)
--- @field onePerObject boolean (readonly)
--- @field cloudScale number
--- @field cloudOffset number
--- @field cloudSlope number
--- @field sunAzimuth number
--- @field sunAltitude number
--- @field rayleighCoeff Vec3
--- @field mieCoeff number
--- @field yRotationAngle number
--- @field render boolean
Sky = {}

--- @param a Sky
--- @param b Sky
--- @return boolean
function Sky:__eq(a, b) end

--- @param texturePath string
--- @param textureType SkyTextureType
--- @param color Color
--- @param strength number
--- @return nil
function Sky:LoadSkyTexture(texturePath, textureType, color, strength) end

--[[
---
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Slider)
]]
--- @class Slider : Widget
--- @field value float|int|Vec2
--- @field scalars integer
--- @field sliderType UISliderType
--- @field range Vec2
--- @field integer boolean
Slider = {}

--[[
`Client`
`Server`



[View Documentation](https://docs.atomontage.com/api/Sphere)
]]
--- @class Sphere
--- @field pos Vec3
--- @field radius number
--- @field diameter number
Sphere = {}

--[[
Centered sphere

[View Documentation](https://docs.atomontage.com/api/Sphere#Sphere-Sphere-Vec3-pos-number-radius)
]]
--- @param pos Vec3?
--- @param radius number?
--- @return Sphere
function Sphere(pos, radius) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Texture)
]]
--- @class Texture
Texture = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Time)
]]
--- @class Time
--- @field time number (readonly)
--- @field deltaTime number (readonly)
--- @field dt number (readonly)
--- @field realDeltaTime number (readonly)
--- @field rdt number (readonly)
--- @field appTime number (readonly)
--- @field appFrame number (readonly)
--- @field timeScale number
--- @field unscaledDeltaTime number (readonly)
--- @field udt number (readonly)
--- @field frame number (readonly)
--- @field fixedDeltaTime number (readonly)
--- @field fdt number (readonly)
--- @field fixedFPS number (readonly)
--- @field fixedTime number (readonly)
--- @field fixedFrame number (readonly)
--- @field fps number (readonly)
Time = {}

--[[
---
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/UI)
]]
--- @class UI
--- @field Key table<string,boolean>
--- @field KeyDown table<string,boolean>
--- @field KeyUp table<string,boolean>
--- @field showUI boolean
--- @field alwaysRedraw boolean
--- @field useFrameBuffers boolean
--- @field NoValue any (readonly)
--- @field WidgetTypes table (readonly)
--- @field PropertyNames table (readonly)
--- @field PropertyMode table<string,int> (readonly)
--- @field WidgetEvent table<string,int> (readonly)
--- @field WidgetEventName table<int,string> (readonly)
--- @field PosType table<string,int> (readonly)
--- @field PosTypeList table (readonly)
--- @field SizeType table<string,int> (readonly)
--- @field TextAlign table<string,int> (readonly)
--- @field InputType table<string,int> (readonly)
--- @field InputTypeList table (readonly)
--- @field ButtonType table<string,int> (readonly)
--- @field ButtonTypeName table<int,string> (readonly)
--- @field ButtonTypeList table (readonly)
--- @field SliderType table<string,int> (readonly)
--- @field SliderTypeList table (readonly)
--- @field LabelType table<string,int> (readonly)
--- @field LabelTypeList table (readonly)
--- @field TextureScaleModeList table (readonly)
UI = {}

--- @param parent Widget
--- @param name string?
--- @return Panel
function UI:AddPanel(parent, name) end

--- @param parent Widget
--- @param name string?
--- @return Button
function UI:AddButton(parent, name) end

--- @param parent Widget
--- @param name string?
--- @return ButtonPanel
function UI:AddButtonPanel(parent, name) end

--- @param parent Widget
--- @param name string?
--- @return Label
function UI:AddLabel(parent, name) end

--- @param parent Widget
--- @param name string?
--- @return Header
function UI:AddHeader(parent, name) end

--- @param parent Widget
--- @param name string?
--- @return Checkbox
function UI:AddCheckbox(parent, name) end

--- @param parent Widget
--- @param name string?
--- @return Inputbox
function UI:AddInputbox(parent, name) end

--- @param parent Widget
--- @param name string?
--- @return Vectorbox
function UI:AddVectorbox(parent, name) end

--- @param parent Widget
--- @param name string?
--- @return Slider
function UI:AddSlider(parent, name) end

--- @param parent Widget
--- @param name string?
--- @return Selectbox
function UI:AddSelectbox(parent, name) end

--- @param parent Widget
--- @param name string?
--- @return Colorbox
function UI:AddColorbox(parent, name) end

--- @param parent Widget
--- @param name string?
--- @return Separator
function UI:AddSeparator(parent, name) end

--- @param type string
--- @param parent Widget
--- @param putInside boolean?
--- @param front boolean?
--- @param save boolean?
--- @return Widget
function UI:AddWidget(type, parent, putInside, front, save) end

--- @param widget Widget
--- @return Widget
function UI:CloneWidget(widget) end

--- @param widget Widget
--- @return nil
function UI:DeleteWidget(widget) end

--- @param parent Widget
--- @return nil
function UI:DeleteWidgets(parent) end

--- @return Widget
function UI:SelectedWidget() end

--- @return Widget
function UI:HoveredWidget() end

--- @param widget Widget
--- @return nil
function UI:SelectWidget(widget) end

--- @param widget Widget
--- @return nil
function UI:FocusWidget(widget) end

--- @param widget Widget?
--- @return nil
function UI:SetKeyboardFocus(widget) end

--- @param widget Widget
--- @param target Widget
--- @return boolean
function UI:CanMoveWidgetInto(widget, target) end

--- @param widget Widget
--- @param target Widget
--- @return nil
function UI:MoveWidgetInto(widget, target) end

--- @param widget Widget
--- @param delta integer
--- @return nil
function UI:MoveWidgetBy(widget, delta) end

--- @param saveOrLuaAsset bool|Asset?
--- @return Window
function UI:AddWindow(saveOrLuaAsset) end

--- @param window Window
--- @return nil
function UI:DeleteWindow(window) end

--- @return table
function UI:GetWindows() end

--- @param name string
--- @return Window
function UI:WindowByName(name) end

--- @param name string
--- @param parent Widget
--- @param open boolean?
--- @return Window
function UI:AddSubWindow(name, parent, open) end

--- @param window Window|string
--- @param focus boolean?
--- @param animate boolean?
--- @return nil
function UI:OpenWindow(window, focus, animate) end

--- @param window Window
--- @return nil
function UI:CloseWindow(window) end

--- @param window Window
--- @return nil
function UI:ToggleWindow(window) end

--- @param except Window?
--- @return nil
function UI:CloseAllWindows(except) end

--- @return nil
function UI:ClosePopups() end

--- @param window Window
--- @return nil
function UI:FocusWindow(window) end

--- @param window Window
--- @return nil
function UI:BringToFront(window) end

--- @param window Window
--- @param anchor Widget
--- @param pos Vec2?
--- @param size Vec2?
--- @return nil
function UI:PopupWindow(window, anchor, pos, size) end

--- @param name string
--- @return any
function UI:GetCfg(name) end

--- @return table
function UI:GetCfgAll() end

--- @param scale number
--- @return nil
function UI:SetUserScale(scale) end

--- @return number
function UI:GetUserScale() end

--- @return number
function UI:GetUIScale() end

--- @return table
function UI:GetUIStats() end

--- @return table
function UI:GetUIGlyphs() end

--- @param path string
--- @return nil
function UI:SaveUI(path) end

--- @param path string
--- @return nil
function UI:LoadUI(path) end

--- @return nil
function UI:ResetLua() end

--- @param path string
--- @return nil
function UI:OpenLuaFile(path) end

--- @param window Window
--- @return nil
function UI:OpenWindowLuaFile(window) end

--- @param widget Widget
--- @return nil
function UI:DebugWidgetInfo(widget) end

--- @return table
function UI:DebugFrameInfo() end

--- @return boolean
function UI:GetDebugFrame() end

--- @param enable boolean
--- @return nil
function UI:SetDebugFrame(enable) end

--- @param widget Widget
--- @param func string
--- @param eventType string
--- @return nil
function UI:OpenLuaFileAtWidgetFunction(widget, func, eventType) end

--- @param window Window
--- @return nil
function UI:AutoCreateLuaFileForWindow(window) end

--- @param color Color
--- @return nil
function UI:OnColorPick(color) end

--- @param value any
--- @return bool|any
function UI:IsNoValue(value) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/VVCollision)
]]
--- @class VVCollision
--- @field filter Filter
--- @field traversalStopVxSize number this parameter will be set to smallest voxel that should be traversed (unless it is SUPERNODE - in that case traversal will go deeper)- it can be calculated even for a stretched transformed entity once before its node graph traversal- if a voxel in a node is larger than this, children of the node will be traversed- in top level CD routine(s) the size is in the same coords scale as prim (ie in the provided world (WC) size scale)- in deep CD routines the size is in DC coords scale (it was calculated such if entity has transform)
--- @field detectionGeometryDetail number
--- @field globalVisibleLocalVisible boolean
--- @field globalInvisibleLocalVisible boolean
--- @field globalVisibleLocalInvisible boolean
--- @field globalInvisibleLocalInvisible boolean
--- @field rayPos Vec3
--- @field rayDir Vec3
VVCollision = {}

--- @return VVCollision
function VVCollision() end

--- @param pos Vec3?
--- @param dir Vec3?
--- @return Hit[]
function VVCollision:Raycast(pos, dir) end

--- @param startPos Vec3
--- @param endPos Vec3
--- @return table
function VVCollision:RaycastTo(startPos, endPos) end

--- @param pos1 Vec3
--- @param pos2 Vec3
--- @param radius number
--- @return Hit[]
function VVCollision:CapsuleOverlap(pos1, pos2, radius) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/VarEnum)
]]
--- @class VarEnum
--- @field value string
--- @field values string[] (readonly)
VarEnum = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/VarList)
]]
--- @class VarList
--- @field byVar AnyVar (readonly)
--- @field values AnyVar[] (readonly)
VarList = {}

--- @param value any
--- @return nil
function VarList:Add(value) end

--- @param index number
--- @return nil
function VarList:Remove(index) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/VarTable)
]]
--- @class VarTable
--- @field values table (readonly)
--- @field editOrder string[] (readonly)
--- @field tooltips table (readonly)
VarTable = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Vec2)
]]
--- @class Vec2
--- @operator add(Vec2):Vec2
--- @operator add(number):Vec2
--- @operator add(Vec2i):Vec2
--- @operator sub(Vec2):Vec2
--- @operator sub(number):Vec2
--- @operator sub(Vec2i):Vec2
--- @operator mul(Vec2):Vec2
--- @operator mul(number):Vec2
--- @operator mul(Vec2i):Vec2
--- @operator div(Vec2):Vec2
--- @operator div(number):Vec2
--- @operator div(Vec2i):Vec2
--- @operator unm(Vec2):Vec2
--- @operator mod(Vec2):Vec2
--- @operator mod(number):Vec2
--- @operator mod(Vec2i):Vec2
--- @operator pow(Vec2):Vec2
--- @operator pow(number):Vec2
--- @operator pow(Vec2i):Vec2
--- @field x number
--- @field y number
--- @field zero Vec2 (readonly)
Vec2 = {}

--- @param xy number?
--- @return Vec2
function Vec2(xy) end

--- @param x number
--- @param y number
--- @return Vec2
function Vec2(x, y) end

--- @param v Vec2|Vec2i
--- @return Vec2
function Vec2(v) end

--- @param v Vec3|Vec3i
--- @return Vec2
function Vec2(v) end

--- @param v Vec4|Vec4i
--- @return Vec2
function Vec2(v) end

--- @param a Vec2
--- @param b Vec2
--- @return Vec2
function Vec2:__add(a, b) end

--- @param a number
--- @param b Vec2
--- @return Vec2
function Vec2:__add(a, b) end

--- @param a Vec2
--- @param b number
--- @return Vec2
function Vec2:__add(a, b) end

--- @param a Vec2
--- @param b Vec2i
--- @return Vec2
function Vec2:__add(a, b) end

--- @param a Vec2
--- @param b Vec2
--- @return Vec2
function Vec2:__sub(a, b) end

--- @param a number
--- @param b Vec2
--- @return Vec2
function Vec2:__sub(a, b) end

--- @param a Vec2
--- @param b number
--- @return Vec2
function Vec2:__sub(a, b) end

--- @param a Vec2
--- @param b Vec2i
--- @return Vec2
function Vec2:__sub(a, b) end

--- @param a Vec2
--- @param b Vec2
--- @return Vec2
function Vec2:__mul(a, b) end

--- @param a number
--- @param b Vec2
--- @return Vec2
function Vec2:__mul(a, b) end

--- @param a Vec2
--- @param b number
--- @return Vec2
function Vec2:__mul(a, b) end

--- @param a Vec2
--- @param b Vec2i
--- @return Vec2
function Vec2:__mul(a, b) end

--- @param a Vec2
--- @param b Vec2
--- @return Vec2
function Vec2:__div(a, b) end

--- @param a number
--- @param b Vec2
--- @return Vec2
function Vec2:__div(a, b) end

--- @param a Vec2
--- @param b number
--- @return Vec2
function Vec2:__div(a, b) end

--- @param a Vec2
--- @param b Vec2i
--- @return Vec2
function Vec2:__div(a, b) end

--- @param a Vec2
--- @return Vec2
function Vec2:__unm(a) end

--- @param a Vec2
--- @param b Vec2
--- @return boolean
function Vec2:__eq(a, b) end

--- @param a Vec2
--- @param b Vec2i
--- @return boolean
function Vec2:__eq(a, b) end

--- @param a Vec2
--- @param b Vec2
--- @return Vec2
function Vec2:__mod(a, b) end

--- @param a number
--- @param b Vec2
--- @return Vec2
function Vec2:__mod(a, b) end

--- @param a Vec2
--- @param b number
--- @return Vec2
function Vec2:__mod(a, b) end

--- @param a Vec2
--- @param b Vec2i
--- @return Vec2
function Vec2:__mod(a, b) end

--- @param a Vec2
--- @param b Vec2
--- @return Vec2
function Vec2:__pow(a, b) end

--- @param a number
--- @param b Vec2
--- @return Vec2
function Vec2:__pow(a, b) end

--- @param a Vec2
--- @param b number
--- @return Vec2
function Vec2:__pow(a, b) end

--- @param a Vec2
--- @param b Vec2i
--- @return Vec2
function Vec2:__pow(a, b) end

--- @param a Vec2
--- @return string
function Vec2:__tostring(a) end

--- @return number
function Vec2:Len() end

--- @return number
function Vec2:Length() end

--- @return Vec2
function Vec2:Copy() end

--- @return number
function Vec2:SqrLength() end

--- @return boolean
function Vec2:IsZero() end

--- @return Vec2
function Vec2:GetAbs() end

--- @param minValue number|Vec2
--- @param maxValue number|Vec2
--- @return nil
function Vec2:Clamp(minValue, maxValue) end

--- @param v Vec2|Vec2i
--- @return number
function Vec2:Dot(v) end

--- @return boolean
function Vec2:IsAnyNaN() end

--- @param b Vec2
--- @param t number
--- @return Vec2
function Vec2:Lerp(b, t) end

--- @return nil
function Vec2:Normalize() end

--- @return Vec2
function Vec2:GetNormalized() end

--- @return nil
function Vec2:Ceil() end

--- @return Vec2
function Vec2:GetCeiled() end

--- @return nil
function Vec2:Floor() end

--- @return Vec2
function Vec2:GetFloored() end

--- @return nil
function Vec2:Round() end

--- @return Vec2
function Vec2:GetRounded() end

--- @param v Vec2
--- @return number
function Vec2:DistanceTo(v) end

--- @return number
function Vec2:GetAngle() end

--- @param angle number
--- @return nil
function Vec2:Rotate(angle) end

--- @param angle number
--- @return Vec2
function Vec2:GetRotated(angle) end

--- @param target Vec2
--- @param outVelocity Vec2
--- @param smoothTime number
--- @param deltaTime number
--- @param maxSpeed number?
--- @return nil
function Vec2:SmoothDamp(target, outVelocity, smoothTime, deltaTime, maxSpeed) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Vec2i)
]]
--- @class Vec2i
--- @operator add(Vec2i):Vec2i
--- @operator add(number):Vec2i
--- @operator add(Vec2):Vec2i
--- @operator sub(Vec2i):Vec2i
--- @operator sub(number):Vec2i
--- @operator sub(Vec2):Vec2i
--- @operator mul(Vec2i):Vec2i
--- @operator mul(number):Vec2i
--- @operator mul(Vec2):Vec2i
--- @operator div(Vec2i):Vec2i
--- @operator div(number):Vec2i
--- @operator div(Vec2):Vec2i
--- @operator unm(Vec2i):Vec2i
--- @operator band(Vec2i):Vec2i
--- @operator band(integer):Vec2i
--- @operator bor(Vec2i):Vec2i
--- @operator bor(integer):Vec2i
--- @operator bxor(Vec2i):Vec2i
--- @operator bxor(integer):Vec2i
--- @operator bnot(Vec2i):Vec2i
--- @operator shl(Vec2i):Vec2i
--- @operator shl(integer):Vec2i
--- @operator shr(Vec2i):Vec2i
--- @operator shr(integer):Vec2i
--- @field x number
--- @field y number
--- @field zero Vec2i (readonly)
Vec2i = {}

--- @param xy number?
--- @return nil
function Vec2i:Vec2i(xy) end

--- @param x number
--- @param y number
--- @return nil
function Vec2i:Vec2i(x, y) end

--- @param v Vec2|Vec2i
--- @return nil
function Vec2i:Vec2i(v) end

--- @param v Vec3|Vec3i
--- @return nil
function Vec2i:Vec2i(v) end

--- @param v Vec4|Vec4i
--- @return nil
function Vec2i:Vec2i(v) end

--- @param a Vec2i
--- @param b Vec2i
--- @return Vec2i
function Vec2i:__add(a, b) end

--- @param a number
--- @param b Vec2i
--- @return Vec2i
function Vec2i:__add(a, b) end

--- @param a Vec2i
--- @param b number
--- @return Vec2i
function Vec2i:__add(a, b) end

--- @param a Vec2i
--- @param b Vec2
--- @return Vec2i
function Vec2i:__add(a, b) end

--- @param a Vec2i
--- @param b Vec2i
--- @return Vec2i
function Vec2i:__sub(a, b) end

--- @param a number
--- @param b Vec2i
--- @return Vec2i
function Vec2i:__sub(a, b) end

--- @param a Vec2i
--- @param b number
--- @return Vec2i
function Vec2i:__sub(a, b) end

--- @param a Vec2i
--- @param b Vec2
--- @return Vec2i
function Vec2i:__sub(a, b) end

--- @param a Vec2i
--- @param b Vec2i
--- @return Vec2i
function Vec2i:__mul(a, b) end

--- @param a number
--- @param b Vec2i
--- @return Vec2i
function Vec2i:__mul(a, b) end

--- @param a Vec2i
--- @param b number
--- @return Vec2i
function Vec2i:__mul(a, b) end

--- @param a Vec2i
--- @param b Vec2
--- @return Vec2i
function Vec2i:__mul(a, b) end

--- @param a Vec2i
--- @param b Vec2i
--- @return Vec2i
function Vec2i:__div(a, b) end

--- @param a number
--- @param b Vec2i
--- @return Vec2i
function Vec2i:__div(a, b) end

--- @param a Vec2i
--- @param b number
--- @return Vec2i
function Vec2i:__div(a, b) end

--- @param a Vec2i
--- @param b Vec2
--- @return Vec2i
function Vec2i:__div(a, b) end

--- @param a Vec2i
--- @return Vec2i
function Vec2i:__unm(a) end

--- @param a Vec2i
--- @param b Vec2i
--- @return boolean
function Vec2i:__eq(a, b) end

--- @param a Vec2i
--- @param b Vec2i
--- @return Vec2i
function Vec2i:__band(a, b) end

--- @param a Vec2i
--- @param b integer
--- @return Vec2i
function Vec2i:__band(a, b) end

--- @param a integer
--- @param b Vec2i
--- @return Vec2i
function Vec2i:__band(a, b) end

--- @param a Vec2i
--- @param b Vec2i
--- @return Vec2i
function Vec2i:__bor(a, b) end

--- @param a Vec2i
--- @param b integer
--- @return Vec2i
function Vec2i:__bor(a, b) end

--- @param a integer
--- @param b Vec2i
--- @return Vec2i
function Vec2i:__bor(a, b) end

--- @param a Vec2i
--- @param b Vec2i
--- @return Vec2i
function Vec2i:__bxor(a, b) end

--- @param a Vec2i
--- @param b integer
--- @return Vec2i
function Vec2i:__bxor(a, b) end

--- @param a integer
--- @param b Vec2i
--- @return Vec2i
function Vec2i:__bxor(a, b) end

--- @param a Vec2i
--- @return Vec2i
function Vec2i:__bnot(a) end

--- @param a Vec2i
--- @param b Vec2i
--- @return Vec2i
function Vec2i:__shl(a, b) end

--- @param a Vec2i
--- @param b integer
--- @return Vec2i
function Vec2i:__shl(a, b) end

--- @param a integer
--- @param b Vec2i
--- @return Vec2i
function Vec2i:__shl(a, b) end

--- @param a Vec2i
--- @param b Vec2i
--- @return Vec2i
function Vec2i:__shr(a, b) end

--- @param a Vec2i
--- @param b integer
--- @return Vec2i
function Vec2i:__shr(a, b) end

--- @param a integer
--- @param b Vec2i
--- @return Vec2i
function Vec2i:__shr(a, b) end

--- @param a Vec2i
--- @return string
function Vec2i:__tostring(a) end

--- @return number
function Vec2i:Len() end

--- @return number
function Vec2i:Length() end

--- @return number
function Vec2i:SqrLength() end

--- @return Vec2i
function Vec2i:Copy() end

--- @return boolean
function Vec2i:IsZero() end

--- @return Vec2i
function Vec2i:GetAbs() end

--- @param minValue number|Vec2i
--- @param maxValue number|Vec2i
--- @return nil
function Vec2i:Clamp(minValue, maxValue) end

--- @param v Vec2i|Vec2
--- @return number
function Vec2i:Dot(v) end

--[[
`Client`
`Server`

3D vectors and points.

[View Documentation](https://docs.atomontage.com/api/Vec3)
]]
--- @class Vec3
--- @operator add(Vec3):Vec3
--- @operator add(number):Vec3
--- @operator sub(Vec3):Vec3
--- @operator sub(number):Vec3
--- @operator mul(Vec3):Vec3
--- @operator mul(number):Vec3
--- @operator div(Vec3):Vec3
--- @operator div(number):Vec3
--- @operator pow(Vec3):Vec3
--- @operator pow(number):Vec3
--- @operator mod(Vec3):Vec3
--- @operator mod(number):Vec3
--- @operator unm(Vec3):Vec3
--- @field x number
--- @field y number
--- @field z number
--- @field zero Vec3 (readonly) Vec3(0,0,0)
--- @field up Vec3 (readonly) Vec3(0,1,0)
--- @field right Vec3 (readonly) Vec3(1,0,0)
--- @field forward Vec3 (readonly) Vec3(0,0,-1)
--- @field down Vec3 (readonly) Vec3(0,-1,0)
--- @field left Vec3 (readonly) Vec3(-1,0,0)
--- @field back Vec3 (readonly) Vec3(0,0,1)
Vec3 = {}

--- @param xyz number?
--- @return Vec3
function Vec3(xyz) end

--- @param x number
--- @param y number
--- @param z number
--- @return Vec3
function Vec3(x, y, z) end

--- @param xy Vec2
--- @param z number
--- @return Vec3
function Vec3(xy, z) end

--- @param x number
--- @param yz Vec2
--- @return Vec3
function Vec3(x, yz) end

--- @param vec3 Vec3
--- @return Vec3
function Vec3(vec3) end

--- @param vec4 Vec4
--- @return Vec3
function Vec3(vec4) end

--- @param a Vec3
--- @param b Vec3
--- @return Vec3
function Vec3:__add(a, b) end

--- @param a number
--- @param b Vec3
--- @return Vec3
function Vec3:__add(a, b) end

--- @param a Vec3
--- @param b number
--- @return Vec3
function Vec3:__add(a, b) end

--- @param a Vec3
--- @param b Vec3
--- @return Vec3
function Vec3:__sub(a, b) end

--- @param a number
--- @param b Vec3
--- @return Vec3
function Vec3:__sub(a, b) end

--- @param a Vec3
--- @param b number
--- @return Vec3
function Vec3:__sub(a, b) end

--- @param a Vec3
--- @param b Vec3
--- @return Vec3
function Vec3:__mul(a, b) end

--- @param a number
--- @param b Vec3
--- @return Vec3
function Vec3:__mul(a, b) end

--- @param a Vec3
--- @param b number
--- @return Vec3
function Vec3:__mul(a, b) end

--- @param a Vec3
--- @param b Vec3
--- @return Vec3
function Vec3:__div(a, b) end

--- @param a number
--- @param b Vec3
--- @return Vec3
function Vec3:__div(a, b) end

--- @param a Vec3
--- @param b number
--- @return Vec3
function Vec3:__div(a, b) end

--- @param a Vec3
--- @param b Vec3
--- @return Vec3
function Vec3:__pow(a, b) end

--- @param a number
--- @param b Vec3
--- @return Vec3
function Vec3:__pow(a, b) end

--- @param a Vec3
--- @param b number
--- @return Vec3
function Vec3:__pow(a, b) end

--- @param a Vec3
--- @param b Vec3
--- @return Vec3
function Vec3:__mod(a, b) end

--- @param a number
--- @param b Vec3
--- @return Vec3
function Vec3:__mod(a, b) end

--- @param a Vec3
--- @param b number
--- @return Vec3
function Vec3:__mod(a, b) end

--- @param a Vec3
--- @return Vec3
function Vec3:__unm(a) end

--- @param a Vec3
--- @param b Vec3
--- @return boolean
function Vec3:__eq(a, b) end

--- @param v Vec3
--- @param i integer
--- @return number
function Vec3:__index(v, i) end

--- @param v Vec3
--- @param i string
--- @return number
function Vec3:__index(v, i) end

--- @param v Vec3
--- @param i integer
--- @param value number
--- @return nil
function Vec3:__newindex(v, i, value) end

--- @param v Vec3
--- @param i string
--- @param value number
--- @return nil
function Vec3:__newindex(v, i, value) end

--- @param a Vec3
--- @return string
function Vec3:__tostring(a) end

--- @return number
function Vec3:Len() end

--- @return number
function Vec3:LenSqr() end

--- @return number
function Vec3:Length() end

--- @return number
function Vec3:SqrLength() end

--- @return Vec3
function Vec3:Copy() end

--- @return boolean
function Vec3:IsZero() end

--- @return boolean
function Vec3:IsAnyNaN() end

--- @param v Vec3
--- @return boolean
function Vec3.IsAnyNaN(v) end

--- @return Vec3
function Vec3:GetAbs() end

--- @param min number|Vec3
--- @param max number|Vec3
--- @return nil
function Vec3:Clamp(min, max) end

--- @param vec Vec3|Vec3i
--- @return number
function Vec3:Dot(vec) end

--- @param x number
--- @param y number
--- @param z number
--- @return nil
function Vec3:Set(x, y, z) end

--- @param other Vec3
--- @return nil
function Vec3:SetFrom(other) end

--- @param b Vec3
--- @param t number
--- @return Vec3
function Vec3:Lerp(b, t) end

--- @param a Vec3
--- @param b Vec3
--- @param t number
--- @return Vec3
function Vec3.Lerp(a, b, t) end

--- @return nil
function Vec3:Normalize() end

--- @return Vec3
function Vec3:GetNormalized() end

--- @return nil
function Vec3:Ceil() end

--- @return Vec3
function Vec3:GetCeiled() end

--- @return nil
function Vec3:Floor() end

--- @return Vec3
function Vec3:GetFloored() end

--- @return nil
function Vec3:Round() end

--- @return Vec3
function Vec3:GetRounded() end

--- @return number
function Vec3:Min() end

--- @return number
function Vec3:Max() end

--- @param point Vec3
--- @return number
function Vec3:DistanceTo(point) end

--- @param point Vec3
--- @return number
function Vec3:Dist(point) end

--- @param point Vec3
--- @return number
function Vec3:DistSqr(point) end

--- @return nil
function Vec3:ToDeg() end

--- @return nil
function Vec3:ToRad() end

--- @param vec Vec3|Vec3i
--- @return Vec3
function Vec3:Cross(vec) end

--- @param target Vec3
--- @param outVelocity Vec3
--- @param smoothTime number
--- @param deltaTime number
--- @param maxSpeed number?
--- @return nil
function Vec3:SmoothDamp(target, outVelocity, smoothTime, deltaTime, maxSpeed) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Vec3i)
]]
--- @class Vec3i
--- @operator add(Vec3i):Vec3i
--- @operator add(integer):Vec3i
--- @operator sub(Vec3i):Vec3i
--- @operator sub(integer):Vec3i
--- @operator mul(Vec3i):Vec3i
--- @operator mul(integer):Vec3i
--- @operator div(Vec3i):Vec3i
--- @operator div(integer):Vec3i
--- @operator pow(Vec3i):Vec3i
--- @operator pow(integer):Vec3i
--- @operator mod(Vec3i):Vec3i
--- @operator mod(integer):Vec3i
--- @operator band(Vec3i):Vec3i
--- @operator band(integer):Vec3i
--- @operator bor(Vec3i):Vec3i
--- @operator bor(integer):Vec3i
--- @operator bxor(Vec3i):Vec3i
--- @operator bxor(integer):Vec3i
--- @operator bnot(Vec3i):Vec3i
--- @operator shl(Vec3i):Vec3i
--- @operator shl(integer):Vec3i
--- @operator shr(Vec3i):Vec3i
--- @operator shr(integer):Vec3i
--- @operator unm(Vec3i):Vec3i
--- @field x integer
--- @field y integer
--- @field z integer
Vec3i = {}

--- @param xyz integer?
--- @return nil
function Vec3i:Vec3i(xyz) end

--- @param x integer
--- @param y integer
--- @param z integer
--- @return nil
function Vec3i:Vec3i(x, y, z) end

--- @param xy Vec2i
--- @param z integer
--- @return nil
function Vec3i:Vec3i(xy, z) end

--- @param x integer
--- @param yz Vec2i
--- @return nil
function Vec3i:Vec3i(x, yz) end

--- @param vec3 Vec3i
--- @return nil
function Vec3i:Vec3i(vec3) end

--- @param vec4 Vec4i
--- @return nil
function Vec3i:Vec3i(vec4) end

--- @param a Vec3i
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__add(a, b) end

--- @param a integer
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__add(a, b) end

--- @param a Vec3i
--- @param b integer
--- @return Vec3i
function Vec3i:__add(a, b) end

--- @param a Vec3i
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__sub(a, b) end

--- @param a integer
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__sub(a, b) end

--- @param a Vec3i
--- @param b integer
--- @return Vec3i
function Vec3i:__sub(a, b) end

--- @param a Vec3i
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__mul(a, b) end

--- @param a integer
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__mul(a, b) end

--- @param a Vec3i
--- @param b integer
--- @return Vec3i
function Vec3i:__mul(a, b) end

--- @param a Vec3i
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__div(a, b) end

--- @param a integer
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__div(a, b) end

--- @param a Vec3i
--- @param b integer
--- @return Vec3i
function Vec3i:__div(a, b) end

--- @param a Vec3i
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__pow(a, b) end

--- @param a integer
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__pow(a, b) end

--- @param a Vec3i
--- @param b integer
--- @return Vec3i
function Vec3i:__pow(a, b) end

--- @param a Vec3i
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__mod(a, b) end

--- @param a integer
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__mod(a, b) end

--- @param a Vec3i
--- @param b integer
--- @return Vec3i
function Vec3i:__mod(a, b) end

--- @param a Vec3i
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__band(a, b) end

--- @param a Vec3i
--- @param b integer
--- @return Vec3i
function Vec3i:__band(a, b) end

--- @param a integer
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__band(a, b) end

--- @param a Vec3i
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__bor(a, b) end

--- @param a Vec3i
--- @param b integer
--- @return Vec3i
function Vec3i:__bor(a, b) end

--- @param a integer
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__bor(a, b) end

--- @param a Vec3i
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__bxor(a, b) end

--- @param a Vec3i
--- @param b integer
--- @return Vec3i
function Vec3i:__bxor(a, b) end

--- @param a integer
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__bxor(a, b) end

--- @param a Vec3i
--- @return Vec3i
function Vec3i:__bnot(a) end

--- @param a Vec3i
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__shl(a, b) end

--- @param a Vec3i
--- @param b integer
--- @return Vec3i
function Vec3i:__shl(a, b) end

--- @param a integer
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__shl(a, b) end

--- @param a Vec3i
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__shr(a, b) end

--- @param a Vec3i
--- @param b integer
--- @return Vec3i
function Vec3i:__shr(a, b) end

--- @param a integer
--- @param b Vec3i
--- @return Vec3i
function Vec3i:__shr(a, b) end

--- @param a Vec3i
--- @return Vec3i
function Vec3i:__unm(a) end

--- @param a Vec3i
--- @param b Vec3i
--- @return boolean
function Vec3i:__eq(a, b) end

--- @param v Vec3i
--- @param i integer
--- @return integer
function Vec3i:__index(v, i) end

--- @param v Vec3i
--- @param i integer
--- @param value integer
--- @return nil
function Vec3i:__newindex(v, i, value) end

--- @param a Vec3i
--- @return string
function Vec3i:__tostring(a) end

--- @return integer
function Vec3i:Len() end

--- @return integer
function Vec3i:Length() end

--- @return integer
function Vec3i:SqrLength() end

--- @return boolean
function Vec3i:IsZero() end

--- @return Vec3i
function Vec3i:Copy() end

--- @return Vec3i
function Vec3i:GetAbs() end

--- @return integer
function Vec3i:Min() end

--- @return integer
function Vec3i:Max() end

--- @param min number|Vec3i
--- @param max number|Vec3i
--- @return nil
function Vec3i:Clamp(min, max) end

--- @param vec Vec3i|Vec3
--- @return integer
function Vec3i:Dot(vec) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Vec4)
]]
--- @class Vec4
--- @operator add(Vec4):Vec4
--- @operator add(number):Vec4
--- @operator sub(Vec4):Vec4
--- @operator sub(number):Vec4
--- @operator mul(Vec4):Vec4
--- @operator mul(number):Vec4
--- @operator div(Vec4):Vec4
--- @operator div(number):Vec4
--- @operator mod(Vec4):Vec4
--- @operator mod(number):Vec4
--- @operator pow(Vec4):Vec4
--- @operator pow(number):Vec4
--- @operator unm(Vec4):Vec4
--- @field x number
--- @field y number
--- @field z number
--- @field w number
--- @field zero Vec4 (readonly)
--- @field up Vec4 (readonly)
--- @field right Vec4 (readonly)
--- @field forward Vec4 (readonly)
--- @field down Vec4 (readonly)
--- @field left Vec4 (readonly)
--- @field back Vec4 (readonly)
Vec4 = {}

--- @param value number?
--- @return Vec4
function Vec4(value) end

--- @param v Vec4
--- @return Vec4
function Vec4(v) end

--- @param x number
--- @param y number
--- @param z number
--- @param w number
--- @return Vec4
function Vec4(x, y, z, w) end

--- @param xyz Vec3
--- @param w number
--- @return Vec4
function Vec4(xyz, w) end

--- @param x number
--- @param yzw Vec3
--- @return Vec4
function Vec4(x, yzw) end

--- @param xy Vec2
--- @param z number
--- @param w number
--- @return Vec4
function Vec4(xy, z, w) end

--- @param x number
--- @param yz Vec2
--- @param w number
--- @return Vec4
function Vec4(x, yz, w) end

--- @param x number
--- @param y number
--- @param zw Vec2
--- @return Vec4
function Vec4(x, y, zw) end

--- @param xy Vec2
--- @param zw Vec2
--- @return Vec4
function Vec4(xy, zw) end

--- @param a Vec4
--- @param b Vec4
--- @return Vec4
function Vec4:__add(a, b) end

--- @param a number
--- @param b Vec4
--- @return Vec4
function Vec4:__add(a, b) end

--- @param a Vec4
--- @param b number
--- @return Vec4
function Vec4:__add(a, b) end

--- @param a Vec4
--- @param b Vec4
--- @return Vec4
function Vec4:__sub(a, b) end

--- @param a number
--- @param b Vec4
--- @return Vec4
function Vec4:__sub(a, b) end

--- @param a Vec4
--- @param b number
--- @return Vec4
function Vec4:__sub(a, b) end

--- @param a Vec4
--- @param b Vec4
--- @return Vec4
function Vec4:__mul(a, b) end

--- @param a number
--- @param b Vec4
--- @return Vec4
function Vec4:__mul(a, b) end

--- @param a Vec4
--- @param b number
--- @return Vec4
function Vec4:__mul(a, b) end

--- @param a Vec4
--- @param b Vec4
--- @return Vec4
function Vec4:__div(a, b) end

--- @param a number
--- @param b Vec4
--- @return Vec4
function Vec4:__div(a, b) end

--- @param a Vec4
--- @param b number
--- @return Vec4
function Vec4:__div(a, b) end

--- @param a Vec4
--- @param b Vec4
--- @return Vec4
function Vec4:__mod(a, b) end

--- @param a number
--- @param b Vec4
--- @return Vec4
function Vec4:__mod(a, b) end

--- @param a Vec4
--- @param b number
--- @return Vec4
function Vec4:__mod(a, b) end

--- @param a Vec4
--- @param b Vec4
--- @return Vec4
function Vec4:__pow(a, b) end

--- @param a number
--- @param b Vec4
--- @return Vec4
function Vec4:__pow(a, b) end

--- @param a Vec4
--- @param b number
--- @return Vec4
function Vec4:__pow(a, b) end

--- @param a Vec4
--- @return Vec4
function Vec4:__unm(a) end

--- @param a Vec4
--- @param b Vec4
--- @return boolean
function Vec4:__eq(a, b) end

--- @param a Vec4
--- @return string
function Vec4:__tostring(a) end

--- @param v Vec4
--- @param i integer
--- @return number
function Vec4:__index(v, i) end

--- @param v Vec4
--- @param i integer
--- @param value number
--- @return nil
function Vec4:__newindex(v, i, value) end

--- @param x number
--- @param y number
--- @param z number
--- @param w number
--- @return nil
function Vec4:Set(x, y, z, w) end

--- @return number
function Vec4:Length() end

--- @return number
function Vec4:SqrLength() end

--- @return boolean
function Vec4:IsZero() end

--- @return Vec4
function Vec4:GetAbs() end

--- @return Vec4
function Vec4:Copy() end

--- @param minValue number|Vec4
--- @param maxValue number|Vec4
--- @return nil
function Vec4:Clamp(minValue, maxValue) end

--- @param other Vec4
--- @return number
function Vec4:Dot(other) end

--[[
Builds a plane as a Vec4 from a point on it and its outward normal direction (e.g. for `Polyhedron:AddPlane`).

[View Documentation](https://docs.atomontage.com/api/Vec4#Vec4-MakePlane-Vec3-pos-Vec3-dir)
]]
--- @param pos Vec3
--- @param dir Vec3
--- @return Vec4
function Vec4:MakePlane(pos, dir) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Vec4i)
]]
--- @class Vec4i
--- @operator add(Vec4i):Vec4i
--- @operator add(integer):Vec4i
--- @operator sub(Vec4i):Vec4i
--- @operator sub(integer):Vec4i
--- @operator mul(Vec4i):Vec4i
--- @operator mul(integer):Vec4i
--- @operator div(Vec4i):Vec4i
--- @operator div(integer):Vec4i
--- @operator mod(Vec4i):Vec4i
--- @operator mod(integer):Vec4i
--- @operator pow(Vec4i):Vec4i
--- @operator pow(integer):Vec4i
--- @operator unm(Vec4i):Vec4i
--- @field x integer
--- @field y integer
--- @field z integer
--- @field w integer
--- @field zero Vec4i (readonly)
--- @field up Vec4i (readonly)
--- @field right Vec4i (readonly)
--- @field forward Vec4i (readonly)
--- @field down Vec4i (readonly)
--- @field left Vec4i (readonly)
--- @field back Vec4i (readonly)
Vec4i = {}

--- @param value integer?
--- @return nil
function Vec4i:Vec4i(value) end

--- @param v Vec4i
--- @return nil
function Vec4i:Vec4i(v) end

--- @param x integer
--- @param y integer
--- @param z integer
--- @param w integer
--- @return nil
function Vec4i:Vec4i(x, y, z, w) end

--- @param a Vec4i
--- @param b Vec4i
--- @return Vec4i
function Vec4i:__add(a, b) end

--- @param a integer
--- @param b Vec4i
--- @return Vec4i
function Vec4i:__add(a, b) end

--- @param a Vec4i
--- @param b integer
--- @return Vec4i
function Vec4i:__add(a, b) end

--- @param a Vec4i
--- @param b Vec4i
--- @return Vec4i
function Vec4i:__sub(a, b) end

--- @param a integer
--- @param b Vec4i
--- @return Vec4i
function Vec4i:__sub(a, b) end

--- @param a Vec4i
--- @param b integer
--- @return Vec4i
function Vec4i:__sub(a, b) end

--- @param a Vec4i
--- @param b Vec4i
--- @return Vec4i
function Vec4i:__mul(a, b) end

--- @param a integer
--- @param b Vec4i
--- @return Vec4i
function Vec4i:__mul(a, b) end

--- @param a Vec4i
--- @param b integer
--- @return Vec4i
function Vec4i:__mul(a, b) end

--- @param a Vec4i
--- @param b Vec4i
--- @return Vec4i
function Vec4i:__div(a, b) end

--- @param a integer
--- @param b Vec4i
--- @return Vec4i
function Vec4i:__div(a, b) end

--- @param a Vec4i
--- @param b integer
--- @return Vec4i
function Vec4i:__div(a, b) end

--- @param a Vec4i
--- @param b Vec4i
--- @return Vec4i
function Vec4i:__mod(a, b) end

--- @param a integer
--- @param b Vec4i
--- @return Vec4i
function Vec4i:__mod(a, b) end

--- @param a Vec4i
--- @param b integer
--- @return Vec4i
function Vec4i:__mod(a, b) end

--- @param a Vec4i
--- @param b Vec4i
--- @return Vec4i
function Vec4i:__pow(a, b) end

--- @param a integer
--- @param b Vec4i
--- @return Vec4i
function Vec4i:__pow(a, b) end

--- @param a Vec4i
--- @param b integer
--- @return Vec4i
function Vec4i:__pow(a, b) end

--- @param a Vec4i
--- @return Vec4i
function Vec4i:__unm(a) end

--- @param a Vec4i
--- @param b Vec4i
--- @return boolean
function Vec4i:__eq(a, b) end

--- @param a Vec4i
--- @return string
function Vec4i:__tostring(a) end

--- @param v Vec4i
--- @param i integer
--- @return integer
function Vec4i:__index(v, i) end

--- @param v Vec4i
--- @param i integer
--- @param value integer
--- @return nil
function Vec4i:__newindex(v, i, value) end

--- @return integer
function Vec4i:Length() end

--- @return integer
function Vec4i:SqrLength() end

--- @return boolean
function Vec4i:IsZero() end

--- @return Vec4i
function Vec4i:GetAbs() end

--- @return Vec4i
function Vec4i:Copy() end

--- @param minValue number|Vec4i
--- @param maxValue number|Vec4i
--- @return nil
function Vec4i:Clamp(minValue, maxValue) end

--- @param other Vec4i
--- @return integer
function Vec4i:Dot(other) end

--[[
---
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Vectorbox)
]]
--- @class Vectorbox : Widget
--- @field scalars integer
--- @field integer boolean
--- @field value Vec2|Vec3|Vec4|Vec2i|Vec3i|Vec4i
--- @field inputsPadding Vec2
--- @field inputsPaddingMode UIPropertyMode
--- @field decimals integer
Vectorbox = {}

--[[
`Client`
`Server`

`Vox` is the entry point for all voxel edits. Each method returns an operation *builder* — [`OpAdd`](./opAdd.mdx), [`OpRemove`](./opRemove.mdx), [`OpPaint`](./opPaint.mdx), [`OpCopy`](./opCopy.mdx), [`OpSubtract`](./opSubtract.mdx) — which you configure with a fluent chain and finalize with `:Run()`:

```lua
Vox:Add(Sphere(pos, 2))   -- operation + shape (see Shape)
   :Force(ob)             -- limit to one object (by default ops affect everything)
   :Run()                 -- schedules the edit; it commits a frame or more later
```

`:Run()` is asynchronous — chain [`:OnFinished(fn)`](./opBase.mdx#nil-OnFinished-fun-onFinished) to run code once the edit actually lands. Full walkthrough: [Voxel Edits](/manual/scripting/examples/Voxel-Edits).

[View Documentation](https://docs.atomontage.com/api/Vox)
]]
--- @class Vox
Vox = {}

--[[
Remove a shape from something

[View Documentation](https://docs.atomontage.com/api/Vox#OpRemove-Remove-opTarget-target)
]]
--- @param target opTarget
--- @return OpRemove
function Vox:Remove(target) end

--[[
Add voxels. If Vox:Add is called with just a shape (no Force/ForceTag), every Run() does a
collision overlap at the current shape to discover what to add onto — this is required since
objects can move between runs. If a force list is set (via object target, Force, or ForceTag),
the overlap is skipped and filter.forceList is used directly. Prefer Force() when the target
is known; it's cheaper and avoids per-Run allocation churn from the overlap query.

[View Documentation](https://docs.atomontage.com/api/Vox#OpAdd-Add-opTarget-target)
]]
--- @param target opTarget
--- @return OpAdd
function Vox:Add(target) end

--[[
Change the color of surface voxels

[View Documentation](https://docs.atomontage.com/api/Vox#OpPaint-Paint-opTarget-target)
]]
--- @param target opTarget
--- @return OpPaint
function Vox:Paint(target) end

--[[
Copy voxels from somewhere to an object

[View Documentation](https://docs.atomontage.com/api/Vox#OpCopy-Copy-opTarget-target)
]]
--- @param target opTarget
--- @return OpCopy
function Vox:Copy(target) end

--[[
Subtract the exact shape of the object passed from something

[View Documentation](https://docs.atomontage.com/api/Vox#OpSubtract-Subtract-ObjectObject-subtractObject)
]]
--- @param subtractObject Object|Object[]
--- @return OpSubtract
function Vox:Subtract(subtractObject) end

--- @param target opTarget
--- @return OpInflate
function Vox:Inflate(target) end

--- @param target opTarget
--- @return OpDeflate
function Vox:Deflate(target) end

--- @param target opTarget
--- @return OpSmoothen
function Vox:Smoothen(target) end

--[[
`Server`

:::warning Deprecated
The voxel edit functions in this class are old and may not correctly work. Instead use [Vox](/docs/manual/20-scripting/examples/Voxel-Edits.mdx).
:::

[View Documentation](https://docs.atomontage.com/api/VoxelDB)
]]
--- @class VoxelDB
--- @field voxelDim integer (readonly)
--- @field autoLightingUpdate boolean
--- @field blendEnabled boolean
--- @field blendMode BlendMode
--- @field blendOpacity number
--- @field blendRadiusRatio number
VoxelDB = {}

--- @return nil
function VoxelDB:Clear() end

--[[
Flush() adds a special operation in the queue, which waits for all running ops to finish.
If we had flush after each op, it would eliminate all multithreaded processing.

[View Documentation](https://docs.atomontage.com/api/VoxelDB#nil-Flush)
]]
--- @return nil
function VoxelDB:Flush() end

--- @param position Vec3|number
--- @return Vec3i|number
function VoxelDB:FromWorld(position) end

--- @param voxelPos Vec3i|number
--- @return Vec3|number
function VoxelDB:ToWorld(voxelPos) end

--- @param unit boolean
--- @return boolean
function VoxelDB:SetUnitVoxelDim(unit) end

--- @deprecated
--- @param vpos Vec3i
--- @param value boolean
--- @return nil
function VoxelDB:SetMask(vpos, value) end

--- @param vpos Vec3i
--- @return boolean
function VoxelDB:GetMask(vpos) end

--- @param x number
--- @param y number
--- @param z number
--- @return boolean
function VoxelDB:GetMask(x, y, z) end

--[[
int is the neighborhood radius, 1 means it's from pos - 1 to pos + 1, 
sum of voxels in 3x3 square without center (0-26)
it should be in range 1-8

[View Documentation](https://docs.atomontage.com/api/VoxelDB#integer-GetMaskNeighbours-Vec3i-vpos-integer-radius)
]]
--- @param vpos Vec3i
--- @param radius integer
--- @return integer
function VoxelDB:GetMaskNeighbours(vpos, radius) end

--- @param x number
--- @param y number
--- @param z number
--- @param radius integer
--- @return integer
function VoxelDB:GetMaskNeighbours(x, y, z, radius) end

--- @param vpos Vec3i
--- @param radius integer
--- @return integer
function VoxelDB:GetMaskNeighboursVN(vpos, radius) end

--- @param x number
--- @param y number
--- @param z number
--- @param radius integer
--- @return integer
function VoxelDB:GetMaskNeighboursVN(x, y, z, radius) end

--- @param vpos Vec3i
--- @return nil
function VoxelDB:ClearVoxel(vpos) end

--- @param x number
--- @param y number
--- @param z number
--- @return nil
function VoxelDB:ClearVoxel(x, y, z) end

--- @param vpos Vec3i
--- @param color Color
--- @return nil
function VoxelDB:SetColor(vpos, color) end

--- @param x number
--- @param y number
--- @param z number
--- @param color Color
--- @return nil
function VoxelDB:SetColor(x, y, z, color) end

--- @param vpos Vec3i
--- @return Color
function VoxelDB:GetColor(vpos) end

--- @deprecated
--- @param vpos Vec3i
--- @param radius integer
--- @param color Color
--- @return nil
function VoxelDB:PaintSphereBlendV(vpos, radius, color) end

--- @param vpos Vec3
--- @return Vec3
function VoxelDB:GetNormal(vpos) end

--- @param vpos Vec3
--- @return Vec3
function VoxelDB:GetFilteredNormal(vpos) end

--- @param vpos Vec3
--- @param radius number
--- @return boolean
function VoxelDB:CheckSphere(vpos, radius) end

--- @param vpos Vec3
--- @param vsize Vec3
--- @return boolean
function VoxelDB:CheckBox(vpos, vsize) end

--- @param vpos Vec3
--- @param vsize Vec3
--- @param rot Quat
--- @return boolean
function VoxelDB:CheckBox(vpos, vsize, rot) end

--- @param vpos1 Vec3
--- @param vpos2 Vec3
--- @param r number
--- @return boolean
function VoxelDB:CheckCapsule(vpos1, vpos2, r) end

--- @param vpos1 Vec3
--- @param vpos2 Vec3
--- @param r1 number
--- @param r2 number
--- @return boolean
function VoxelDB:CheckCapsule(vpos1, vpos2, r1, r2) end

--- @param vpos Vec3
--- @param radius number
--- @return nil
function VoxelDB:PaintSphere(vpos, radius) end

--- @param vpos Vec3
--- @param vsize Vec3
--- @return nil
function VoxelDB:PaintBox(vpos, vsize) end

--- @param vpos Vec3
--- @param vsize Vec3
--- @param rot Quat
--- @return nil
function VoxelDB:PaintBox(vpos, vsize, rot) end

--- @param vpos1 Vec3
--- @param vpos2 Vec3
--- @param r number
--- @return nil
function VoxelDB:PaintCapsule(vpos1, vpos2, r) end

--- @param vpos1 Vec3
--- @param vpos2 Vec3
--- @param r1 number
--- @param r2 number
--- @return nil
function VoxelDB:PaintCapsule(vpos1, vpos2, r1, r2) end

--- @param vpos Vec3
--- @param radius number
--- @return nil
function VoxelDB:ClearSphere(vpos, radius) end

--- @param vpos Vec3
--- @param vsize Vec3
--- @return nil
function VoxelDB:ClearBox(vpos, vsize) end

--- @param vpos Vec3
--- @param vsize Vec3
--- @param rot Quat
--- @return nil
function VoxelDB:ClearBox(vpos, vsize, rot) end

--- @param vpos1 Vec3
--- @param vpos2 Vec3
--- @param r1 number
--- @return nil
function VoxelDB:ClearCapsule(vpos1, vpos2, r1) end

--- @param vpos1 Vec3
--- @param vpos2 Vec3
--- @param r1 number
--- @param r2 number
--- @return nil
function VoxelDB:ClearCapsule(vpos1, vpos2, r1, r2) end

--- @param vpos Vec3
--- @param radius number
--- @return nil
function VoxelDB:MakeSphere(vpos, radius) end

--- @param vpos Vec3
--- @param vsize Vec3
--- @return nil
function VoxelDB:MakeBox(vpos, vsize) end

--- @param vpos Vec3
--- @param vsize Vec3
--- @param rot Quat
--- @return nil
function VoxelDB:MakeBox(vpos, vsize, rot) end

--- @param vpos1 Vec3
--- @param vpos2 Vec3
--- @param r number
--- @return nil
function VoxelDB:MakeCapsule(vpos1, vpos2, r) end

--- @param vpos1 Vec3
--- @param vpos2 Vec3
--- @param r1 number
--- @param r2 number
--- @return nil
function VoxelDB:MakeCapsule(vpos1, vpos2, r1, r2) end

--- @param albedo Color
--- @return nil
function VoxelDB:SetMaterial(albedo) end

--- @param pos Vec3
--- @param rot Quat
--- @param scale number
--- @return nil
function VoxelDB:InstantiateIE(pos, rot, scale) end

--- @return nil
function VoxelDB:ClearContent() end

--- @param cleanup boolean
--- @return nil
function VoxelDB:RebuildLods(cleanup) end

--- @param sourceLayerName string
--- @param destLayerName string
--- @return boolean
function VoxelDB:CopyLayer(sourceLayerName, destLayerName) end

--- @param layerName string
--- @return boolean
function VoxelDB:ClearLayer(layerName) end

--- @return nil
function VoxelDB:RemoveHiddenVoxelsC32() end

--- @return nil
function VoxelDB:RemoveHiddenVoxelsN16() end

--- @return table
function VoxelDB:GetInfo() end

--- @param destVoxelDB VoxelDB
--- @return nil
function VoxelDB:CopyTo(destVoxelDB) end

--- @param filePath string
--- @param compression string
--- @param quality number
--- @return nil
function VoxelDB:Save(filePath, compression, quality) end

--- @param pos Vec3
--- @param radiusVoxels integer
--- @param lod integer
--- @param vr VoxelData?
--- @return table
function VoxelDB:InspectNormals(pos, radiusVoxels, lod, vr) end

--- @param pos Vec3
--- @param size integer
--- @param axis integer
--- @param layers string[]
--- @param lod integer
--- @param vr VoxelData?
--- @return VoxelInspectData?
function VoxelDB:Inspect(pos, size, axis, layers, lod, vr) end

--- @return integer
function VoxelDB:GetLODsCount() end

--- @param layerName string
--- @return table
function VoxelDB:GetLayerStats(layerName) end

--- @return table
function VoxelDB:GetUsedLayers() end

--[[
World position and size of AABB (axis-aligned bounding box) of the static voxel data

[View Documentation](https://docs.atomontage.com/api/VoxelDB#Vec3-center-Vec3-size-GetAABounds)
]]
--- @return Vec3 center, Vec3 size
function VoxelDB:GetAABounds() end

--[[
`Client`
`Server`

Component that holds voxel data. The actual data itself is in the `data` property.
The data will only render if the object also has a `VoxelRender` component.

[View Documentation](https://docs.atomontage.com/api/VoxelData)
]]
--- @class VoxelData
--- @field active boolean
--- @field activeInHierarchy boolean (readonly)
--- @field object Object (readonly)
--- @field obj Object (readonly)
--- @field isDestroyed boolean (readonly)
--- @field type string (readonly)
--- @field onePerObject boolean (readonly)
--- @field size Vec3 (readonly)
--- @field contentVersion integer (readonly) Monotonic counter incremented every time the underlying voxel content is invalidated (any edit that changes voxel presence). Cheap O(1) read for caching downstream computations like total volume.
--- @field data VoxelDataResource The voxel data resource that this voxel data is using
--- @field save boolean Marks the voxel data to be persisted on save; it does not write any voxels by itself.
--- @field editable boolean
--- @field syncToClients boolean
--- @field enabled boolean
--- @field prioritizeLod boolean Try to load higher LODs faster than those of other objects
--- @field outline boolean Draw an outline around this object
--- @field tintColor Color Render with a tint color
--- @field receiveTransform boolean Receive transform(pos, rot scale) to render with from server. By default this is true.If you set this to false, you will need to manually set the transform of the object on the client side.This is useful for making objects respond immediately if something happened on the client side i.e. input
--- @field lodBias number
--- @field asset Asset
--- @field static boolean
--- @field isLoaded boolean (readonly)
VoxelData = {}

--- @param a VoxelData
--- @param b VoxelData
--- @return boolean
function VoxelData:__eq(a, b) end

--- @param worldPos Vec3
--- @param worldNormal Vec3
--- @return nil
function VoxelData:Mirror(worldPos, worldNormal) end

--[[
Returns the world-space axis-aligned bounds (center, size). Affected by the object's rotation, and reports size `(0,0,0)` when `receiveTransform=false`.

[View Documentation](https://docs.atomontage.com/api/VoxelData#Vec3-center-Vec3-size-GetAABounds)
]]
--- @return Vec3 center, Vec3 size
function VoxelData:GetAABounds() end

--- @return Vec3 center, Quat rot, Vec3 size
function VoxelData:GetBounds() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/VoxelDataParams)
]]
--- @class VoxelDataParams
--- @field potScale integer
--- @field paused boolean
--- @field startAtMs integer
--- @field startAtFrame number
--- @field playbackSpeed number
--- @field ramCopy boolean
--- @field releaseResources boolean
--- @field unpackOnLoad boolean
--- @field enforceReplaceRendSourceAndEntity boolean
VoxelDataParams = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/VoxelDataResource)
]]
--- @class VoxelDataResource
--- @field isEditable boolean (readonly) returns false if loaded as aevv
--- @field isSaved boolean (readonly) returns true if data was modified
--- @field hasAnyVoxels boolean (readonly)
--- @field volumePerc number (readonly) Approximate. Quickly count non-zero blocks of voxel object. Block size is 8x8x8. Block can be fully filled or just 1 voxel
--- @field volume integer (readonly)
--- @field scaleToStatic number (readonly)
--- @field loadLodScale number (readonly)
--- @field voxelSize integer (readonly)
VoxelDataResource = {}

--- @param path string
--- @return VoxelDataResource
function VoxelDataResource(path) end

--- @return VoxelDataResource
function VoxelDataResource() end

--[[
save voxel data in AM file
second parameter controls if file will be overwritten

[View Documentation](https://docs.atomontage.com/api/VoxelDataResource#Asset-Save-string-path-boolean-overwrite)
]]
--- @param path string
--- @param overwrite boolean
--- @return Asset
function VoxelDataResource:Save(path, overwrite) end

--[[
get center (in local space) and approximate dimensions of the voxel data

[View Documentation](https://docs.atomontage.com/api/VoxelDataResource#Vec3-center-Vec3-size-GetLocalBounds)
]]
--- @return Vec3 center, Vec3 size
function VoxelDataResource:GetLocalBounds() end

--[[
get center (in local space) and dimensions of the voxel data

[View Documentation](https://docs.atomontage.com/api/VoxelDataResource#Vec3-center-Vec3-size-GetPreciseLocalBounds)
]]
--- @return Vec3 center, Vec3 size
function VoxelDataResource:GetPreciseLocalBounds() end

--- @return VoxelDataResource
function VoxelDataResource:Duplicate() end

--- @return nil
function VoxelDataResource:RebuildLighting() end

--[[
`Client`
`Server`

:::warning Deprecated
The voxel edit functions in this class are old and may not correctly work. Instead use [Vox](/docs/manual/20-scripting/examples/Voxel-Edits.mdx).
:::

:::info Server Only
 Currently voxel edits can only be done on the server side.
:::

Use this class to create voxel edits.

Use this class by first creating a `VoxelEdit` object, then setting the properties such as `shape` and `color` and finally calling one of the edit methods:
* `Paint()`
* `Add()`
* `Remove()`
* `Copy()`
* `Kernel()`


```lua
function self:makeLine(p1, p2)
    --first create a VoxelEdit object
    local ve = VoxelEdit()

    --modify some properties
    local thickness = 0.2
    ve.shape = Capsule(p1, p2, thickness)
    ve.color = Vec3(1, 0, 1)

    --call the edit method
    ve:Add()
end
```

Every scene has only **one** static voxel data and can have multiple dynamic voxel data. The static voxel data is used for the world and can not be moved.
However both can be edited. To choose whether to edit the static or dynamic voxel data, use the `filter` property.
 
```lua
--create an object with voxel data (renders itself)
local ob = Scene:CreateObject("Voxel Sphere")
local vd = ob:AddComponent("VoxelData")
local vres = VoxelDataResource() --new empty voxel data
vd.data = vres
ob.pos = Vec3(0, 30, 0)

--voxel edit    
local ve = VoxelEdit()

--target the object and ignore static voxels
ve.filter.useStatic = false
ve.filter.forceList = { ob }

--add sphere
ve.color = Vec3(0,0.5,1)
ve.shape = Sphere(ob.pos, 1)
ve:Add()
```

Use the copy operation to copy voxels from one object to others or the static voxel data.

```lua
--select some object with voxel data here
local copyFrom = Scene:GetObjectByName("Voxel Sphere")

local ve = VoxelEdit()

--make a box fitting the target to copy from
local b = Box()
local center, size = copyFrom:GetComponentByType("VoxelData"):GetBounds()
b.pos = center
b.size = size
ve.shape = b
ve.filter.useNotStatic = false

--select what data to copy and its pasted transformation
ve.copyResource = copyFrom:GetComponentByType("VoxelData").data
ve.copyDestinationPos = copyFrom.pos
ve.copyDestinationRot = copyFrom.rot
ve.copyDestinationScale = copyFrom.scale
ve:Copy()
```

See a different example [here](../manual/scripting/examples/Voxel-Edits)

[View Documentation](https://docs.atomontage.com/api/VoxelEdit)
]]
--- @class VoxelEdit
--- @field blendEnable boolean
--- @field blendMode BlendMode Various blend modes which you may know from Photoshop. See a list of explanations [here](https://photoshoptrainingchannel.com/blending-modes-explained/#normal-blending-modes).
--- @field blendOpacity number
--- @field blendRadiusRatio number
--- @field color Color
--- @field filter Filter
--- @field shape Shape if shape is nil the operation will match all targets 
--- @field clampToMinVoxelSize boolean if ClampToMinVoxelSize is true (it's default), it sets size of shape to at least size of voxel size of target. This can interfere with your box size if it's too small.
--- @field copySourceTr Object
--- @field copyDestinationTr Object
--- @field copyDestinationPos Vec3
--- @field copyDestinationRot Quat
--- @field copyDestinationScale number
--- @field copySourcePos Vec3
--- @field copySourceRot Quat
--- @field copySourceScale number
--- @field copyResource VoxelData
--- @field colorEnable boolean
--- @field normalEnable boolean
--- @field roughnessEnable boolean
--- @field metallicityEnable boolean
--- @field materialEnable boolean
--- @field roughness number
--- @field metallicity number
--- @field removeType RemoveType
--- @field removeHardness number
--- @field useMaterialColor boolean
--- @field material string
--- @field removeList table<string,number>
--- @field carveList table<string,number>
--- @field removeCountList string[]
--- @field removeStats boolean
--- @field usesPbr boolean (readonly)
--- @field copyOperation CopyOperation
--- @field insertOperation InsertOperation
--- @field kernelType integer 0 = Smooth 7x5x71 = Smooth 3x3x32 = Smooth 5x5x53 = Inflate4 = Deflate5 = Normals smooth6 = Normals sharp
--- @field imageColor Image
--- @field imageNormal Image
--- @field imageUVTm Mat4
--- @field imageUVClamp boolean
--- @field imageTriplanar boolean Triplanar projection — samples the image along world X/Y/Z so it covers every face, with the tiling grid anchored in world space. When false, the image is planar-projected along a single direction.
--- @field imageNormalOverwrite boolean When true, the image's normal map replaces the surface normal (flattening to bare geometry if the texture has no normal); when false it blends into the existing surface normal.
--- @field imageProjectionFade boolean Planar projection only: fade the albedo on faces angled away from the projection axis (decal-style, lands only on the facing face). Ignored for triplanar, which covers every face.
--- @field imageNormalBlendPower number
--- @field onProgress fun(progress:number) callback function. progress from 0-1. May not be called every frame. Is called after script updates 
--- @field onFinished fun(info:RemoveCountInfo, computeTimeMs:number) callback function. onFinished is called after onProgress if it was last part
--- @field onError fun() callback function
VoxelEdit = {}

--- @return VoxelEdit
function VoxelEdit() end

--- @param shape Shape
--- @return VoxelEdit
function VoxelEdit(shape) end

--- @param shape Shape
--- @param position Vec3
--- @return VoxelEdit
function VoxelEdit(shape, position) end

--[[
Flush() adds a special operation in the queue, which waits for all running ops to finish.
If we had flush after each op, it would eliminate all multithreaded processing.

[View Documentation](https://docs.atomontage.com/api/VoxelEdit#nil-Flush)
]]
--- @return nil
function VoxelEdit:Flush() end

--[[
Change the color of voxels

[View Documentation](https://docs.atomontage.com/api/VoxelEdit#nil-Paint)
]]
--- @return nil
function VoxelEdit:Paint() end

--[[
Add voxels

[View Documentation](https://docs.atomontage.com/api/VoxelEdit#nil-Add)
]]
--- @return nil
function VoxelEdit:Add() end

--[[
Remove voxels

[View Documentation](https://docs.atomontage.com/api/VoxelEdit#nil-Remove)
]]
--- @return nil
function VoxelEdit:Remove() end

--[[
Copy voxels somewhere

[View Documentation](https://docs.atomontage.com/api/VoxelEdit#nil-Copy)
]]
--- @return nil
function VoxelEdit:Copy() end

--[[
Smoothing/Inflate/Deflate

[View Documentation](https://docs.atomontage.com/api/VoxelEdit#nil-Kernel)
]]
--- @return nil
function VoxelEdit:Kernel() end

--- @param textureUvTmWorld Mat4
--- @param relBorderSize number
--- @return Image
function VoxelEdit:CaptureImage(textureUvTmWorld, relBorderSize) end

--- @param name string
--- @return Image
function VoxelEdit:GetImageResource(name) end

--- @param clientId integer
--- @return nil
function VoxelEdit.FreeTmpLayers(clientId) end

--- @param layerFlags TmpLayerFlags
--- @param camPos Vec3
--- @param targets Vec3[]
--- @param targetRadius number
--- @param clientId integer
--- @return nil
function VoxelEdit.FillTmpLayers(layerFlags, camPos, targets, targetRadius, clientId) end

--- @return string[]
function VoxelEdit:GetMaterialNames() end

--- @param materialName string
--- @return table
function VoxelEdit:GetMaterial(materialName) end

--- @param materialName string
--- @param matData table
--- @return nil
function VoxelEdit:SetMaterial(materialName, matData) end

--- @param materialName string
--- @param roughness number
--- @param metallicity number
--- @return nil
function VoxelEdit:SetStaticSceneMaterial(materialName, roughness, metallicity) end

--- @param vd VoxelData
--- @param materialName string
--- @return nil
function VoxelEdit:SetVoxelDataResourceMaterial(vd, materialName) end

--- @param vd VoxelData
--- @param destMaterialName string
--- @param srcMaterialName string
--- @param clearSourceMat boolean
--- @return nil
function VoxelEdit:ReplaceVoxelDataResourceMaterial(vd, destMaterialName, srcMaterialName, clearSourceMat) end

--- @return nil
function VoxelEdit:BackupSurfaceAttributes() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/VoxelInspectData)
]]
--- @class VoxelInspectData
--- @field voxelSize integer (readonly)
--- @field header string (readonly)
--- @field headerPos Vec3 (readonly)
VoxelInspectData = {}

--- @return table
function VoxelInspectData:GetTexts() end

--- @return table
function VoxelInspectData:GetPositions() end

--- @return table
function VoxelInspectData:GetColors() end

--[[
---
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Widget)
]]
--- @class Widget
--- @field type string (readonly)
--- @field id integer (readonly)
--- @field destroyed boolean (readonly)
--- @field parent Widget (readonly)
--- @field window Window (readonly)
--- @field children table (readonly)
--- @field childCount integer (readonly)
--- @field hasChildren boolean (readonly)
--- @field next Widget (readonly)
--- @field prev Widget (readonly)
--- @field isWindow boolean (readonly)
--- @field isContainer boolean (readonly)
--- @field isSelected boolean (readonly)
--- @field name string
--- @field tooltip string
--- @field visible boolean
--- @field enabled boolean
--- @field size Vec2
--- @field sizing string
--- @field sizingX string
--- @field sizingY string
--- @field pos Vec2
--- @field posType string
--- @field sizePx Vec2 (readonly)
--- @field posPx Vec2 (readonly)
--- @field overflow string
--- @field endLine boolean
--- @field siblingIndex integer
--- @field padding Vec2
--- @field paddingMode string
--- @field rounding number
--- @field roundingMode string
--- @field roundCorners integer
--- @field glyphFade boolean
--- @field margin Vec2
--- @field marginMode string
--- @field gap Vec2 Spacing between sibling widgets (x) and between wrapped flow lines (y).
--- @field alignItems string Cross-axis alignment of child widgets: `start`/`center`/`end`/`stretch`.
--- @field alignSelf string Overrides the parent's `alignItems` for this widget (`auto` inherits).
--- @field justifyContent string Main-axis distribution of children: `start`/`center`/`end`/`space-between`/`space-around`.
--- @field mp Vec2
--- @field bgFrame boolean
--- @field bgColor Color
--- @field borderColor Color
--- @field textColor Color
--- @field fontSize number
--- @field fontBold boolean
--- @field fontName string
--- @field textAlign Vec2
--- @field cornerRound number 0..1: rounds the glyph's sharp MSDF corners (1 = fully rounded, SDF-like).
--- @field bevel number 0..1: faux-3D bevel / emboss shading along the glyph edge.
--- @field bevelLight number 0..1: bevel light direction, mapped to a 0..2pi azimuth.
--- @field melt number 0..1: animated noise domain-warp ('melting') of the glyph.
--- @field glitch number 0..1: static horizontal scanline-displacement bands.
--- @field bend number 0..1: horizontal shear / slant of the glyph.
--- @field twist number 0..1: swirl warp, stronger toward the glyph edges.
--- @field wave number 0..1: animated sine ripple along the glyph.
--- @field revealAmount number 0..1: coverage-mask reveal amount (0 = solid, 1 = fully gone).
--- @field revealMask integer Reveal mask kind: 0 off, 1 noise, 2 linear, 3 radial.
--- @field revealParam number 0..1: reveal mask scale (noise) or angle (linear).
--- @field revealEdge number 0..1: hue of the glowing reveal front edge; 0 = no edge.
--- @field reveal number|table Write `{ amount=, mask='noise'|'linear'|'radial', param=, edge= }` or a bare amount (noise mask); reads back the amount.
--- @field pattern int|table Procedural fill pattern. Write a kind (0 off, 1 halftone, 2 dither, 3 contour) or `{ kind=, scale=, angle= }`; reads back the kind.
--- @field patternScale number 0..1: fill-pattern scale (dot/cell size, ring frequency, ...).
--- @field patternAngle number 0..1: fill-pattern rotation, mapped to 0..2pi.
--- @field fill table Write-only 2-color fill gradient: `{ top=Color, bottom=Color, along='y'|'x' }`.
--- @field layers table Array of stacked text layers, each `{ d=dilate, soft=glow, off=Vec2 shadow offset, color=, colorBottom=, along='y'|'x' }`. When set, the layer stack REPLACES the base fill/outline/shadow.
--- @field intVar integer
--- @field showNoValue boolean
--- @field onHoverEx fun(widget:Widget, ...)
--- @field onHoverEndEx fun(widget:Widget, ...)
--- @field onFocusEx fun(widget:Widget, ...)
--- @field onFocusEndEx fun(widget:Widget, ...)
--- @field onPressStartEx fun(widget:Widget, ...)
--- @field onPressCancelEx fun(widget:Widget, ...)
--- @field onPressEx fun(widget:Widget, ...)
--- @field onRightPressEx fun(widget:Widget, ...)
--- @field onMouseMoveEx fun(widget:Widget, ...)
--- @field onKeyDownEx fun(widget:Widget, ...)
--- @field onKeyUpEx fun(widget:Widget, ...)
--- @field onValueChangeEx fun(widget:Widget, ...)
--- @field onValueCommitEx fun(widget:Widget, value:any, oldValue:any)
--- @field onDragStartEx fun(widget:Widget):any
--- @field onDragOverEx fun(widget:Widget, var:any, varList:table, pos:Vec2):boolean?
--- @field onDragLeaveEx fun(widget:Widget)
--- @field onDragEndEx fun(widget:Widget, var:any, varList:table, pos:Vec2):boolean?
--- @field onPress string
--- @field onPressStart string
--- @field onPressCancel string
--- @field onMouseMove string
--- @field onHover string
--- @field onHoverEnd string
--- @field onFocus string
--- @field onFocusEnd string
--- @field onKeyDown string
--- @field onKeyUp string
--- @field onValueChange string
--- @field onValueCommit string
--- @field onDragStart string
--- @field onDragOver string
--- @field onDragLeave string
--- @field onDragEnd string
Widget = {}

--- @param properties table
--- @return Widget
function Widget:Set(properties) end

--- @param name string
--- @return Widget
function Widget:WidgetByName(name) end

--[[
---
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Window)
]]
--- @class Window : Widget
--- @field luaFile Asset
--- @field header boolean
--- @field text string
--- @field icon string
--- @field scroll boolean
--- @field scrollX boolean
--- @field scrollY boolean
--- @field stayOnBottom boolean
--- @field stayOnTop boolean
--- @field resizable boolean
--- @field noInput boolean
--- @field noHide boolean
--- @field borders string
--- @field enableShadow boolean
--- @field obj table (readonly)
Window = {}

--- @return nil
function Window:Close() end

--- @return boolean
function Window:IsPopup() end

--- @param name string
--- @return Asset
function Window:GetAsset(name) end

--- @param index integer
--- @return Asset
function Window:GetAssetByIndex(index) end

--- @return integer
function Window:GetAssetCount() end

--- @param name string
--- @param asset Asset
--- @return nil
function Window:AddAsset(name, asset) end

--- @param index integer
--- @param asset Asset
--- @return nil
function Window:SetAssetByIndex(index, asset) end

--- @param index integer
--- @param name string
--- @return nil
function Window:SetAssetNameByIndex(index, name) end

--- @param index integer
--- @return nil
function Window:RemoveAssetByIndex(index) end

--- @param fromIndex integer
--- @param toIndex integer
--- @return nil
function Window:MoveAsset(fromIndex, toIndex) end

--- @return table
function Window:GetAssets() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/util)
]]
--- @class util
util = {}

--[[
Call function once after time

[View Documentation](https://docs.atomontage.com/api/util#nil-schedule-number-time-fun-func-any)
]]
--- @param time number
--- @param func fun()
--- @param ... any
--- @return nil
function util:schedule(time, func, ...) end

--[[
Call function every frame until time passed.
Passes paramter t (0-1) for time passed to function, last call always finishes with 1 

[View Documentation](https://docs.atomontage.com/api/util#nil-scheduleUpdate-number-time-fun-func-any)
]]
--- @param time number
--- @param func fun()
--- @param ... any
--- @return nil
function util:scheduleUpdate(time, func, ...) end

--[[
Changes in this table are synced from server to clients.
New clients connecting receive all current values in the networked table

[View Documentation](https://docs.atomontage.com/api/util#table-makeNetworkedTable-ScriptInstance-script-table-tab-boolean-allowPrediction)
]]
--- @param script ScriptInstance
--- @param tab table?
--- @param allowPrediction boolean?
--- @return table
function util:makeNetworkedTable(script, tab, allowPrediction) end

--[[
returns Vec3 or Vec4 with alpha depending on length of hex value

[View Documentation](https://docs.atomontage.com/api/util#Vec3Vec4-hexToRgb-string-hex)
]]
--- @param hex string
--- @return Vec3|Vec4
function util:hexToRgb(hex) end

--- @param hex string
--- @param alpha number?
--- @return Vec4
function util:hexToRgba(hex, alpha) end

--- @param rgb Vec3
--- @param a ?number
--- @return Vec4
function util:toRgba(rgb, a) end

--- @param rgba Vec4
--- @return Vec3
function util:toRgb(rgba) end

--- @param hue number
--- @param saturation number
--- @param value number
--- @return Vec3
function util:hsvToRgb(hue, saturation, value) end

--- @param hue number
--- @param saturation number
--- @param value number
--- @param alpha number?
--- @return Vec4
function util:hsvToRgba(hue, saturation, value, alpha) end

--- @param color Vec3|Vec4
--- @return nil
function util:rgbToHsv(color) end

--[[
CIELAB color space (also known as L*a*b*) is a perceptually uniform color space
designed to approximate human vision. It consists of three components:
L* (lightness), a* (green-red), and b* (blue-yellow).
This color space is useful for color comparisons and manipulations.
good for smooth color transitions and fades

[View Documentation](https://docs.atomontage.com/api/util#number-L-number-a-number-b-rgbToLab-Vec3Vec4-color)
]]
--- @param color Vec3|Vec4
--- @return number L, number a, number b
function util:rgbToLab(color) end

--[[
https://www.lua.org/pil/13.4.5.html

[View Documentation](https://docs.atomontage.com/api/util#table-readOnly-table-t)
]]
--- @param t table
--- @return table
function util:readOnly(t) end

--[[
compare tables and others shallow

[View Documentation](https://docs.atomontage.com/api/util#boolean-shallowEquals-any-t1-any-t2)
]]
--- @param t1 any
--- @param t2 any
--- @return boolean
function util:shallowEquals(t1, t2) end

--[[
this can be called 1000s of times per frame, should be disabled in release somehow
assert value type

[View Documentation](https://docs.atomontage.com/api/util#nil-assertType-any-value-stringShapeany-number-errorDepth)
]]
--- @param value any
--- @param ... string|"Shape"|any
--- @param errorDepth number?
--- @return nil
function util:assertType(value, ..., errorDepth) end

--[[
debug func

[View Documentation](https://docs.atomontage.com/api/util#nil-trackChanges-any-tbl)
]]
--- @param tbl any
--- @return nil
function util:trackChanges(tbl) end

--[[
One-shot / chained timer. Any call resets the clock; named calls print since the previous call.
GC is paused for each segment and collected between segments — never accumulates indefinitely.
After printing, tPart is re-snapped so print overhead is excluded from the next segment.
Usage:
  util:prof("start")  -- first call inits clock (tPart was nil), no output
  util:prof("part1")  -- prints µs + KB since "start"
  util:prof("part2")  -- prints µs + KB since "part1"
  util:prof()         -- resets clock silently

[View Documentation](https://docs.atomontage.com/api/util#nil-prof-any-name)
]]
--- @param name any
--- @return nil
function util:prof(name) end

--[[
profile and group measurements of each string passed together for this frame
GC is paused on first call per frame and restarted in profFlush, so alloc deltas are exact.
g = &#123;[1]=accumulated_time, [2]=call_count, [3]=accumulated_KB&#125; — integer keys use array part, faster than string fields

[View Documentation](https://docs.atomontage.com/api/util#nil-profGr-any-name)
]]
--- @param name any
--- @return nil
function util:profGr(name) end

--[[
Spin for a given number of microseconds (busy-wait). Useful for testing the profiler.
Usage: util:expensive(500) -- burn ~500µs

[View Documentation](https://docs.atomontage.com/api/util#nil-expensive-any-us)
]]
--- @param us any
--- @return nil
function util:expensive(us) end

--[[

Used by [VoxelEdit](../VoxelEdit#BlendMode-blendMode)
See a list of explanations [here](https://photoshoptrainingchannel.com/blending-modes-explained/#normal-blending-modes).

[View Documentation](https://docs.atomontage.com/api/BlendMode)
]]
--- @enum BlendMode
BlendMode = {
	Normal = 0,
	Darken = 1,
	Multiply = 2,
	ColorBurn = 3,
	LinearBurn = 4,
	DarkenColor = 5,
	Lighten = 6,
	Screen = 7,
	ColorDodge = 8,
	LinearDodge = 9,
	LightenColor = 10,
	Overlay = 11,
	SoftLight = 12,
	HardLight = 13,
	VividLight = 14,
	LinearLight = 15,
	PinLight = 16,
	HardMix = 17,
	Difference = 18,
	Exclusion = 19,
	Subtract = 20,
	Divide = 21,
	Hue = 22,
	Color = 23,
	Saturation = 24,
	Luminosity = 25,
}

--- @enum ClientPermission
ClientPermission = {
	View = 0,
	DevDebug = 1,
	Edit = 2,
}

--- @enum CopyOperation
CopyOperation = {
	InsertColor = 0,
	CopyColor = 1,
	Carve = 2,
	CarveColor = 3,
}

--- @enum CpuArch
CpuArch = {
	Unknown = 0,
	X86 = 1,
	X86_64 = 2,
	Arm = 3,
	Arm64 = 4,
	Wasm = 5,
}

--- @enum Device
Device = {
	Generic = 0,
	Quest = 1,
	MagicLeap2 = 2,
}

--- @enum HitType
HitType = {
	Invalid = 0,
	StaticCommon = 1,
	StaticTmp = 2,
	ObjectVoxel = 3,
}

--- @enum InsertOperation
InsertOperation = {
	Normal = 0,
	Empty = 1,
	Full = 2,
}

--- @enum PhysSimEventType
PhysSimEventType = {
	Unspecified = 0,
	Impulse = 1,
	Force = 2,
}

--- @enum PixelFormat
PixelFormat = {
	Unknown = 0,
	RGB888 = 1,
	RGBA8888 = 2,
	RGB565 = 3,
	RGBA5551 = 4,
	RGBA4444 = 5,
	BGR888 = 6,
	BGRA8888 = 7,
	Depth16 = 8,
	Depth24 = 9,
	Depth32 = 10,
	Depth24Stencil8 = 11,
	A8 = 12,
	LA88 = 13,
	R32f = 14,
	RGB32f = 15,
	RGBA32f = 16,
	R16f = 17,
	RGB16f = 18,
	RGBA16f = 19,
	DXT1 = 20,
	DXT1_with_ALPHA = 21,
	DXT3 = 22,
	DXT5 = 23,
	ATC_RGB = 24,
	ATC_RGBEA = 25,
	ATC_RGBIA = 26,
	ETC_RGB = 27,
	ETC2_RGB = 28,
	ETC2_RGBA_PUNCHTHROUGH_ALPHA = 29,
	ETC2_RGBA = 30,
	PVRTC4_RGB = 31,
	PVRTC2_RGB = 32,
	PVRTC4_RGBA = 33,
	PVRTC2_RGBA = 34,
	Int8 = 35,
	Int16 = 36,
	Int32 = 37,
	UInt8 = 38,
	UInt16 = 39,
	UInt32 = 40,
	Depth32Stencil8X24 = 41,
	RGB16U = 42,
	RGBA16U = 43,
	SRGB888 = 44,
	SRGB888A8 = 45,
	RGB10A2 = 46,
}

--- @enum PrimitiveTopology
PrimitiveTopology = {
	Points = 0,
	LineStrip = 1,
	Lines = 2,
	TriangleStrip = 3,
	TriangleFan = 4,
	Triangles = 5,
}

--- @enum RTAttachmentFlags
RTAttachmentFlags = {
	Color3 = 0,
	Depth = 1,
	Color2 = 2,
	Color0 = 3,
	Color1 = 4,
	DepthAndStencil = 5,
}

--- @enum RemoveType
RemoveType = {
	All = 0,
	Hardness = 1,
	List = 2,
	SharpList = 3,
}

--- @enum RendererStateFlags
RendererStateFlags = {
	Shadows = 0,
	Fog = 1,
	MultiView = 2,
	Lighting = 3,
	DepthPass = 4,
	VR = 5,
	PBR = 6,
	IBL = 7,
	RASibGrouping = 8,
}

--[[

Hint for opengl/vulkan about how often you change the geometry (static = once, dynamic=more often, streamed = each frame)

[View Documentation](https://docs.atomontage.com/api/ResourceUsage)
]]
--- @enum ResourceUsage
ResourceUsage = {
	-- once
	Static = 0,
	-- more often
	Dynamic = 1,
	-- each frame
	Stream = 2,
}

--- @enum ShaderType
ShaderType = {
	RayGen = 0,
	Callable = 1,
	Fragment = 2,
	AnyHit = 3,
	Count = 4,
	TesselationControl = 5,
	ClosestHit = 6,
	Compute = 7,
	Miss = 8,
	Intersection = 9,
	Unknown = 10,
	Geometry = 11,
	Vertex = 12,
	TesselationEvaluation = 13,
}

--- @enum Side
Side = {
	Left = 0,
	Right = 1,
}

--- @enum SkyTextureType
SkyTextureType = {
	Dome = 0,
	Cube = 1,
	Unknown = 2,
	Sphere = 3,
}

--- @enum Space
Space = {
	Local = 0,
	World = 1,
}

--- @enum System
System = {
	Unknown = 0,
	Windows = 1,
	Linux = 2,
	WebBrowser = 3,
	MacOS = 4,
	iOS = 5,
	Android = 6,
}

--- @enum TmpLayerFlags
TmpLayerFlags = {
	None = 0,
	Common = 1,
	Atlas = 2,
}

--- @enum UIButtonType
UIButtonType = {
	Gray = 0,
	Toggle = 1,
	Normal = 2,
	Suggest = 3,
	Transparent = 4,
	Silent = 5,
}

--- @enum UIInputType
UIInputType = {
	Int = 0,
	Text = 1,
	Float = 2,
}

--- @enum UILabelType
UILabelType = {
	Normal = 0,
	Label = 1,
}

--- @enum UIPosType
UIPosType = {
	Inline = 0,
	Percent = 1,
	Fixed = 2,
}

--- @enum UIPropertyMode
UIPropertyMode = {
	Override = 0,
	Default = 1,
	Inherit = 2,
}

--- @enum UISizeType
UISizeType = {
	ByContent = 0,
	Percent = 1,
	Units = 2,
	Ratio = 3,
}

--- @enum UISliderType
UISliderType = {
	Transparent = 0,
	Normal = 1,
}

--- @enum UITextAlign
UITextAlign = {
	Center = 0,
	Right = 1,
	Stretch = 2,
	Left = 3,
}

--- @enum VRControllerButton
VRControllerButton = {
	A = 0,
	B = 1,
	Menu = 2,
	Thumb = 3,
	Trigger = 4,
	Grip = 5,
	Shoulder = 6,
}

--- @enum WidgetEvent
WidgetEvent = {
	OnPressCancel = 0,
	OnKeyUp = 1,
	OnDragStart = 2,
	OnFocus = 3,
	OnHover = 4,
	OnDragOver = 5,
	OnFocusEnd = 6,
	OnKeyDown = 7,
	None = 8,
	OnDragLeave = 9,
	OnDragEnd = 10,
	OnHoverEnd = 11,
	OnPress = 12,
	OnPressStart = 13,
	OnMouseMove = 14,
	OnValueChange = 15,
}

