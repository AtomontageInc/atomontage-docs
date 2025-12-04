@echo off
setlocal EnableExtensions EnableDelayedExpansion

REM Search for the latest actboy168.lua-debug extension
set "CURSOR_EXT=%USERPROFILE%\.cursor\extensions"
set "VSCODE_EXT=%USERPROFILE%\.vscode\extensions"
set "FOUND="

REM Check Cursor extensions first, then VS Code
for %%D in ("%CURSOR_EXT%" "%VSCODE_EXT%") do (
    if exist %%~fD (
        for /f "delims=" %%P in ('dir /b /ad /s "%%~fD\actboy168.lua-debug-*" 2^>nul ^| sort /r') do (
            set "EXT_PATH=%%P"
            if exist "!EXT_PATH!\runtime\win32-x64\luajit\lua.exe" (
                set "FOUND=!EXT_PATH!\runtime\win32-x64\luajit\lua.exe"
                goto :found
            )
        )
    )
)

:found
if not defined FOUND (
    echo Error: Could not find actboy168.lua-debug extension 1>&2
    exit /b 1
)

REM Execute lua.exe with all passed arguments
"!FOUND!" %*
endlocal

