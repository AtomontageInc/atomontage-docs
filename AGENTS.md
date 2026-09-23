# Atomontage Docs — Agent Guide

This repo is the Docusaurus site for the Atomontage Lua API. The API reference pages
under `docs/api/` and the EmmyLua annotation file (`generator/emmyApi/apiEmmyAtomontage.lua`)
are **generated** from the engine's live Lua bindings — do not hand-edit the generated
parts. Hand-written prose (intros, descriptions, examples) inside the `.mdx` files IS
preserved across regenerations.

**The `.mdx` prose is the only place a C++ member's description survives.** The API has two
sources and they behave differently:

- **C++ bindings** (the dump): the generator takes names, types and signatures and **drops the
  `LuaDocClass` description**. `genEmmy.lua`'s `writeProps`/`writeMethods` read the description
  back out of the `.mdx` body instead. So a newly bound C++ member arrives as a bare heading and
  an undescribed EmmyLua `@field` until someone writes prose under that heading here.
- **Lua system scripts** (`generator/genLuaProto.lua`, harvesting `Resources/ScriptSys/*.lua`):
  these carry their own EmmyLua annotations, and the generator seeds the `.mdx` body from them.
  They arrive fully documented and stay in sync on their own — that is why `TextWidth`,
  `TextFontSizePx` and `OpBase:AcceptStall` have descriptions nobody wrote here.

Two consequences worth internalising: **never hand-maintain `apiEmmyAtomontage.lua`** — the next
run overwrites both engine copies of it, so an entry that exists nowhere else is simply lost
(a hand-added `Mat3x4` class died exactly this way). And when you add a C++ binding, the
`LuaDocClass` entry makes it *appear* in the docs, but copying its description into the `.mdx`
here is what makes it *documented*.

## Regenerating the API docs

Two steps: (1) grab the bindings from the running engine with `atomo`, (2) run the
generator here.

> **Paths below are from one machine (the usual maintainer's).** Treat the absolute
> paths — the `...\atomontage\Resources\Sdk\Montage` Montage folder, this repo's location,
> and the hard-coded `atomontage` install path near the top of `main.lua` — as examples and
> adjust them to your own checkout. The relative paths (`generator/...`, `scripts/...`) are
> stable.

### Prerequisites

- **Atomontage Studio must be running and connected.** Verify with:
  ```bash
  cd "C:/Users/maxkr/Documents/Code/Atomontage/atomontage/Resources/Sdk/Montage"
  ./atomo status
  ```
  It should report the client is "Fully started, connected and running". The `atomo`
  CLI lives in that Montage folder (see its own `AGENTS.md` for the full CLI reference).

### Step 1 — Grab the bindings

`AE:GetAELuaBindings()` returns the full `{Classes=..., Enums=...}` table; each class entry
carries its own `onServer`/`onClient` flags, so a **single** dump is all that's needed.
Serialize it with the engine's built-in `serpent` and write it to `generator/bindingDump.txt`.

**Dump from the CLIENT, not the server.** The client registry is a strict superset: same
classes and members as the server's, *plus* the whole UI family (`Widget`, `Window`, `Panel`,
`Button`, … — 16 classes and 10 `UI*`/`WidgetEvent` enums, over half of all members). A server
dump makes the generator delete every one of those from the docs and the EmmyLua, silently.
Verified 2026-09-05: server 67 classes / 1525 members, client 83 / 3398, with zero members the
server had and the client lacked.

The dump is ~630 KB and takes longer to serialize than the mcp bridge's ~10 s response timeout,
so it cannot come back in one call — cache it in a client global and pull it in slices
(the first call 504s; the engine still runs it, and the global is there afterwards):

```bash
cd ".../Resources/Sdk/Montage"
./atomo run-lua-client '__D = serpent.dump(AE:GetAELuaBindings()) return #__D'   # 504s, still runs
./atomo run-lua-client 'return __D and #__D or -1'                              # the byte length
./atomo run-lua-client 'return __D:sub(1,120000)'                               # repeat per slice
```

Concatenate the slices in order and write the file as **UTF-8 without BOM**. `#__D` counts
*bytes* while a shell captures *characters*, so a slice looks short by the number of non-ASCII
bytes it holds (~31 em-dashes in doc strings, 93 bytes) — compare the finished file's byte size
against `#__D`, not the character count. 120 KB slices are safe; the boundaries have never
landed inside a multi-byte sequence, and a split one would show up as U+FFFD.

The output starts with `do local _={` and ends with `;return _;end` — valid loadable Lua.

### Step 2 — Run the generator

The generator is plain desktop Lua (uses `io`/`os`), run with **luajit** from the
[actboy168.lua-debug] VS Code/Cursor extension. The VS Code "Launch" config
(`.vscode/launch.json`) runs it via `scripts/find-lua-exe.cmd`; from Git Bash that `.cmd`
is unreliable (it collides with Unix `sort`), so locate the interpreter directly:

```bash
cd "C:/Users/maxkr/Documents/Code/Atomontage Projects/atomontage-docs"
LUA=$(find ~/.cursor/extensions ~/.vscode/extensions \
  -ipath '*actboy168.lua-debug-*win32-x64/runtime/win32-x64/luajit/lua.exe' 2>/dev/null \
  | sort -r | head -1)
ROOT=$(pwd -W)
"$LUA" "$ROOT/generator/main.lua"
```

From PowerShell, invoke the same `lua.exe` directly (note `%USERPROFILE%` — on a machine where
an agent account drives the tooling the extension lives under *that* profile, not the maintainer's):

```powershell
cd "C:\Users\maxkr\Documents\Code\Atomontage Projects\atomontage-docs"
& "$env:USERPROFILE\.cursor\extensions\actboy168.lua-debug-2.3.0-win32-x64\runtime\win32-x64\luajit\lua.exe" `
  "$PWD\generator\main.lua"
```

**Pass `main.lua` as an absolute path.** `main.lua` derives the repo root from its own
script path (`debug.getinfo`); a relative path makes that regex return `nil` and the
file-copy step fails with `attempt to concatenate local 'repoRoot'`.

`main.lua` runs `genDocsNew:gen()` and then `xcopy`s the generated EmmyLua API into the
engine install (`...\atomontage\Resources\Studio\LuaApi\...` and `...\Sdk\Montage\`). The
`atomontage` install path is hard-coded near the top of `main.lua` — update it on a
different machine.

### Reading the output

A successful run ends with `done`. **Read the whole log — it is a work list, not a receipt.**
The lines below are not errors, but the first needs hand-migration that only you can do.
(`A subdirectory or file docs\api\ already exists.` and `1 File(s) copied` are expected noise
from `mkdir`/`xcopy`.)

- **`<class> ### ... is old but has documentation, delete manually`** — a method/property
  whose `.mdx` heading has hand-written prose but which the new bindings no longer carry.
  The generator leaves it in place, so it keeps flowing into the EmmyLua and the language
  server keeps autocompleting API that does not exist. **Do not just delete it — first work
  out which of two cases it is:**
  - **Renamed / reshaped** (a param added, a type widened, an overload merged): the same
    member is in the file under a new heading, freshly generated and *empty*. **Move the prose
    to the new heading, then delete the old one.** This prose is hand-written and is usually
    far better than anything regenerated — losing it is the one irreversible outcome of a run.
    Check the whole file: the new heading is appended near the end, not next to the old one.
  - **Genuinely removed**: no other heading declares that member. Confirm against the engine
    source (`Sources/**`: no `u["Name"] =` binding, no `LuaDocClass` entry) before deleting —
    a member disappears from the dump when only its *doc entry* was dropped, while the binding
    still works. If prose survives elsewhere (a family folded into one table property, say),
    fold it in there instead of dropping it.

  Re-run the generator afterwards; a clean run prints no such lines at all. The run is
  idempotent — running it twice with no edits in between reproduces the emmy byte for byte,
  so a hash comparison is a cheap sanity check.
- **`Old class file: <name>.mdx`** — an `.mdx` whose class no longer exists in the bindings.
  Not auto-deleted (it may hold prose). Check it for documentation, then delete manually.
- **`Old enum file: <name>.mdx, deleted`** — orphaned enum file, auto-removed (enums never
  hold hand-written prose).

### Preview the site

```bash
npm install   # first time
npm start     # dev server
npm run build # production build
```

## Generator layout

- `generator/main.lua` — entry point: runs the generator, copies EmmyLua into the engine.
- `generator/genDocsNew.lua` — **active** generator (loads `bindingDump.txt`, writes `.mdx`).
- `generator/genEmmy.lua` — emits `generator/emmyApi/apiEmmyAtomontage.lua`. Holds
  `manualMethodOverrides` (generics, static `.` calls, overloads) and the widget `classBase`
  map — put emmy-only special cases there so they survive a regeneration.
- `generator/genLuaProto.lua` — merges the annotated Lua system scripts into the bindings
  table. Its `SCRIPT_DIR` is hard-coded per machine, like `main.lua`'s install path.
- `generator/genDocs.lua` — **dead** old generator (commented out in `main.lua`); ignore.
- `generator/serpent.lua` / `util.lua` — serializer and helpers.
- `generator/bindingDump.txt` — the captured bindings (input, from Step 1).
