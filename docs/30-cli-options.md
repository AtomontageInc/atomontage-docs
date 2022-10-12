# Atomontage CLI options

These command line args should be helpful and some even necessary in production builds as of Oct 12, 2020. Issues with LODs will occur 
if they're not used on Server. Additional args (toward the bottom) can be helpful while debugging or just to keep the user 
experience OK with diverse data sets (large scenes vs small models) without the need of adjusting the user control (mouse/keyb 
used for moving through/around a large scene vs small model).

## A) Command line args that make Server-Client work properly with the current (Oct 12, 2020) build:

* **--dummy-aevvrend-cam** (enables a stationary internal camera for an optimal streaming experience) - use --dummy-aevvrend-cam 0 as override for disabling it if there's a default command line on cloud server that enables the dummy camera

* **--dummy-aevvrend-cam-preset X** - sets up a dummy aevv renderer camera that "looks" presumably where no geometry is - this helps de-stress some of the subsystems (and clients) as long as the implementation of streaming is rather basic; X is a preset (0-ignored, 1-camera 20m below ground and looking down)

* **--dummy-aevvrend-cam-by-client** - sets aevv_rend internal logic use (dummy) camera that mirrors the camera of the first client of all currently connected ones (disables it if specified with a zero value: --dummy-aevvrend-cam-by-client 0 )

* **--amfile-geometry-optimal-size N** (N is in meters, 50 seems to be a good value, and it makes bad LODs and geometry disappearing on client not happening anymore; use --amfile-geometry-optimal-size 0 for disabling it if some size is enabled by default in cloud server) - WILL BE REPLACED BY SOMETHING MORE MEANINGFUL SOON; NOTE: as of Jan 15, 2021 bad LODs and disappearing of geometry on client doesn't seem to be a big issue anymore, the many fixes didn't really solve the underlying problem, but the problem won't manifest in most if not all common situations anymore

--amfile-geometry-pot-scale=N this scales model from the sole .am file loaded with a 2^N scale (mind the '=' or it won't work with negative numbers!); It's a good idea to not going over the roof with the scaling factor (negative or positive) - there are still quite some internal limits and unfinished code that may fail with scenes scaled up or down too much; NOTE: this parameter will be replaced with --amfilepotscale (read below)

--render-device Null (automatically enables the dummy aevvrend cam)

--ra-compile-ms N - sets time window for RA compilation (should be >10), 30 on a fast machine should be enough to allow compilation of at least 30 RAs, which is important while editing (default is 50)

--ra-compile-nodes-max N - max number of RAs compiled in a frame; generally on a fast server with client data management completed (summer 2021?) this limit should be rather high - so all clients receive as much data as they can (could be hundreds if not thousands - but what CPU can do that? (default is 50)

--aevv-load-nodes-max N - max VV RAs to load - if pipeline works well, then there won't be any processing of the data on server, so this number could go into thousands if client data management is completed (summer 2021?) (default is 100)

--render-device-refreshrate N - only works if null renderer

--max-nullrenderer-server-fps N - sets max FPS for a null-renderer server for when at least one client is connected; default is 33

--max-rendering-server-fps N - 0 disables the throttling

--max-client-fps N - 0 disables the throttling

--idle-nullrenderer-server-fps N - sets FPS for a null-renderer server for when no client is connected - this helps save compute on a server machine where multiple server apps are running; default is 10

--kill-client-timeout N - disconnects a client that hasn't been sending messages for N seconds - this will be global settings for all clients, but can be customized - just tell me you need that; default is 10

--throttling-tolerance X - how tolerant against network performance fluctuations the throttling should be (0.0 - very sensitive, may throttle too much while editing, ... 2.0 - quite tolerant, even a 200ms latency buildup won't trigger full throttling (but will be partial))

--throttling-latency-source PARAM where string PARAM can be either recvlag (old default) or sendlag (NEW DEFAULT!) - recvlag tests incoming connection latency and manages outgoing data quantities based on it (useful with simplex regime), sendlag reads outgoing throughput and if latency there is going up, it throttles next data throughputs based on that

--min-send-kbits-per-sec N - sets low limit for data sent per second - the throttling won't try to limit data throughput even more - this helps to avoid a situation when the throttling "overshoots" too much and causes no data being transferred for too long

--stalling-send-kbits-per-sec N - sets limit for max data sent per second

--max_connections N - set max number of clients able to connect

--extra_connections N - set number of additional internal connections used to established connection even on full server, the connection is used to send "server is full" error message just before client is kicked from full server

B) Examples of additional command line args that allow loading multiple files (now only .aevv ones), create mutiple renderable entities, etc.

NOTE: NEGATIVE PARAMS MUST USE '=', so --amfile2potscale -2 is invalid, --amfile2potscale=-2 is OK

NOTE2: most examples of parameters below start with --amfile2 so they'll apply to entity #2 (=third entity created, which may or may not relate to the third file loaded - read the comments and final examples carefully)

DISCUSS WITH BRANO IF SOMETHING IS NOT WORKING THE WAY YOU EXPECT

--aevvfile "v0.aevv" --aevvfile1 "v1.aevv" --aevvfile2 "v2.aevv" - this would load 3 files and works up to --aevvfile999 (the first one --amfile operates as usual, the further ones trigger creating of additional entities from the additional files)

--aevvfileNignore (only applies to amfile1 and above, not to amfile!) - this will skip anything related to the file, so it won't even be loaded, none of its additional parameters (below) will be processed - this feature is good for overriding (ignoring) what ever there was in the default command line when invoked from the cloud environment; Example: --amfile2 "file.aevv" --amfile2ignore - this will completely ignore file.aevv and processing will continue with --amfile3 and above

--aevvfileNstop (only applies to amfile1 and above, not to amfile!) - stops command line processing at this index, no more file pathnames/parameters will be read; Example: --amfile f0.aevv --amfile1 f1.aevv --amfile2 f2.aevv --amfile3 f3.aevv --amfile4 f4.aevv --amfile2stop - this will only load files f0.aevv and f1.aevv

--aevvfile2tm 1+0+0+0+0+1+0+0+0+0+1+0+0+0-15+1 - adds 4x4 transform matrix in meters - in this case the third entity will be translated by -15m in Z-direction (scaling must be unit (no scaling) as of Dec 2020!) - must be a valid set of 16 signed float values with no spaces, or the option not used at all

--aevvfile2potscale=-2 - shrinks the geometry 4x (the argument is a power-of-two scale exponent) - only applies once for a particular file (if specified for the first entity created from that file, as it scales the data while loading and a particular file is loaded only once!), default is 0

--aevvfile2paused - starts the playback paused

--aevvfile2speed=-0.5 - video playback of the third entity/file (if it's a video) will be at half the speed in reverse direction, default is 1.0

--aevvfile2startatms 60000  - starts playback of the third entity/file at the beginning of the second minute (will be clamped or modulo-ed correctly if the VV is shorter (what exactly happens depends on the playback mode EntityPlaybackRec::PlaybackMode), negative value will be ignored), default is 0 (or negative -> ignored, resulting in 0)

--aevvfile2startatframe 33 - start the third entity/file (if VV) at the given frame (negative value will be ignored), default is 0 (or negative -> ignored, resulting in 0)

--aevvfile2ramcopy 1 - the file will be copied to RAM as is (if specified for the first entity created from that file, as it applies to the loading itself, and one file is loaded only once with its first mention on the command line!) - default is 0

--aevvfile2release 1 - renderer can release loaded geometry from the coder (use with care!) - default is 0; NOTE: as of Jan15, 2021 enabling release will break streaming, so avoid it

--aevvfile2unpack 0 - won't load and decompress content on load, so it'll be decompressed when it's requested) - default is 1;  (this only matters if specified for the first entity created from that file, as it applies to the loading itself, and one file is loaded only once with its first mention on the command line!)

The topmost args above (in A) ) enforce 2 things:

The model that has been read from the file will be scanned for its true AABB, and scaled up or down with a PoT scale (fast, no resampling) to get as close as possible to say a 50m size (largest AABB dimension), that is such model will be somewhere between 33m and 66m large. This makes sure that the LOD logic can easily analyze, process and stream the root nodes within the first frame, which in turn helps the LOD logic on Client avoid getting confused with missing root node data far from the camera.

Dummy internal aevv_renderer's camera (on server) is set in such a way that it "sees" the whole model, or as much of it as possible while meaningfully close to scene origin, and that way helps the LOD systems on both Client and Server work OK. This way it also minimizes resource usage on Server, clients, and it also helps stress the streaming as little as possible; NOTE: as of Jan 15, 2021 this doesn't seem to be a big issue anymore, the many fixes didn't really solve this problem, but the problem won't manifest in most if not all common situations anymore

If Null device enabled, the dummy aevvrend camera will be automatically enabled as well

Notes:

These command line args are read in FirstScene.cpp (FirstScene and VPuzzleObject's ctors and other methods), so if any of you use a different "main" or whatever, the few related LoCs should be copied there (LMK if that's the case).

Dummy aevvrend camera should never be enabled on Client (will assert in debug; in release the rendering will work but LODs will be under control of the dummy stationary camera)

C) LOD debugging, detail, etc.:

--aevvrend-detail X sets specific detail setting (works on server as well as client; client will receive data based on server's setting, but render detail based on its own (client's) setting - that means higher detail data won't be rendered if client detail level set lower than the server's); default is 400, don't go below 30 or so - it would make renderer fail to do some visibility math; also 2000 is overkill and will easily make things go super slow if geometry is sufficiently large or detailed; also WASM or other thin client may suffer badly and crash if it receives too much data (if server's setting high)

--aevvrend-lodcol-amount X this makes different LODs appear with different color tint (red for LOD#0, etc.); the float value X is something like a blending factor - 0.1 will make the coloring barely visible, 0.4 is good for debugging issues with the LOD system in most circumstances; flashes will show render atoms that have just been (re-)compiled or (re-)received and rendered for the first time

D) AEVV compilation (documentation changed on Sep 10 2021, code will get into master shortly)

Run atomontage-cli encode-aevv <input-file> <output-file-without-extension> the current implementation will create a file: output-file-without-extension.rgba32.aevv or output-file-without-extension.dxt1wa.aevv depending on the encoding setting (default is DXT1)

You can run atomontage-cli encode-aevv --help to see other optional parameters, but also listing them here 

--sample-format (optional) specifies target sample encoding, options are "RGBA" (will result in large file), "DXT1wA" (recommended) or "ETC2ptA" (not supported fully, yet)

--compression (optional) specifies file data compression, options are "RAW", "ZSTD" and "LZMA" (not relevant in the context of  the recompress-to-zstd option - the ZSTD compression is hard-coded there),

--recompress-to-zstd  (optional) will create another file with ZSTD-compressed content (identical VV, just compressed), pathname will be output-file-without-extension.rgba32.zstd.aevv or output-file-without-extension.dxt1wa.zstd.aevv; NOTE: FOR NOW IT'S BEST USING THIS OPTION AND ONLY WORKING WITH THE .zstd.aevv FILES

Full command line example:  atomontage-cli encode-aevv "d:/landscape.am" "d:/test" --sample-format DXT1wA --recompress-to-zstd  will load landscape.am (can load a single .am file only - true for viewing as well as VV encoding!), encode it into d:/test.dxt1wa.aevv and d:/test.dxt1wa.zstd.aevv - then use the .zstd version only (the non-zstd one will most likely have a bug)

E) Misc:

--print-voxel-stats - prints voxel stats after loading an .am file (won't work with AEVV files)

--channel-rendering - enable channel rendering by default

--phys_enable (self explanatory) - this also enables update of voxel collidee wrappers, which may be costly and may have bugs, so it's good to keep physics disabled for demos that don't require it 

--phys-sim-speed x - speed coefficient for simulation speed (>=0, ignored if negative), example: --phys-sim-speed=0.1 will make simulation run very slow

--phys-fixed-step-ms N - enables fixed step (per frame) with length of N milliseconds (> 0), ignored if <= 0 (step will match time passed)

--phys-lodomainstep-ms N - shortest step simulated (few objects will use this, some will use 2x the step, few will use 4x it, etc.); default is 8 (this makes possible steps 8, 16, 32, 64.. ms long which is great for shooting videos with fixed phys step of 32ms or 16ms (OK for 30fps or 60fps ones respectively) as there will be a guarantee that objects will make same numbers of steps per each frame (-> smooth motion); example: --phys-lodomainstep-ms 8

--splat-rangem-pow min+max+pow - sets size range of splat(s) in explosion tool, and the power of the function of distribution of these (pow value towards 0.5 makes most splats sized towards max; pow value towards 2 or above makes most of them sized mostly towards min - think of f(x) = x^pow for x from <0, 1>); also note that splat size is clamped internally to about max 512 voxels per effect's max AABB dimension, so at SDP6 that'd be about 8m (8m x 2^6=512vx) but at SDP8 it'd only be 2m; default is 0.2, 0.6 and 1.5 or the equivalent example: --splat-rangem-pow 0.2+0.6+1.5

--legacy-paint-radiusm - (must be done on client if using client) sets radius of the legacy paint tool (triggered with 't'), default is .25f

--legacy-blob-radiusm - (must be done on client if using client) sets radius of the legacy blob tool (triggered with 't'), default is .2f

--legacy-blob-embedcf - (must be done on client if using client) sets embedding coeff of the legacy blob tool, default is 0.75

--legacy-eraser-radiusm - (must be done on client if using client) sets radius of the legacy eraser tool (triggered with 't'), default is .25f

--legacy-eraser-embedcf - (must be done on client if using client) sets embedding coeff of the legacy eraser tool, default is 0.33

--vehicle-generated-apc or --vehicle-generated-apc N - enables one or multiple generated APCs

--vehicle-generatedapc-parts - paths to .am part files (main body, turret, cannon, wheel0, wheel1, wheel2, wheel3, example: --vehicle-generatedapc-parts "/amfiles/UID-FILE-3JQUeKcEnCqSGpko5Cc2l1s.am+/amfiles/UID-FILE-ofWPMGd9D6RMlRJ1Ih6qdlq.am+/amfiles/UID-FILE-p4C9Q0obx1Qp7SiWrAuPioK.am+/amfiles/UID-FILE-4droIfB17XyfuJnhH4tHWyq.am+/amfiles/UID-FILE-G6fKQMk63rM3nQ0gVSHgsiu.am+/amfiles/UID-FILE-r8wq7jaMewL2f739rCg4gse.am+/amfiles/UID-FILE-247eSOaJq08RBXkpYk64SVR.am" ) (alternatively it loads predefined files from a directory specified as/example: --vehicles-parts-path "F:/AtomoData/combat_demo/" - which is only useful if part files aren't hash names (ie on your disk)!!!)  ... ask  or  how to set this up on your disk or in MM; NOTE: all N vehicles will use the some voxel parts

--vehicle-generated-apc-logo X - specifies alpha (or similar coeff) for placing Atomontage logos on vehicles, x can be 0..1, default is 0.5, 0 disables the logos

F) Tools and UI

--amsave - shows Save AM file button to use, the button appears in Main Menu on client side and saves the voxel databaze on server side into Montage/Voxels folder.

--force_ui_layout String - (server side) - tells server to give only specified ui layout to connected clients. example: --force_ui_layout View makes server serving only a few windows from the UI to clients, those that are specified for View layout in the UI definition. Use --force_ui_layout Edit to get full UI on connected clients. Use left Ctrl+Shift+A+E shortcut in any client to get full UI from server on runtime.

--cryptoapp starts Client app without AE logos and other AE-related UI

--allow_sentry_triggers allow crash/critical error/exception functions even for non dev builds, for dev builds it's always allowed

G) Client, Server, Url 

--server - runs studio app as server-only.

--client - runs studio app as client-only.

--montage_url - connects the client or studio app to specified montage. For studio app this must be combined with --client.

--connect_by_url - use with studio app together with --client to start a client with input montage url dialog.

--server_ip - use with client app, or with studio app with --client argument to specify IP of the server to connect to.

--use_persist_folder - specify the persist folder to use with Server. Example: --use_persist_folder "C:\my_folder". Specify empty string to not use the persist folder at all.

--autokick t time till client gets automatically disconnected with no input. By default warn after 60 secs and kick after 90

H) Effects

--disable-ssao disable Screen Space Ambient Oclusion

--disable-dof disable Depth of Field

--disable-tonemapping disable Tone mapping

--disable-outline-effect disable Outline effect

--disable-fxaa disable Fast Approximate Anti-Aliasing




# Header

Your text

The file name is used in the sidebar and url
The number in the file name is used for ordering in the sidebar

# Heading (rank 1)
## Heading 2
### 3
#### 4
##### 5
###### 6

> Block quote

* Unordered
* List

1. Ordered
2. List

A paragraph, introducing a thematic break:

---

```lua
some.code()
```

a [link](https://example.com), 
an ![image](/img/logo.svg) , 
some *emphasis*,
something **strong**, and finally a little `code()`.
