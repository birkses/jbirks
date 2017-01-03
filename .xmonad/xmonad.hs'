    --
    -- An example, simple ~/.xmonad/xmonad.hs file.
    -- It overrides a few basic settings, reusing all the other defaults.
    --

    import XMonad
    import XMonad.Hooks.EwmhDesktops
    import XMonad.Util.EZConfig
    import XMonad.Hooks.SetWMName


    main = xmonad $ ewmh defaultConfig
        { borderWidth        = 4
        , handleEventHook    = handleEventHook defaultConfig <+> fullscreenEventHook
        , modMask            = mod4Mask
        , startupHook = setWMName "LG3D"
        , terminal           = "urxvt"
        , focusFollowsMouse  = False
        , normalBorderColor  = "#cd8b00" 
        , focusedBorderColor = "#FF0000" }
        `additionalKeys`
        [ ((mod4Mask, xK_f), spawn "firefox")
        ]
        -- todo change capslock to modmask
