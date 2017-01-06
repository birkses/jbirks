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
            spawnOn "workspace0" "urxvt -e profanity"
        , terminal           = "urxvt"
        , focusFollowsMouse  = False
        , normalBorderColor  = "#cd8b00" 
        , focusedBorderColor = "#FF0000" }
        `additionalKeys`
        [ ((mod4Mask, xK_f), spawn "firefox"),
          ((mod4Mask, xK_g), spawn "google-chrome"),
          ((mod4Mask, xK_i), spawn "/home/jordan/Downloads/pycharm-community-2016.3.2/bin/pycharm.sh")
        ]
        -- todo change capslock to modmask??
