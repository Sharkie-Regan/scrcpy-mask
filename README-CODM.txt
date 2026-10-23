================================================================
  CODM GAMING KIT - scrcpy + scrcpy-mask + CODM keymap
================================================================

WHAT IS IN THIS PACKAGE

  scrcpy-win64-v5.0.1\     original scrcpy (screen mirror + control)
                           + START-PHONE-MIRROR.bat launcher
                           + README-START-HERE.txt (clipboard/shortcuts)
  scrcpy-mask\             scrcpy-mask v0.9.0 - the gaming client
                           (mirror + WASD/mouse keymapping, bundles adb)
  CODM.json                ready-made Call of Duty: Mobile keymap
  INSTALL-CODM-KEYMAP.bat  one-click keymap installer
  README-CODM.txt          this file

  For everyday stuff (copy text phone<->PC, typing, apps) use the
  scrcpy-win64-v5.0.1 folder. For CODM use the scrcpy-mask folder.

----------------------------------------------------------------
1) ONE-TIME SETUP
----------------------------------------------------------------
  1. On the phone: Settings > About phone > tap "Build number"
     7 times > back > Developer options > enable "USB debugging".
  2. Plug the phone into the PC with USB.
  3. Popup on the phone: "Allow USB debugging?" -> Allow.
  4. Double-click INSTALL-CODM-KEYMAP.bat  (installs the keymap).

----------------------------------------------------------------
2) PLAY CODM
----------------------------------------------------------------
  1. Open CODM on your phone (stay in the lobby or a match).
  2. Double-click scrcpy-mask\scrcpy-mask.exe
  3. In the Device page: pick your phone, press Connect.
     The mirror opens - your phone screen shows on the PC.
  4. In the Mapping page: select "CODM" in the config list and
     switch mapping ON.
  5. IMPORTANT - rotate: if the mirror is portrait, rotate your
     view by entering a match (CODM forces landscape).
  6. Click on the game window once so it has keyboard focus.

  THE CONTROLS:

    W / A / S D ...... move (virtual joystick)
    Shift (hold W) ... sprint
    F ................ toggle AIM MODE: mouse moves the camera
    Left mouse ....... SHOOT (in aim mode)
    Right mouse ...... ADS / scope (hold)
    R ................ reload
    Space ............ jump
    C ................ crouch
    Z ................ prone
    G ................ lethal grenade
    E ................ tactical grenade
    Q ................ operator skill
    1 or mouse wheel . switch weapon (wheel either direction)
    V ................ melee

  TYPICAL LOOP: press F (mouse now aims) > left-click to shoot >
  WASD to move > press F again to get the normal mouse back for
  tapping menus/buttons directly.

----------------------------------------------------------------
3) ALIGN BUTTONS TO YOUR HUD (2 minutes, do it once)
----------------------------------------------------------------
  The keymap was drawn for CODM's default HUD on a 20:9 phone,
  and positions auto-scale to your screen. If a button misses:

  1. In the Mapping page, turn on EDIT mode.
  2. Drag each mapped button onto the matching CODM HUD button
     (each one is labeled: Reload, Jump, Fire...).
  3. Save. Done forever - the map is stored on your PC.

  Tip: also drag the transparent "Fps" point to an empty area
  near the screen center if camera turning feels off.

----------------------------------------------------------------
4) FINE TUNING
----------------------------------------------------------------
  - Camera too fast/slow: edit the Fps mapping, adjust
    sensitivity_x / sensitivity_y (this kit ships 1.5; try
    0.8-2.5 until turning feels right).
  - Joystick too small/big: edit DirectionPad max_offset_x/y.
  - Rebind any key: click a button in edit mode, press the new
    key or mouse button.

  MAKE AIM SMOOTH (fix the delay / stutter feeling)
  ---------------------------------------------------
  1. CODM in-game: Settings > Sensitivity > raise CAMERA
     sensitivity (standard) to about 120-180. Low in-game
     camera sensitivity is the #1 cause of laggy aim: the
     drag finger has to travel far, reaches the screen edge
     and must wrap around - a tiny hitch every time.
  2. This kit uses DUAL touch handoff (Delay, 20 ms) so edge
     wraps are seamless. Do not switch the Fps key back to
     single touch mode.
  3. Use USB, not Wi-Fi. Wireless adds 20-60 ms of jitter.
  4. scrcpy-mask Settings: set video max size to ~1600 and
     max fps to 60. A lighter stream updates the picture you
     react to faster (the input path itself is not changed,
     but the perceived delay drops).
  5. Windows: turn OFF Enhance pointer precision
     (mouse acceleration) in Windows mouse settings.
  6. Phone: lower CODM graphics one notch, close background
     apps, keep the phone plugged in while playing.

----------------------------------------------------------------
5) WIRELESS (no cable)
----------------------------------------------------------------
  1. Connect once via USB in scrcpy-mask.
  2. Use the "TCP/IP" / wireless connect option in the Device
     page (phone + PC on the same Wi-Fi).
  3. Unplug. Note: Wi-Fi adds a little input lag - USB is best
     for ranked matches.

----------------------------------------------------------------
6) KEEPING YOUR ACCOUNT SAFE (read this!)
----------------------------------------------------------------
  Mapping tools touch the game the same way your fingers do, but
  Activision's rules do not officially allow third-party control
  tools. Players use scrcpy-mask/QtScrcpy widely, and scrcpy-mask
  includes input randomization to keep touches human-like, but
  there is always SOME ban risk in online matches.
  - Use it mainly for casual play / practice / campaigns.
  - Do NOT use obvious inhuman settings (insane sensitivity,
    zero-recoil macros). The kit's defaults are conservative.

----------------------------------------------------------------
7) TROUBLESHOOTING
----------------------------------------------------------------
  No device found        - unlock phone, re-plug, accept the
                           "Allow USB debugging" popup
  Keymap not listed      - run INSTALL-CODM-KEYMAP.bat again,
                           then restart scrcpy-mask
  Keys do nothing        - Mapping page: is "CODM" selected and
                           mapping ON? Click the game window once.
  Mouse does not aim     - press F first (aim mode), and make sure
                           the Fps point sits over an empty screen
                           area, not on a HUD button
  Pressing keys types    - mapping is OFF; toggle it on

  Mapping validation failed
  "Fire preserve_fps_control requires a
  pointer_id different from FPS touch pointer
  ids"                     - your CODM.json is an older copy in which
                           the Fire key shared pointer 0 with the
                           mouse-aim touch. Fix: run
                           INSTALL-CODM-KEYMAP.bat from THIS kit
                           (contains the fixed file), or in scrcpy-mask
                           edit mode click the Fire key and change its
                           Pointer ID from 0 to any other number
                           (e.g. 10), then save.

  scrcpy-mask project: https://github.com/AkiChase/scrcpy-mask
