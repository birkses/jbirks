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
        , layoutHook  = spacing 5 $ Tall 1 (3/100) (1/2)
        , startupHook = do
            setWMName "LG3D"
            spawnOn "workspace0" "urxvt -e htop"
            spawnOn "workspace0" "urxvt -hold -e screenfetch"
            spawnOn "workspace0" "urxvt -e irssi"            
        , terminal           = "urxvt"
        , focusFollowsMouse  = False
        , normalBorderColor  = "#1d8b00" 
        , focusedBorderColor = "#FF0000" }
        `additionalKeys`
        [ ((mod4Mask, xK_f), spawn "firefox"),
          ((mod4Mask, xK_g), spawn "google-chrome"),
          ((mod4Mask .|. shiftMask, xK_l), spawn "xlock -mode grav -geometry 1x1-1-1"),
          ((mod4Mask, xK_i), spawn "/home/jordan/Downloads/pycharm-community-2016.3.2/bin/pycharm.sh")
        ]
        -- todo change capslock to modmask??
