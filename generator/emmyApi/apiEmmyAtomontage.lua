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

--https://wiki.libsdl.org/SDL_Keycode
--- @alias keyCode
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



--- @alias componentType
---| '"Camera"'
---| '"MeshData"'
---| '"MeshRenderer"'
---| '"Prefab"'
---| '"RigidBody"'
---| '"Script"'
---| '"Sky"'
---| '"StaticVoxelData"'
---| '"Transform"'
---| '"VoxelData"'
---| '"VoxelRenderer"'

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/AE)
]]
--- @class AE
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

--- @return CommandLine
function AE:GetCommandLine() end

--- @param name string
--- @return number
function AE:GetLogTime(name) end

--- @param namePrefix string
--- @return table
function AE:GetLogTimers(namePrefix) end

--- @param name string
--- @param defaultVal number?
--- @return number
function AE:GetLogValue(name, defaultVal) end

--- @return Asset[]
function AE:GetAssets() end

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

--- @param type string
--- @return boolean
function AnyVar:IsAsset(type) end

--- @param com string
--- @return boolean
function AnyVar:IsObjWithCom(com) end

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
Asset = {}

--[[
`Client`

Returned by [`Client:PlayMusic()`](./client.mdx#AudioMusic-PlayMusic-string-number-booleanean)

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

Returned by [`Client:PlaySound()`](./client.mdx#AudioSource-PlaySound-string-Vec3-number-booleanean)

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
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Button)
]]
--- @class Button
--- @field text string
--- @field textAlign Vec2
--- @field multiLine boolean
--- @field buttonType UIButtonType
--- @field value boolean
--- @field icon string
--- @field icon2 string
--- @field closeWindow boolean
Button = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/ButtonPanel)
]]
--- @class ButtonPanel
--- @field buttonType UIButtonType
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
--- @field Active boolean (deprecated)
--- @field ActiveInHierarchy boolean (readonly, deprecated)
--- @field Object Object (readonly, deprecated)
--- @field Obj Object (readonly, deprecated)
--- @field IsDestroyed boolean (readonly, deprecated)
--- @field Type string (readonly, deprecated)
--- @field fovY number Defines the vertical field of view in degrees
--- @field transform Transform
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

[View Documentation](https://docs.atomontage.com/api/Checkbox)
]]
--- @class Checkbox
--- @field text string
--- @field value boolean
Checkbox = {}

--[[
`Client`
:::info Client Only
This class is only available on client
:::

[View Documentation](https://docs.atomontage.com/api/Client)
]]
--- @class Client
--- @field clientID integer (readonly)
--- @field userID string (readonly)
--- @field mode ClientMode
--- @field isMaker boolean (readonly)
--- @field platform string (readonly)
--- @field sysInfo string (readonly)
--- @field editMode boolean (readonly)
--- @field wannaShowLuaConsole boolean
--- @field masterVolume number
--- @field soundVolume number
--- @field musicVolume number
--- @field EditMode boolean (readonly, deprecated)
--- @field WannaShowLuaConsole boolean (deprecated)
--- @field MasterVolume number (deprecated) Audio volume in range 0 - 1.
--- @field SoundVolume number (deprecated) Audio volume in range 0 - 1.
--- @field MusicVolume number (deprecated) Audio volume in range 0 - 1.
Client = {}

--- @return string
function Client:GetUserID() end

--- @return integer
function Client:GetID() end

--- @param itemId integer
--- @param uiItem UIItem
--- @param value any
--- @return string
function Client:UIItemUpdate(itemId, uiItem, value) end

--- @param keyActionID string
--- @return nil
function Client:OpenKeyboardShortcutInput(keyActionID) end

--- @return nil
function Client:ToggleUICreatorWindow() end

--- @return nil
function Client:ToggleUIVisibility() end

--- @param show boolean
--- @return nil
function Client:SetShowWindows(show) end

--- @return boolean
function Client:GetShowWindows() end

--- @return boolean
function Client:GetUICapturesMouseOrKeyboard() end

--- @return boolean
function Client:GetUICapturesMouse() end

--- @return boolean
function Client:GetUICapturesKeyboard() end

--- @return boolean
function Client:GetUICapturesTextInput() end

--- @return boolean
function Client:GetUIIsInEditMode() end

--- @param windowName string
--- @return nil
function Client:OpenUIWindow(windowName) end

--- @param windowName string
--- @return nil
function Client:CloseUIWindow(windowName) end

--- @param windowName string
--- @param open boolean
--- @return nil
function Client:SetUIWindowOpen(windowName, open) end

--- @param windowName string
--- @return nil
function Client:ToggleUIWindow(windowName) end

--- @param windowName string
--- @return boolean
function Client:IsWindowOpen(windowName) end

--- @param windowName string
--- @param pos Vec2
--- @return nil
function Client:SetWindowPos(windowName, pos) end

--- @return nil
function Client:OpenUI() end

--- @return nil
function Client:CloseUI() end

--- @return boolean
function Client:IsUIOpen() end

--- @param rot Quat
--- @param pose Vec3
--- @return nil
function Client:SetUIPose(rot, pose) end

--- @return Quat rot, Vec3 pos
function Client:GetUIPose() end

--- @param scriptName string
--- @return Script
function Client:GetScript(scriptName) end

--- @param fileName string
--- @param lineNumber integer?
--- @return nil
function Client:OpenScriptFile(fileName, lineNumber) end

--- @param scale number
--- @return nil
function Client:SetUIScale(scale) end

--- @return number
function Client:GetUIScale() end

--- @return boolean
function Client:GetUIScaleAuto() end

--- @param auto boolean
--- @return nil
function Client:SetUIScaleAuto(auto) end

--- @return string
function Client:GetUILayout() end

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

--- @param name string
--- @param defaultValue number?
--- @return number
function Client:GetLogValue(name, defaultValue) end

--- @param name string
--- @param value number
--- @return nil
function Client:SetLogValue(name, value) end

--- @param name string
--- @param value string
--- @return nil
function Client:SetStrLogValue(name, value) end

--- @param index integer
--- @return integer
function Client:GetLogIValue(index) end

--- @param index integer
--- @return string
function Client:GetLogIValueName(index) end

--- @param index integer
--- @return string
function Client:GetLogIValueOutputName(index) end

--- @param name string
--- @return boolean
function Client:GetLogIsValue(name) end

--- @return integer
function Client:GetLogValuesCount() end

--- @param name string
--- @return table
function Client:GetLogValueForPlot(name) end

--- @param name string
--- @return string
function Client:GetLogStrValue(name) end

--- @param index integer
--- @return string
function Client:GetLogStrIValue(index) end

--- @param index integer
--- @return string
function Client:GetLogStrIValueName(index) end

--- @param index integer
--- @return string
function Client:GetLogStrIValueOutputName(index) end

--- @param name string
--- @return boolean
function Client:GetLogStrIsValue(name) end

--- @return integer
function Client:GetLogStrValuesCount() end

--- @return table
function Client:GetMainDispatcherStats() end

--- @return table
function Client:GetRenderStats() end

--- @return boolean
function Client:GetRenderStatsEnabled() end

--- @param enable boolean
--- @return nil
function Client:SetRenderStatsEnabled(enable) end

--- @return number
function Client:GetFPS() end

--- @return Config
function Client:GetConfigInputActions() end

--- @return nil
function Client:ConnectToServer() end

--- @param path string
--- @return boolean opened
function Client:OpenFolder(path) end

--- @return integer
function Client:GetScriptsVersion() end

--- @return integer
function Client:GetLoadedScriptsVersion() end

--- @return nil
function Client:OnLuaLog() end

--- @return nil
function Client:ScrollToLastestLuaLog() end

--- @param uiItem UIItem
--- @return boolean
function Client:IsContainerEnabledAndVisible(uiItem) end

--[[
Log a message to file. In most cases you wanna use print() for console output

[View Documentation](https://docs.atomontage.com/api/Client#nil-Log-string-message)
]]
--- @param message string
--- @return nil
function Client:Log(message) end

--- @return boolean
function Client:IsClient() end

--- @return boolean
function Client:IsServer() end

--- @return boolean
function Client:DevMode() end

--- @return boolean
function Client:GetNetworkThrottlingNow() end

--- @param uiItem UIItem
--- @return nil
function Client:SelectItemInUICreator(uiItem) end

--- @param actionID integer
--- @return UIItem
function Client:GetUIItemByUIActionID(actionID) end

--- @param actionID integer
--- @return string
function Client:GetUIActionType(actionID) end

--- @param actionID integer
--- @return string
function Client:GetUIActionScript(actionID) end

--- @return string
function Client:GetCurrentUIActionID() end

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
--- @return nil
function Client:WriteToScreen(text, pos, anchor, color, size, outlineColor, time) end

--- @return nil
function Client:CloseApp() end

--- @return string
function Client:GetEULA() end

--- @return Vec2
function Client:GetWindowSize() end

--- @return Vec2
function Client:GetViewportSize() end

--[[
Returns [`CommandLine`](./commandLine.mdx)

[View Documentation](https://docs.atomontage.com/api/Client#CommandLine-GetCommandLine)
]]
--- @return CommandLine
function Client:GetCommandLine() end

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

--- @return nil
function Client:ToggleVREnabled() end

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

--- @param file File
--- @return boolean
function Client:SendFile(file) end

--- @param files File[]
--- @return nil
function Client:SendFiles(files) end

--- @return boolean
function Client:IsUploadingFiles() end

--- @return boolean
function Client:IsDownloadingFiles() end

--- @return nil
function Client:Restart() end

--- @return nil
function Client:ChooseImage() end

--- @return nil
function Client:TriggerCrash() end

--- @return nil
function Client:TriggerException() end

--- @return nil
function Client:TriggerCriticalError() end

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

--- @return nil
function Client:LoadEntityPath() end

--- @return nil
function Client:SaveEntityPath() end

--- @return nil
function Client:PlayEntityPath() end

--- @return nil
function Client:ClearEntityPath() end

--- @return nil
function Client:AddEntityPathWaypoint() end

--- @return Vec4[]?
function Client:GetEntityPath() end

--- @param name string
--- @param attachTimestamp boolean
--- @return nil
function Client:TakeScreenshot(name, attachTimestamp) end

--- @return table
function Client:GetVersion() end

--- @return System
function Client:GetSystem() end

--- @return Device
function Client:GetDevice() end

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

--- @return table
function Client:EnumerateTestRenderObjects() end

--- @param objectName string
--- @return boolean
function Client:IsTestRenderObjectEnabled(objectName) end

--- @param objectName string
--- @param enabled boolean
--- @return boolean
function Client:SetTestRenderObjectEnabled(objectName, enabled) end

--- @param objectName string
--- @return boolean
function Client:ToggleTestRenderObjectEnabled(objectName) end

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

--[[
Play sound with asset name, at position, with volume and loop. Only single channel audio.
Returns [AudioSource](./audioSource.mdx)

[View Documentation](https://docs.atomontage.com/api/Client#AudioSource-PlaySound-string-soundPath-Vec3-position-number-volume-boolean-loop)
]]
--- @param soundPath string
--- @param position Vec3?
--- @param volume number?
--- @param loop boolean?
--- @return AudioSource
function Client:PlaySound(soundPath, position, volume, loop) end

--[[
Play sound with asset name, with volume and loop. This play stereo music without any position just like normal audio player.
Returns [AudioMusic](./audioMusic.mdx)

[View Documentation](https://docs.atomontage.com/api/Client#AudioMusic-PlayMusic-string-musicFile-number-volume-boolean-loop)
]]
--- @param musicFile string
--- @param volume number?
--- @param loop boolean?
--- @return AudioMusic
function Client:PlayMusic(musicFile, volume, loop) end

--- @param musicFile string
--- @param volume number?
--- @param loop boolean?
--- @return AudioMusic
function Client:PrepareMusic(musicFile, volume, loop) end

--- @param musicFile string
--- @return boolean
function Client:HasMusic(musicFile) end

--- @param musicFile string
--- @return nil
function Client:GetMusicFromServer(musicFile) end

--[[
Pause all playing sounds and music

[View Documentation](https://docs.atomontage.com/api/Client#nil-PauseAudio)
]]
--- @return nil
function Client:PauseAudio() end

--[[
Resume all paused sounds and music

[View Documentation](https://docs.atomontage.com/api/Client#nil-ResumeAudio)
]]
--- @return nil
function Client:ResumeAudio() end

--- @return nil
function Client:StopAudio() end

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

--- @param pos Vec3
--- @param radius number
--- @param color Vec4
--- @param shade boolean
--- @return nil
function Client:DrawBillboardSphere(pos, radius, color, shade) end

--- @param texture integer
--- @param pos Vec3
--- @param size number
--- @param color Vec4
--- @param angleDeg number
--- @return nil
function Client:DrawBillboard(texture, pos, size, color, angleDeg) end

--- @param billboards table
--- @return nil
function Client:DrawBillboards(billboards) end

--- @return boolean
function Client:ToggleFullScreen() end

--[[
`Server`

[View Documentation](https://docs.atomontage.com/api/ClientContext)
]]
--- @class ClientContext
--- @field clientID integer (readonly)
--- @field mode string (readonly)
ClientContext = {}

--- @param actionID integer
--- @param item UIItem
--- @param value any
--- @return string
function ClientContext:UIItemUpdate(actionID, item, value) end

--- @param uiItem UIItem
--- @return nil
function ClientContext:SelectItemInUICreator(uiItem) end

--- @param uiActionID integer
--- @return UIItem
function ClientContext:GetUIItemByUIActionID(uiActionID) end

--- @param uiActionID integer
--- @return string
function ClientContext:GetUIActionType(uiActionID) end

--- @param uiActionID integer
--- @return string
function ClientContext:GetUIActionScript(uiActionID) end

--- @return integer
function ClientContext:GetCurrentUIActionID() end

--- @return nil
function ClientContext:OnLuaLog() end

--- @return boolean
function ClientContext:IsServer() end

--- @return boolean
function ClientContext:IsClient() end

--- @param fileName string
--- @return string
function ClientContext:GetScript(fileName) end

--- @return nil
function ClientContext:ClearLuaLogClient() end

--- @return nil
function ClientContext:ScrollToLastestLuaLog() end

--- @return CommandLine
function ClientContext:GetCommandLine() end

--- @return table
function ClientContext:GetVersion() end

--- @return string
function ClientContext:GetSystem() end

--- @return number
function ClientContext:GetFPS() end

--- @return integer
function ClientContext:GetScriptsVersion() end

--- @param name string
--- @return number
function ClientContext:GetLogValue(name) end

--- @param name string
--- @param value number
--- @return nil
function ClientContext:SetLogValue(name, value) end

--- @param name string
--- @return table
function ClientContext:GetLogValueForPlot(name) end

--- @param name integer
--- @return number
function ClientContext:GetLogIValue(name) end

--- @param name integer
--- @return string
function ClientContext:GetLogIValueName(name) end

--- @param name integer
--- @return string
function ClientContext:GetLogIValueOutputName(name) end

--- @param name integer
--- @return boolean
function ClientContext:GetLogIsValue(name) end

--- @return integer
function ClientContext:GetLogValuesCount() end

--- @return Vec2i
function ClientContext:GetVideoRange() end

--- @return integer
function ClientContext:GetCurrentFrame() end

--- @param frame integer
--- @return nil
function ClientContext:SetCurrentFrame(frame) end

--- @return boolean
function ClientContext:IsContainerEnabledAndVisible() end

--- @return nil
function ClientContext:LuaStartDebugger() end

--- @param enable boolean
--- @return nil
function ClientContext:LuaEnableDebugging(enable) end

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

--- @param ignoreTmp boolean
--- @param ignoreCommon boolean
--- @param precise boolean
--- @return Hit[]
function Collision:Raycast(ignoreTmp, ignoreCommon, precise) end

--- @param pos Vec3
--- @param dir Vec3
--- @param ignoreTmp boolean?
--- @param ignoreCommon boolean?
--- @param precise boolean?
--- @return Hit[]
function Collision:Raycast(pos, dir, ignoreTmp, ignoreCommon, precise) end

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
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Colorbox)
]]
--- @class Colorbox
--- @field value Color
--- @field showNoValue boolean
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
* [Transform](Transform)
* [Script](Script)
* [Camera](Camera)
* [VoxelData](VoxelData)
* [StaticVoxelData](StaticVoxelData)
* [VoxelRenderer](VoxelRenderer)
* [MeshData](MeshRenderer)
* [MeshRenderer](MeshRenderer)
* [Sky](Sky)

[View Documentation](https://docs.atomontage.com/api/Component)
]]
--- @class Component
--- @field active boolean
--- @field activeInHierarchy boolean (readonly)
--- @field object Object (readonly, deprecated)
--- @field obj Object (readonly)
--- @field isDestroyed boolean (readonly)
--- @field type string (readonly)
--- @field Active boolean (deprecated)
--- @field ActiveInHierarchy boolean (readonly, deprecated)
--- @field Object Object (readonly, deprecated)
--- @field Obj Object (readonly, deprecated)
--- @field IsDestroyed boolean (readonly, deprecated)
--- @field Type string (readonly, deprecated)
Component = {}

--[[
`Client`
`Server`

Save and load values for this client. 
These values are stored clients local storage and will be available on all montages he visits.
This is useful for saving settings, last player position, etc.

To avoid naming conflicts with other montages, use a unique prefix for each game. For example, if your game is called "MyGame", you can use "MyGame/" as a prefix for all your keys.

```lua
Config:SetVec3("MyGame/PlayerPosition", player.transform.pos)
```

```lua
local defaultPos = Vec3(0,0,0)
local pos = Config:GetVec3("MyGame/PlayerPosition", defaultPos)
player.transform.pos = pos
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

[View Documentation](https://docs.atomontage.com/api/File)
]]
--- @class File
--- @field filename string (readonly)
--- @field type string (readonly)
--- @field url string (readonly)
--- @field available boolean (readonly)
File = {}

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

[View Documentation](https://docs.atomontage.com/api/Guid)
]]
--- @class Guid
--- @field IsNull boolean (readonly)
Guid = {}

--- @return Guid
function Guid() end

--- @param a Guid
--- @param b Guid
--- @return boolean
function Guid:__eq(a, b) end

--- @param a Guid
--- @param b Guid
--- @return boolean
function Guid:__lt(a, b) end

--- @param a Guid
--- @param b Guid
--- @return boolean
function Guid:__le(a, b) end

--- @param a Guid
--- @return string
function Guid:__tostring(a) end

--- @return string
function Guid:ToString() end

--- @param str string
--- @return Guid
function Guid:FromString(str) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Header)
]]
--- @class Header
--- @field text string
--- @field collapsed boolean
Header = {}

--[[
`Client`
`Server`

Returned by [raycasts](Collision#table-Raycast).

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
--- @field Obj Object? (deprecated)
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

--- @return table[]
function Input:GetEvents() end

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
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Inputbox)
]]
--- @class Inputbox
--- @field value string
--- @field range Range
--- @field inputType UIInputType
--- @field multiLine boolean
--- @field textAlign Vec2
Inputbox = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Label)
]]
--- @class Label
--- @field text string
--- @field multiLine boolean
--- @field textAlign Vec2
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

--- @param name string
--- @param vec Vec3|Vec4
--- @return nil
function Material:SetProperty(name, vec) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/MeshData)
]]
--- @class MeshData
--- @field active boolean
--- @field activeInHierarchy boolean (readonly)
--- @field object Object (readonly)
--- @field obj Object (readonly)
--- @field isDestroyed boolean (readonly)
--- @field type string (readonly)
--- @field Active boolean (deprecated)
--- @field ActiveInHierarchy boolean (readonly, deprecated)
--- @field Object Object (readonly, deprecated)
--- @field Obj Object (readonly, deprecated)
--- @field IsDestroyed boolean (readonly, deprecated)
--- @field Type string (readonly, deprecated)
--- @field resourceUsageMode ResourceUsage
--- @field topology PrimitiveTopology
MeshData = {}

--- @param a MeshData
--- @param b MeshData
--- @return boolean
function MeshData:__eq(a, b) end

--- @param topology PrimitiveTopology?
--- @return nil
function MeshData:ClearShape(topology) end

--- @param pos Vec3
--- @param uv Vec2?
--- @param color Color?
--- @return integer
function MeshData:AddVertex(pos, uv, color) end

--- @param pos Vec3
--- @param color Color
--- @return integer
function MeshData:AddVertex(pos, color) end

--- @param a integer
--- @param b integer?
--- @param c integer?
--- @return nil
function MeshData:AddIndex(a, b, c) end

--- @param shape Shape
--- @param color Color
--- @return nil
function MeshData:AddShape(shape, color) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/MeshRenderer)
]]
--- @class MeshRenderer
--- @field active boolean
--- @field activeInHierarchy boolean (readonly)
--- @field object Object (readonly)
--- @field obj Object (readonly)
--- @field isDestroyed boolean (readonly)
--- @field type string (readonly)
--- @field Active boolean (deprecated)
--- @field ActiveInHierarchy boolean (readonly, deprecated)
--- @field Object Object (readonly, deprecated)
--- @field Obj Object (readonly, deprecated)
--- @field IsDestroyed boolean (readonly, deprecated)
--- @field Type string (readonly, deprecated)
--- @field material Material
MeshRenderer = {}

--- @param a MeshRenderer
--- @param b MeshRenderer
--- @return boolean
function MeshRenderer:__eq(a, b) end

--[[
`Client`
`Server`

The object visible in the hierarchy. Every object has a transform and can have additional components attached to it.


[View Documentation](https://docs.atomontage.com/api/Object)
]]
--- @class Object
--- @field pos Vec3
--- @field posX number
--- @field posY number
--- @field posZ number
--- @field rot Quat
--- @field eulerRot Vec3
--- @field scale number
--- @field localPos Vec3
--- @field localRot Quat
--- @field localEulerRot Vec3
--- @field localScale number
--- @field right Vec3 (readonly)
--- @field up Vec3 (readonly)
--- @field forward Vec3 (readonly)
--- @field name string
--- @field active boolean Set the object to be active or inactive. Inactive objects are not updated or rendered. All its children also become inactive.
--- @field activeInHierarchy boolean (readonly) Readonly. Check if the object is active in the scene. It may be inactive because a parent is inactive.
--- @field save boolean Save this object in the hierarchy. If not saved it will be deleted after lua reset or server restart
--- @field transform Transform (readonly) Get the transform to modify the position, rotation and scale of the object
--- @field isDestroyed boolean (readonly) True if the object was destroyed. Note that references to this object will still be valid 
--- @field id string (readonly) This is id is unique across clients and server
--- @field parent Object?
--- @field children Object[] (readonly)
--- @field siblingIndex integer
--- @field isPrefabObject boolean (readonly)
--- @field components Component[] (readonly)
--- @field voxelData VoxelData? (readonly)
--- @field voxelRenderer VoxelRenderer? (readonly)
--- @field rigidBody RigidBody? (readonly)
--- @field Pos Vec3 (deprecated)
--- @field Rot Quat (deprecated)
--- @field Scale number (deprecated)
--- @field Name string (deprecated)
--- @field Active boolean (deprecated)
--- @field ActiveInHierarchy boolean (readonly, deprecated)
--- @field Save boolean (deprecated)
--- @field IsDestroyed boolean (readonly, deprecated)
--- @field Parent Object? (deprecated)
--- @field Children Object[] (readonly, deprecated)
--- @field SiblingIndex integer (deprecated)
--- @field Components Component[] (readonly, deprecated)
--- @field VoxelData VoxelData? (deprecated)
--- @field VoxelRenderer VoxelRenderer? (deprecated)
--- @field RigidBody RigidBody? (deprecated)
Object = {}

--- @param a Object
--- @param b Object
--- @return boolean
function Object:__eq(a, b) end

--- @param point Vec3
--- @return Vec3
function Object:LocalToWorld(point) end

--- @param point Vec3
--- @return Vec3
function Object:WorldToLocal(point) end

--- @param vec Vec3
--- @return Vec3
function Object:LocalToWorldVec(vec) end

--- @param vec Vec3
--- @return Vec3
function Object:WorldToLocalVec(vec) end

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

--- @return MeshData
function Object:AddMeshData() end

--- @param fileName string
--- @return VoxelData?
function Object:AddVoxelData(fileName) end

--- @param fileName string
--- @return StaticVoxelData?
function Object:AddStaticVoxelData(fileName) end

--- @return VoxelRenderer
function Object:AddVoxelRenderer() end

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

--- @param name string?
--- @return boolean
function Object:IsPrefab(name) end

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

--- @return PhysSimEvent[]
function Object:GetPhysEvents() end

--[[
`Client`
`Server`

Returned by [`Overlap()` functions](Collision#table-GetOverlap).

[View Documentation](https://docs.atomontage.com/api/Overlap)
]]
--- @class Overlap
--- @field center Vec3
--- @field radius number
--- @field obj Object
--- @field Obj Object (deprecated)
--- @field shape Shape
Overlap = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Panel)
]]
--- @class Panel
--- @field scroll boolean
--- @field scrollX boolean
--- @field scrollY boolean
--- @field textureColor Color
Panel = {}

--- @param value Texture
--- @return nil
function Panel:SetTexture(value) end

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

--- @param width number
--- @param height number
--- @param border number
--- @param bevel number
--- @param fromPos Vec3
--- @param toPos Vec3
--- @param fromUp Vec3
--- @param toUp Vec3
--- @param addDirBevels boolean
--- @return nil
function Polyhedron:BuildWheelTrack(width, height, border, bevel, fromPos, toPos, fromUp, toUp, addDirBevels) end

--- @return boolean valid, string error
function Polyhedron:IsValid() end

--- @param pos Vec3
--- @param rot Quat
--- @param scale number
--- @return Polyhedron
function Polyhedron:Transform(pos, rot, scale) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Prefab)
]]
--- @class Prefab
--- @field active boolean
--- @field activeInHierarchy boolean (readonly)
--- @field object Object (readonly)
--- @field obj Object (readonly)
--- @field isDestroyed boolean (readonly)
--- @field type string (readonly)
--- @field Active boolean (deprecated)
--- @field ActiveInHierarchy boolean (readonly, deprecated)
--- @field Object Object (readonly, deprecated)
--- @field Obj Object (readonly, deprecated)
--- @field IsDestroyed boolean (readonly, deprecated)
--- @field Type string (readonly, deprecated)
--- @field name string
--- @field Name string (deprecated)
Prefab = {}

--- @param a Prefab
--- @param b Prefab
--- @return boolean
function Prefab:__eq(a, b) end

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
--- @field Active boolean (deprecated)
--- @field ActiveInHierarchy boolean (readonly, deprecated)
--- @field Object Object (readonly, deprecated)
--- @field Obj Object (readonly, deprecated)
--- @field IsDestroyed boolean (readonly, deprecated)
--- @field Type string (readonly, deprecated)
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
--- @field Velocity Vec3 (deprecated)
--- @field AngularVelocity Vec3 (deprecated)
--- @field Mass number (deprecated)
--- @field MassByObject boolean (deprecated)
--- @field Volume number (deprecated)
--- @field Inertia Vec3 (deprecated)
--- @field InertiaByObject boolean (deprecated)
--- @field InertiaMul number (deprecated)
--- @field Sleeping boolean (deprecated)
--- @field StartSleeping boolean (deprecated)
--- @field AllowSleeping boolean (deprecated)
--- @field Simulate boolean (deprecated)
--- @field CenterOfMass Vec3 (deprecated)
--- @field GravityScale number (deprecated)
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
--- @field VoxelDataResourceTemplateSizeThreshold integer (deprecated)
--- @field SimulationPaused boolean
--- @field SimulationSpeed number
--- @field Gravity number
Scene = {}

--- @return number
function Scene:GetTime() end

--[[

Time passed since the last Update() call. Since time between updates is not constant use this to adjust changes such as movement according to the amount of time that has passed
```lua
function self:Update()
    local speed = 10
    local move = Vec3.right
    --remember to multiply by delta time, since the time passed between each Update() is not constant
    self.transform.pos = self.transform.pos + move * speed * Scene:GetDeltaTime() 
end
```
[View Documentation](https://docs.atomontage.com/api/Scene#number-GetDeltaTime)
]]
--- @return number
function Scene:GetDeltaTime() end

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

Also see [`Scene:MakeNameValid`](#string-MakeNameValid-string)


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

--- @param path string
--- @return Material?
function Scene:CreateMaterial(path) end

--- @return Camera
function Scene:GetActiveCamera() end

--- @param cam Camera
--- @return nil
function Scene:SetActiveCamera(cam) end

--- @param scriptName string
--- @param forObject Object
--- @return string
function Scene:AddNewScriptFile(scriptName, forObject) end

--- @param db string
--- @return VoxelDB?
function Scene:GetVoxelDB(db) end

--- @class TraceRayParams:table
--- @field Origin Vec3
--- @field Dir Vec3
--- @field TraceAtlas boolean
--- @field TraceCommon boolean
--- @field ForceComponents VoxelRenderer[]
--- @field IgnoreComponents VoxelRenderer[]

--- @param p1 TraceRayParams
--- @return Hit[]
function Scene:TraceRay(p1) end

--- @param vr VoxelRenderer
--- @param wcPos Vec3|Vec3[]
--- @return Vec3|Vec3[]
function Scene:ConvertWcToDc(vr, wcPos) end

--- @param vr VoxelRenderer
--- @param dcPos Vec3|Vec3[]
--- @return Vec3|Vec3[]
function Scene:ConvertDcToWc(vr, dcPos) end

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
function Scene:UpdatePrefab(obj) end

--- @param obj Object
--- @return boolean
function Scene:ResetPrefab(obj) end

--- @return nil
function Scene:ResetAllPrefabs() end

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

--- @param value boolean
--- @return nil
function Scene:SetProfileScriptsUpdate(value) end

--- @return table
function Scene:GetSimpleStats() end

--- @return table
function Scene:GetVDRStats() end

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
--- @field Active boolean (deprecated)
--- @field ActiveInHierarchy boolean (readonly, deprecated)
--- @field Object Object (readonly, deprecated)
--- @field Obj Object (readonly, deprecated)
--- @field IsDestroyed boolean (readonly, deprecated)
--- @field Type string (readonly, deprecated)
--- @field instance ScriptInstance
--- @field name string
--- @field file string
--- @field syncToClients boolean
--- @field priority integer
--- @field Instance ScriptInstance (deprecated)
--- @field Name string (deprecated)
--- @field File string (deprecated)
--- @field SyncToClients boolean (deprecated)
--- @field Priority integer (deprecated)
Script = {}

--- @param a Script
--- @param b Script
--- @return boolean
function Script:__eq(a, b) end

--- @param funcName string
--- @vararg any
--- @return integer
function Script:RPC(funcName, ...) end

--- @return string
function Script:GetNetworkFlow() end

--- @return string
function Script:GetScriptUpdateTime() end

--- @return string
function Script:GetScriptCompileTime() end

--- @return string
function Script:GetScriptAttachTime() end

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
--- @field transform Transform The transform of the object this script is attached to
--- @field onServer boolean Use this to run part of the code only on server or client```lua if self.onServer then    -- do something only on serverend```
--- @field onClient boolean Use this to run part of the code only on server or client```lua if self.onClient then    -- do something only on clientend```import { render } from "react-dom"
--- @field Com Script (deprecated)
--- @field Component Script (deprecated)
--- @field component Script (deprecated) The script component, separate from the lua table
--- @field Obj Object (deprecated)
--- @field object Object (deprecated) The object this script is attached to
--- @field Transform Transform (deprecated)
--- @field OnServer boolean (deprecated)
--- @field OnClient boolean (deprecated)
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
            local tf = self.cam.object.transform
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
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Selectbox)
]]
--- @class Selectbox
--- @field value integer
--- @field valueStr string
--- @field values table
Selectbox = {}

--[[
`Server`
:::info Server Only
This class is only available on server
:::

[View Documentation](https://docs.atomontage.com/api/Server)
]]
--- @class Server
--- @field clientID integer (readonly)
--- @field editMode boolean
--- @field modeChangeReloadGeom boolean
--- @field EditMode boolean (deprecated)
--- @field ModeChangeReloadGeom boolean (deprecated)
Server = {}

--- @return integer[]
function Server:GetClients() end

--- @return string[]
function Server:GetUsersID() end

--- @param clientID integer
--- @return integer
function Server:GetUserID(clientID) end

--- @param clientID integer
--- @return boolean
function Server:IsVRClient(clientID) end

--- @param clientID integer
--- @return nil
function Server:DisconnectClient(clientID) end

--- @return integer
function Server:GetScriptsVersion() end

--- @param scriptName string
--- @return string
function Server:GetScript(scriptName) end

--- @return nil
function Server:LuaReset() end

--- @return string[]
function Server:GetLuaFilesList() end

--[[
Voxel files in the Montage/Voxels, those you saved in your montage and they are not necessary uploaded to the cloud already. local montage assets

[View Documentation](https://docs.atomontage.com/api/Server#string-GetVoxelFilesList)
]]
--- @return string[]
function Server:GetVoxelFilesList() end

--[[
Assets in cloud of maker that made this montage

[View Documentation](https://docs.atomontage.com/api/Server#string-GetMakerAssetsList)
]]
--- @return string[]
function Server:GetMakerAssetsList() end

--[[
Common, those we provide cloud with as free to use

[View Documentation](https://docs.atomontage.com/api/Server#string-GetCommonAssetsList)
]]
--- @return string[]
function Server:GetCommonAssetsList() end

--[[
Common scenes

[View Documentation](https://docs.atomontage.com/api/Server#string-GetCommonScenesList)
]]
--- @return string[]
function Server:GetCommonScenesList() end

--- @return string[]
function Server:GetPrefabsList() end

--- @param id integer
--- @return Object
function Server:InsertPrefab(id) end

--- @param id integer
--- @param deepCopy boolean
--- @return Object
function Server:InsertPrefab(id, deepCopy) end

--- @param name string
--- @param newName string?
--- @param setSave boolean?
--- @param deepCopy boolean?
--- @return Object
function Server:InsertPrefab(name, newName, setSave, deepCopy) end

--- @param name string
--- @param setSave boolean
--- @return Object
function Server:InsertPrefab(name, setSave) end

--- @param name string
--- @return nil
function Server:MakePrefab(name) end

--- @return table
function Server:GetInsertPrefabStats() end

--- @param name string
--- @param count integer
--- @return nil
function Server:PreloadVDRsForPrefab(name, count) end

--- @return nil
function Server:SaveScene() end

--- @return nil
function Server:SaveSceneHierarchy() end

--- @return nil
function Server:ReloadScene() end

--- @param reloadTerrain boolean?
--- @return nil
function Server:ResetSceneToInitState(reloadTerrain) end

--- @return nil
function Server:BackupMontage() end

--- @return nil
function Server:OnLuaLog() end

--- @return boolean
function Server:IsClient() end

--- @return boolean
function Server:IsServer() end

--- @return boolean
function Server:DevMode() end

--- @return integer
function Server:GetCurrentUIActionID() end

--- @return nil
function Server:ScrollToLastestLuaLog() end

--- @return CommandLine
function Server:GetCommandLine() end

--- @return table
function Server:GetVersion() end

--- @return System
function Server:GetSystem() end

--- @return string
function Server:GetDateTime() end

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
--- @param onResponse fun(success:boolean, response:string, statusCode:integer, file:File?)
--- @return nil
function Server:HttpDownload(url, headers, onResponse) end

--- @param clientID integer
--- @return integer
function Server:GetPing(clientID) end

--- @param fileLua File
--- @param subPath string
--- @return boolean
function Server:MoveFileToMontageVoxelsFolder(fileLua, subPath) end

--- @param fileLua File
--- @param eventUpdate fun(progress:number)
--- @param eventFinish fun(success:boolean, url:string)
--- @return nil
function Server:MakeUrlForFile(fileLua, eventUpdate, eventFinish) end

--- @param logName string
--- @return number
function Server:GetLogValue(logName) end

--- @return number
function Server:GetFPS() end

--- @return table
function Server:GetStreamingStats() end

--- @return table
function Server:GetMainDispatcherStats() end

--- @return nil
function Server:TriggerCrash() end

--- @return nil
function Server:TriggerException() end

--- @return nil
function Server:TriggerCriticalError() end

--- @return nil
function Server:Restart() end

--- @param name string
--- @param props table
--- @return nil
function Server:AnalyticsServer(name, props) end

--- @param clientID integer
--- @param name string
--- @param props table
--- @return nil
function Server:AnalyticsClient(clientID, name, props) end

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

--- @param api string
--- @return nil
function Server:GenLuaApi(api) end

--- @return nil
function Server:TakeScreenshot() end

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
--- @field VoxelCacheWarningCount integer (deprecated)
--- @field EnableLuaVoxelOpCallstack boolean (deprecated)
--- @field EnableVoxelOpBoundsDraw boolean (deprecated)
--- @field VoxelOpBoundsDrawDuration number (deprecated)
--- @field VoxelOpBoundsShowVMask boolean (deprecated)
--- @field VoxelOpBoundsShowAlbedo boolean (deprecated)
--- @field VoxelOpBoundsShowColor boolean (deprecated)
--- @field VoxelOpBoundsShowNormal boolean (deprecated)
--- @field VoxelOpBoundsShowRoughness boolean (deprecated)
--- @field VoxelOpBoundsShowMetallicity boolean (deprecated)
--- @field VoxelOpBoundsShowMaterials boolean (deprecated)
--- @field EnableVoxelCacheDraw boolean (deprecated)
--- @field EnableVoxelObjectBoundsDraw boolean (deprecated)
--- @field VoxelCacheDrawDuration number (deprecated)
ServerSceneSettings = {}

--[[
`Client`
`Server`

For [voxel edits](VoxelEdit#userdata-shape), [collisions](Collision#Shape-shape) and [rendering](MeshData#nil-AddShape-Shape-Vec4)

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
--- @field Active boolean (deprecated)
--- @field ActiveInHierarchy boolean (readonly, deprecated)
--- @field Object Object (readonly, deprecated)
--- @field Obj Object (readonly, deprecated)
--- @field IsDestroyed boolean (readonly, deprecated)
--- @field Type string (readonly, deprecated)
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
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Slider)
]]
--- @class Slider
--- @field value number
--- @field scalars integer
--- @field sliderType UISliderType
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

Every scene has only **one** static voxel data and can have multiple dynamic voxel data. The static voxel data is used for the world and can not be moved.

[View Documentation](https://docs.atomontage.com/api/StaticVoxelData)
]]
--- @class StaticVoxelData
--- @field active boolean
--- @field activeInHierarchy boolean (readonly)
--- @field object Object (readonly)
--- @field obj Object (readonly)
--- @field isDestroyed boolean (readonly)
--- @field type string (readonly)
--- @field Active boolean (deprecated)
--- @field ActiveInHierarchy boolean (readonly, deprecated)
--- @field Object Object (readonly, deprecated)
--- @field Obj Object (readonly, deprecated)
--- @field IsDestroyed boolean (readonly, deprecated)
--- @field Type string (readonly, deprecated)
--- @field path string
--- @field isLoaded boolean (readonly)
StaticVoxelData = {}

--- @param a StaticVoxelData
--- @param b StaticVoxelData
--- @return boolean
function StaticVoxelData:__eq(a, b) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Sys)
]]
--- @class Sys
Sys = {}

--- @param enumName string
--- @return string[]
function Sys:GetEnumValues(enumName) end

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
Time = {}

--[[
`Client`
`Server`

Holds position, rotation, and scale 

[View Documentation](https://docs.atomontage.com/api/Transform)
]]
--- @class Transform
--- @field active boolean
--- @field activeInHierarchy boolean (readonly)
--- @field object Object (readonly)
--- @field obj Object (readonly)
--- @field isDestroyed boolean (readonly)
--- @field type string (readonly)
--- @field Active boolean (deprecated)
--- @field ActiveInHierarchy boolean (readonly, deprecated)
--- @field Object Object (readonly, deprecated)
--- @field Obj Object (readonly, deprecated)
--- @field IsDestroyed boolean (readonly, deprecated)
--- @field Type string (readonly, deprecated)
--- @field localPos Vec3 The local position of the object relative to its parent
--- @field localScale number The local scale of the object relative to its parent
--- @field localRot Quat The local rotation of the object represented as a quaternion.
--- @field localEulerRot Vec3 The local rotation of the object represented as Euler angles.
--- @field pos Vec3 The global (world) position of the object
--- @field rot Quat The global (world) rotation of the object as a quaternion
--- @field eulerRot Vec3 The global (world) rotation of the object represented as Euler angles.
--- @field scale number The global (world) scale of the object.
--- @field fingerprint number (readonly)
--- @field right Vec3 (readonly) The right direction vector of the object in world space.
--- @field up Vec3 (readonly) The right direction vector of the object in world space.
--- @field forward Vec3 (readonly) The forward direction vector of the object in world space.
Transform = {}

--- @param a Transform
--- @param b Transform
--- @return boolean
function Transform:__eq(a, b) end

--[[
Transforms a local position to world space, allowing you to convert coordinates relative to an object into global coordinates.


[View Documentation](https://docs.atomontage.com/api/Transform#Vec3-LocalToWorld-Vec3-v)
]]
--- @param v Vec3
--- @return Vec3
function Transform:LocalToWorld(v) end

--[[
Converts a world position to local space, making it useful for determining an object's position relative to another object.

[View Documentation](https://docs.atomontage.com/api/Transform#Vec3-WorldToLocal-Vec3-v)
]]
--- @param v Vec3
--- @return Vec3
function Transform:WorldToLocal(v) end

--- @param v Vec3
--- @return Vec3
function Transform:LocalToWorldVec(v) end

--- @param v Vec3
--- @return Vec3
function Transform:WorldToLocalVec(v) end

--[[
Adjusts the object's rotation to look at a specified point in the world, aligning it with the target position.


[View Documentation](https://docs.atomontage.com/api/Transform#nil-LookAt-Vec3-pos-Vec3-up)
]]
--- @param pos Vec3
--- @param up Vec3?
--- @return nil
function Transform:LookAt(pos, up) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/UIItem)
]]
--- @class UIItem
UIItem = {}

--- @return string
function UIItem:GetID() end

--- @return string
function UIItem:GetType() end

--- @return string
function UIItem:GetLabel() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/UILayout)
]]
--- @class UILayout
--- @field mID integer
--- @field mName string
--- @field mWindows table
UILayout = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/UILayouts)
]]
--- @class UILayouts
--- @field mSelected integer
--- @field mLayouts table
UILayouts = {}

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
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Vectorbox)
]]
--- @class Vectorbox
--- @field scalars integer
--- @field integer boolean
--- @field value Vec2|Vec3|Vec4|Vec2i|Vec3i|Vec4i
Vectorbox = {}

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
--- @field BlendEnabled boolean (deprecated)
--- @field BlendMode BlendMode (deprecated)
--- @field BlendOpacity number (deprecated)
--- @field BlendRadiusRatio number (deprecated)
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

--- @param vpos Vec3i
--- @param value boolean
--- @return nil
function VoxelDB:SetMask_deprecated(vpos, value) end

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

--- @param startPos Vec3
--- @param dir Vec3
--- @param maxDistance number
--- @return Hit?
function VoxelDB:TraceRay(startPos, dir, maxDistance) end

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

--- @return table
function VoxelDB:InspectNormals() end

--- @return table
function VoxelDB:Inspect() end

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
--- @field Active boolean (deprecated)
--- @field ActiveInHierarchy boolean (readonly, deprecated)
--- @field Object Object (readonly, deprecated)
--- @field Obj Object (readonly, deprecated)
--- @field IsDestroyed boolean (readonly, deprecated)
--- @field Type string (readonly, deprecated)
--- @field Size Vec3 (readonly, deprecated)
--- @field size Vec3 (readonly)
--- @field path string
--- @field originalPath string (readonly)
--- @field data VoxelDataResource The voxel data resource that this voxel data is using
--- @field save boolean
--- @field editable boolean
VoxelData = {}

--- @param a VoxelData
--- @param b VoxelData
--- @return boolean
function VoxelData:__eq(a, b) end

--- @param worldPos Vec3
--- @param worldNormal Vec3
--- @return nil
function VoxelData:Mirror(worldPos, worldNormal) end

--- @return Vec3 center, Vec3 size
function VoxelData:GetAABounds() end

--- @return Vec3 center, Quat rot, Vec3 size
function VoxelData:GetBounds() end

--- @param path string
--- @return boolean success, string usedPath
function VoxelData:SetPath(path) end

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

[View Documentation](https://docs.atomontage.com/api/VoxelDataResource#string-Save-string-path-boolean-overwrite)
]]
--- @param path string
--- @param overwrite boolean
--- @return string
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
--create an object with voxel data and renderer
local ob = Scene:CreateObject("Voxel Sphere")
local vd = ob:AddComponent("VoxelData")
local vr = ob:AddComponent("VoxelRenderer")
local vres = VoxelDataResource() --new empty voxel data
vd.data = vres
ob.transform.pos = Vec3(0, 30, 0)

--voxel edit    
local ve = VoxelEdit()

--target the object and ignore static voxels
ve.filter.useStatic = false
ve.filter.forceList = { ob }

--add sphere
ve.color = Vec3(0,0.5,1)
ve.shape = Sphere(ob.transform.pos, 1)
ve:Add()
```

Use the copy operation to copy voxels from one object to others or the static voxel data.

```lua
--select some object with voxel data here
local copyFrom = Scene:GetObjectByName("Voxel Sphere")

local ve = VoxelEdit()

--make a box fitting the target to copy from
local b = Box()
local center, size = copyFrom:GetComponentByType("VoxelRenderer"):GetBounds()
b.pos = center
b.size = size
ve.shape = b
ve.filter.useNotStatic = false

--select what data to copy and its pasted transformation
ve.copyResource = copyFrom:GetComponentByType("VoxelData").data
ve.copyDestinationPos = copyFrom.transform.pos
ve.copyDestinationRot = copyFrom.transform.rot
ve.copyDestinationScale = copyFrom.transform.scale
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
--- @field copySourceTr Transform
--- @field copyDestinationTr Transform
--- @field copyDestinationPos Vec3
--- @field copyDestinationRot Quat
--- @field copyDestinationScale number
--- @field copySourcePos Vec3
--- @field copySourceRot Quat
--- @field copySourceScale number
--- @field copyResource VoxelDataResource
--- @field roughness number
--- @field roughnessEnable boolean
--- @field metallicity number
--- @field metallicityEnable boolean
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
--- @field imageNormalBlendEnable boolean
--- @field imageNormalBlendPower number
--- @field onProgress fun(progress:number) callback function. progress from 0-1. May not be called every frame. Is called after script updates 
--- @field onFinished fun(info:RemoveCountInfo) callback function. onFinished is called after onProgress if it was last part
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

--- @param vdr VoxelDataResource
--- @param materialName string
--- @return nil
function VoxelEdit:SetVoxelDataResourceMaterial(vdr, materialName) end

--- @param vdr VoxelDataResource
--- @param destMaterialName string
--- @param srcMaterialName string
--- @param clearSourceMat boolean
--- @return nil
function VoxelEdit:ReplaceVoxelDataResourceMaterial(vdr, destMaterialName, srcMaterialName, clearSourceMat) end

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
`Client`
`Server`

The data will only render if the object also has a `VoxelData` component with data assigned.

[View Documentation](https://docs.atomontage.com/api/VoxelRenderer)
]]
--- @class VoxelRenderer
--- @field active boolean
--- @field activeInHierarchy boolean (readonly)
--- @field object Object (readonly)
--- @field obj Object (readonly)
--- @field isDestroyed boolean (readonly)
--- @field type string (readonly)
--- @field Active boolean (deprecated)
--- @field ActiveInHierarchy boolean (readonly, deprecated)
--- @field Object Object (readonly, deprecated)
--- @field Obj Object (readonly, deprecated)
--- @field IsDestroyed boolean (readonly, deprecated)
--- @field Type string (readonly, deprecated)
--- @field syncToClients boolean
--- @field enabled boolean
--- @field prioritizeLod boolean Try to load higher LODs faster than those of other objects
--- @field outline boolean Draw an outline around this object
--- @field tintColor Color Render with a tint color
--- @field receiveTransform boolean Receive transform(pos, rot scale) to render with from server. By default this is true. If you set this to false, you will need to manually set the transform of the object on the client side.This is useful for making objects respond immediately if something happened on the client side i.e. input
--- @field lodBias number
--- @field LodBias number (deprecated)
VoxelRenderer = {}

--- @param a VoxelRenderer
--- @param b VoxelRenderer
--- @return boolean
function VoxelRenderer:__eq(a, b) end

--[[
World position and size of AABB (axis-aligned bounding box) of the object

[View Documentation](https://docs.atomontage.com/api/VoxelRenderer#Vec3-center-Vec3-size-GetAABounds)
]]
--- @return Vec3 center, Vec3 size
function VoxelRenderer:GetAABounds() end

--- @return Vec3 center, Quat rot, Vec3 size
function VoxelRenderer:GetBounds() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Window)
]]
--- @class Window
--- @field luaFile string
--- @field header boolean
--- @field text string
--- @field scroll boolean
--- @field scrollX boolean
--- @field scrollY boolean
--- @field stayOnBottom boolean
--- @field stayOnTop boolean
--- @field resizable boolean
--- @field obj table
Window = {}

--- @return nil
function Window:Close() end

--- @return boolean
function Window:IsPopup() end

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

--- @enum ClientMode
ClientMode = {
	View = 0,
	Edit = 1,
	DevDebug = 2,
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

--- @enum UIActionsPlace
UIActionsPlace = {
	Client = 0,
	Server = 1,
	Inherited = 2,
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

--- @enum UIItemType
UIItemType = {
	Undefined = 0,
	Window = 1,
	Header = 2,
	Panel = 3,
	Grid = 4,
	Tab = 5,
	Separator = 6,
	Button = 7,
	Number = 8,
	Wheel = 9,
	TextInput = 10,
	ListBox = 11,
	ListBoxSimple = 12,
	ListBoxEnum = 13,
	CheckBox = 14,
	Radio = 15,
	Label = 16,
	Color = 17,
	Vector = 18,
	Matrix = 19,
	Transformation = 20,
	Plot = 21,
	Count = 22,
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

