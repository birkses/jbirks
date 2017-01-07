    --
    -- An example, simple ~/.xmonad/xmonad.hs file.
    -- It overrides a few basic settings, reusing all the other defaults.
    --

    import XMonad
    import XMonad.Hooks.EwmhDesktops
    import XMonad.Util.EZConfig
    import XMonad.Hooks.SetWMName
    import XMonad.Actions.SpawnOn
    import XMonad.Layout.Spacing


    main = xmonad $ ewmh defaultConfig
        { borderWidth        = 4
        , handleEventHook    = handleEventHook defaultConfig <+> fullscreenEventHook
        , modMask            = mod4Mask
        , startupHook = do
            setWMName "LG3D"
            spawnOn "workspace0" "urxvt -e htop"
            spawnOn "workspace0" "urxvt -hold -e screenfetch"
            spawnOn "workspace0" "urxvt -e irssi"            
            spawnOn "workspace0" "urxvt -e w3m www.google.com.au"
            spawnOn "workspace0" "urxvt -e bash -c 'while true; do tput clear; date +\"%H : %M : %S\" | figlet -ct ; sleep 1; done'"       
        , terminal           = "urxvt"
        , focusFollowsMouse  = False
        , normalBorderColor  = "#cd8b00" 
        , focusedBorderColor = "#FF0000" }
        `additionalKeys`
        [ ((mod4Mask, xK_f), spawn "firefox"),
          ((mod4Mask, xK_g), spawn "google-chrome"),
          ((mod4Mask .|. shiftMask, xK_l), spawn "xlock -mode grav -geometry 1x1-1-1"),
          ((mod4Mask, xK_i), spawn "/home/jordan/Downloads/pycharm-community-2016.3.2/bin/pycharm.sh")
        ]
        -- todo change capslock to modmask??
