    --
    -- An example, simple ~/.xmonad/xmonad.hs file.
    -- It overrides a few basic settings, reusing all the other defaults.
    --

    import XMonad
    import XMonad.Config.Gnome
    import XMonad.Hooks.EwmhDesktops
    import XMonad.Util.EZConfig
    import XMonad.Hooks.SetWMName
    import XMonad.Actions.SpawnOn
    import XMonad.Layout.Spacing
    import qualified XMonad.StackSet as W

    myWorkspaces = ["1","2","3","4","5","6","7","8","9"]

    main = xmonad $ ewmh gnomeConfig
        { borderWidth        = 3
        , handleEventHook    = handleEventHook defaultConfig <+> fullscreenEventHook
        , workspaces         = myWorkspaces
        , manageHook = manageSpawn <+> manageHook def
        , modMask            = mod4Mask
        , layoutHook  = spacing 6 $ Tall 1 (3/100) (1/2)
        , terminal           = "urxvt"
        , focusFollowsMouse  = False
        , normalBorderColor  = "#FF8C00"
        , focusedBorderColor = "#FF8C00"
        , startupHook = do
            setWMName "LG3D"
            spawnOn "1" "urxvt -e glances"
            spawnOn "1" "urxvt -e  sh -c 'echo \"di\" | bmon -p wlp3s0*'"
            spawnOn "2" "bash -c 'http_proxy=http://10.10.10.211:31060 https_proxy=http://10.10.10.211:31060 qutebrowser'"
            spawnOn "3" "urxvt -e ranger"
        } `additionalKeys` ( [
          ((mod4Mask, xK_f), spawn "http_proxy=http://10.10.10.211:31060 https_proxy=http://10.10.10.211:31060 qutebrowser"),
          ((mod4Mask, xK_g), spawn "google-chrome"),
          ((mod4Mask .|. shiftMask, xK_l), spawn "xlock -mode grav -geometry 1x1-1-1")
        ]
        ++
        [((m .|. mod4Mask, k), windows $ f i)
             | (i, k) <- zip myWorkspaces [xK_1 .. xK_9]
             , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]
        )

