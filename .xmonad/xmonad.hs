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
    import XMonad.Layout.NoBorders
    import qualified XMonad.StackSet as W

    myWorkspaces = ["1","2","3","4","5","6","7","8","9"]

    main = xmonad $ ewmh defaultConfig
        { borderWidth        = 2
        , handleEventHook    = handleEventHook defaultConfig <+> fullscreenEventHook
        , workspaces         = myWorkspaces
        , manageHook = manageSpawn <+> manageHook def
        , modMask            = mod4Mask
        , layoutHook  = noBorders $ spacing 6 $ Tall 1 (3/100) (1/2)
        , terminal           = "urxvt"
        , focusFollowsMouse  = False
        , focusedBorderColor = "#FF0000"
        , startupHook = do
            setWMName "LG3D"
            spawnOn "1" "urxvt -e htop"
            spawnOn "1" "urxvt -e profanity"
            spawnOn "1" "urxvt -e tty-clock -sxc -C 6"
            spawnOn "3" "urxvt -e htop"
            spawnOn "3" "urxvt -e profanity"
            spawnOn "3" "urxvt -e tty-clock -sxc -C 6"
        } `additionalKeys` ( [
          ((mod4Mask, xK_f), spawn "firefox"),
          ((mod4Mask, xK_g), spawn "google-chrome"),
          ((mod4Mask .|. shiftMask, xK_l), spawn "xlock -mode grav -geometry 1x1-1-1")
        ]
        ++
        [((m .|. mod4Mask, k), windows $ f i)
             | (i, k) <- zip myWorkspaces [xK_1 .. xK_9]
             , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]
        )
