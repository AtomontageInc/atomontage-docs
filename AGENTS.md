# Atomontage Docs — Agent Guide

This repo is the Docusaurus site for the Atomontage Lua API. The API reference pages
under `docs/api/` and the EmmyLua annotation file (`generator/emmyApi/apiEmmyAtomontage.lua`)
are **generated** from the engine's live Lua bindings — do not hand-edit the generated
parts. Hand-written prose (intros, descriptions, examples) inside the `.mdx` files IS
preserved across regenerations.

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
Serialize it with the engine's built-in `serpent` and write it to `generator/bindingDump.txt`:

```bash
cd "C:/Users/maxkr/Documents/Code/Atomontage/atomontage/Resources/Sdk/Montage"
./atomo run-lua 'return serpent.dump(AE:GetAELuaBindings())' \
  > "C:/Users/maxkr/Documents/Code/Atomontage Projects/atomontage-docs/generator/bindingDump.txt"
```

`atomo run-lua` runs on the **server**; the bindings are identical on client and server,
so there is no separate client dump (the old two-file `bindingDumpServer.txt` /
`bindingDumpClient.txt` split was retired). The output starts with `do local _={` and ends
with `;return _;end` — that's valid loadable Lua, ~380 KB.

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

**Pass `main.lua` as an absolute path.** `main.lua` derives the repo root from its own
script path (`debug.getinfo`); a relative path makes that regex return `nil` and the
file-copy step fails with `attempt to concatenate local 'repoRoot'`.

`main.lua` runs `genDocsNew:gen()` and then `xcopy`s the generated EmmyLua API into the
engine install (`...\atomontage\Resources\Studio\LuaApi\...` and `...\Sdk\Montage\`). The
`atomontage` install path is hard-coded near the top of `main.lua` — update it on a
different machine.

### Reading the output

A successful run ends with `done`. Other lines are informational, not errors:

- **`<class> ### ... is old but has documentation, delete manually`** — a method/property
  that no longer exists in the bindings, but whose `.mdx` heading has hand-written prose.
  The generator leaves it in place; remove the heading by hand if the API really dropped it.
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
- `generator/genEmmy.lua` — emits `generator/emmyApi/apiEmmyAtomontage.lua`.
- `generator/genDocs.lua` — **dead** old generator (commented out in `main.lua`); ignore.
- `generator/serpent.lua` / `util.lua` — serializer and helpers.
- `generator/bindingDump.txt` — the captured bindings (input, from Step 1).
