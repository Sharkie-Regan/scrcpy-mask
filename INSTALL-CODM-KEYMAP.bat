@echo off
title CODM keymap installer for scrcpy-mask
echo.
echo  ================================================
echo    Installing CODM keymap into scrcpy-mask
echo  ================================================
echo.

set "DEST=%APPDATA%\com.akichase.scrcpy-mask\mapping"

if not exist "%~dp0CODM.json" goto nojson

if not exist "%DEST%" mkdir "%DEST%"
copy /y "%~dp0CODM.json" "%DEST%\CODM.json" >nul

if errorlevel 1 goto fail

echo  [OK] CODM keymap installed to:
echo       %DEST%\CODM.json
echo.
echo  Next steps:
echo   1. Start scrcpy-mask.exe and connect your phone
echo   2. Open the Mapping page and select "CODM"
echo   3. Press F in game to toggle mouse aiming
echo.
echo  Run this installer again after every scrcpy-mask
echo  update if the keymap disappears.
echo.
pause
exit /b 0

:nojson
echo  [X] CODM.json not found next to this installer.
pause
exit /b 1

:fail
echo  [X] Copy failed. Try running this file as Administrator.
pause
exit /b 1
