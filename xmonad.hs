    --
    -- An example, simple ~/.xmonad/xmonad.hs file.
    -- It overrides a few basic settings, reusing all the other defaults.
    --

    import XMonad

    main = xmonad $ defaultConfig
        { borderWidth        = 4
        , modMask            = mod4Mask
        , terminal           = "urxvt"
        , focusFollowsMouse  = False
        , normalBorderColor  = "#cd8b00" 
        , focusedBorderColor = "#FF0000" }
