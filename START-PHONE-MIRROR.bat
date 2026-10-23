@echo off
title scrcpy v5.0.1 gamer edition
cd /d "%~dp0"
echo.
echo  ============================================
echo    scrcpy v5.0.1  -  gamer edition launcher
echo  ============================================
echo.

if not exist "scrcpy.exe" goto noexe

echo  Pick a mode:
echo.
echo    1 = Daily mode   - clipboard auto-sync + real keyboard (uhid)
echo                       type anywhere, no IME box needed
echo    2 = Gaming mode  - daily + hardware mouse passthrough
echo                       for games with native keyboard/mouse support
echo                       like Minecraft PE and Chromebook-ready games
echo    3 = Wireless     - connect over Wi-Fi, no USB cable
echo                       phone and PC must be on the same Wi-Fi
echo    4 = Classic      - plain scrcpy with default settings
echo.
set /p choice=Type 1, 2, 3 or 4 and press Enter: 

if "%choice%"=="2" goto gaming
if "%choice%"=="3" goto wireless
if "%choice%"=="4" goto classic

:daily
scrcpy.exe --keyboard=uhid --stay-awake
goto end

:gaming
scrcpy.exe --keyboard=uhid --mouse=uhid --stay-awake
goto end

:wireless
echo.
echo  First time? Plug the phone in via USB once, run this once,
echo  then unplug the cable and it connects over Wi-Fi.
echo.
scrcpy.exe --keyboard=uhid --stay-awake --tcpip
goto end

:classic
scrcpy.exe
goto end

:noexe
echo  [X] scrcpy.exe not found next to this launcher.
echo      Keep this file inside the scrcpy-win64-v5.0.1 folder.
echo.
pause
exit /b 1

:end
echo.
echo  scrcpy closed.
pause
