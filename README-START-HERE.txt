================================================================
  SCRCPY v5.0.1 - GAMER EDITION  (customized package)
================================================================

WHAT IS DIFFERENT FROM THE ORIGINAL RELEASE
  - All original scrcpy files are untouched.
  - Added: START-PHONE-MIRROR.bat  (one-click launcher)
  - Added: this README
  - The launcher starts scrcpy with the best settings for you:
      * clipboard auto-sync ON        (built into scrcpy)
      * --keyboard=uhid  -> your PC keyboard becomes a REAL
        keyboard on the phone: type anywhere, no typing-box
      * --mouse=uhid in Gaming mode -> hardware mouse passthrough
      * --stay-awake     -> phone never sleeps while mirroring

----------------------------------------------------------------
1) QUICK START
----------------------------------------------------------------
  1. On the phone: Settings > About phone > tap "Build number"
     7 times > go back > Developer options > turn ON
     "USB debugging".
  2. Plug the phone into the PC with USB.
  3. A popup appears on the phone: "Allow USB debugging?" -> Allow.
  4. Double-click START-PHONE-MIRROR.bat and pick mode 1.

----------------------------------------------------------------
2) COPY ON PHONE -> PASTE ON PC   (already automatic!)
----------------------------------------------------------------
  1. On the mirrored phone screen: press and HOLD the left mouse
     button on the text (that is a "long press" for the phone),
     then drag the selection handles.
  2. Tap the "Copy" button on the phone screen with the mouse.
  3. Done - scrcpy syncs the phone clipboard to the PC the moment
     it changes. Press Ctrl+V anywhere on your PC.
  Note: text only, not images or files.

----------------------------------------------------------------
3) COPY ON PC -> PASTE ON PHONE
----------------------------------------------------------------
  1. Copy text on your PC (Ctrl+C).
  2. Click inside the text field on the mirrored phone.
  3. Press Ctrl+V inside the scrcpy window.
     Blocked by the app? Press Alt+Shift+V instead - it types the
     text out character by character.
  Warning: pasting this way puts the text on the phone clipboard
  where any Android app could read it. Do not paste passwords.

----------------------------------------------------------------
4) MOUSE + KEYBOARD SHORTCUTS
----------------------------------------------------------------
  Left-click           tap / touch on the phone
  Hold left-click      long press (e.g. to select text)
  Right-click          BACK button
  Middle-click         HOME button
  Ctrl + click-drag    pinch-to-zoom simulation
  MOD = Left Alt or Left Windows key
  MOD+c                copy on phone
  MOD+x                cut on phone
  MOD+v                sync clipboards and paste on phone
  MOD+s                recent apps switcher
  MOD+n                notification panel (MOD+Shift+n collapses)
  MOD+r                rotate screen
  MOD+o                turn phone screen off, mirroring continues
  MOD+Shift+o          turn phone screen back on
  MOD+k                keyboard settings (uhid keyboard mode)

----------------------------------------------------------------
5) GAMING
----------------------------------------------------------------
  A. Games with NATIVE keyboard/mouse support
     (Minecraft PE, Roblox, most Chromebook-ready games):
     Use mode 2 (Gaming mode) in the launcher. Your keyboard and
     mouse are passed through as real hardware devices, so WASD
     just works - no mapping needed.

  B. Touch-only games (PUBG Mobile, CoD Mobile, Genshin,
     Free Fire...):
     scrcpy.exe CANNOT convert WASD into virtual joystick touches -
     that requires a different client. Both are free, no root,
     and connect over USB/Wi-Fi exactly like scrcpy:

       * scrcpy-mask  (modern, actively developed)
         https://github.com/AkiChase/scrcpy-mask
         Draw a joystick zone on the screen, bind W/A/S/D and
         skill keys, map the mouse to aiming - like an Android
         emulator, but it is your real phone.

       * QtScrcpy  (classic, ships with a ready PUBG Mobile map)
         https://github.com/barry-ran/QtScrcpy
         Load a keymap script, press ~ to toggle mapping mode.

  C. Controller-friendly games:
         scrcpy.exe --gamepad=uhid
     passes a real gamepad through to the phone.

----------------------------------------------------------------
6) WIRELESS MODE (no cable)
----------------------------------------------------------------
  1. Connect once over USB and run the launcher (any mode).
  2. Pick mode 3: scrcpy reconfigures the phone for Wi-Fi.
  3. Unplug the cable - it now connects over Wi-Fi.
  4. Next time, mode 3 works without the cable (same Wi-Fi).

  Manual:  scrcpy.exe --tcpip
  or:      scrcpy.exe --tcpip=192.168.1.50

----------------------------------------------------------------
7) USEFUL EXTRA FLAGS (run in the folder: open_a_terminal_here.bat)
----------------------------------------------------------------
  --turn-screen-off       phone screen off while you mirror it
  --max-fps=60            cap the frame rate
  --video-bit-rate=12M    sharper video (default 8M)
  --max-size=1280         lower resolution = smoother on slow PCs
  --shortcut-mod=lctrl    make MOD = Left Ctrl instead of Alt
  --record=file.mp4       record the mirror to a video file
  --no-audio              do not mirror audio

----------------------------------------------------------------
8) TROUBLESHOOTING
----------------------------------------------------------------
  "No device found"   - unlock the phone, re-plug the cable,
                        check the "Allow USB debugging" popup
  Unauthorized        - accept the RSA popup on the phone
  Wi-Fi fails         - phone and PC must be on the same network;
                        run over USB first, then mode 3
  Typing does nothing - make sure you used mode 1/2/3 (uhid),
                        not mode 4, and click into the field first

  Full official docs:
  https://github.com/Genymobile/scrcpy/blob/master/doc/shortcuts.md
