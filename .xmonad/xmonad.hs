    --
    -- An example, simple ~/.xmonad/xmonad.hs file.
    -- It overrides a few basic settings, reusing all the other defaults.
    --

    import XMonad
    import XMonad.Actions.SpawnOn
    import XMonad.Config.Gnome
    import XMonad.Hooks.EwmhDesktops
    import XMonad.Hooks.SetWMName
    import XMonad.Layout.Gaps
    import XMonad.Layout.MouseResizableTile
    import XMonad.Layout.Spacing
    import XMonad.Util.EZConfig
    import XMonad.Util.Scratchpad
    import qualified XMonad.StackSet as W

    myTerminal = "urxvt"
    myWorkspaces = ["1","2","3","4","5","6","7","8","9"]
    myLayout = gaps [(U,10), (D,10), (L,10), (R,10)] $ mouseResizableTile
           { masterFrac = 1/2
           , fracIncrement = 0.05
           , draggerType = FixedDragger 10 10
           }
    -- scratchpad dimentions
    manageScratchPad :: ManageHook
    manageScratchPad = scratchpadManageHook (W.RationalRect l t w h)
      where
        h = 0.5     -- terminal height, 50%
        w = 0.5       -- terminal width, 50%
        t = 1 - h   -- distance from top edge, 90%
        l = 1 - w   -- distance from left edge, 0%

    main = xmonad $ ewmh gnomeConfig
        { borderWidth        = 3
        , handleEventHook    = handleEventHook defaultConfig <+> fullscreenEventHook
        , workspaces         = myWorkspaces
        , manageHook = manageSpawn <+> manageHook def <+> manageScratchPad
        , modMask            = mod4Mask
        , layoutHook  = myLayout
        , terminal           = myTerminal
        , normalBorderColor  = "#7F7F4A"
        , focusedBorderColor = "#FFDE95"
        , focusFollowsMouse  = False
        , startupHook = do
            setWMName "LG3D"
            spawnOn "3" "urxvt -e htop"
            spawnOn "3" "urxvt -e  sh -c 'echo \"di\" | bmon -p wlp3s0*'"
            spawnOn "2" "bash -c 'http_proxy=http://10.10.10.211:31060 https_proxy=http://10.10.10.211:31060 qutebrowser'"
            spawnOn "1" "bash -c 'cd /home/jbirks/work/msm2/governor/src/json_schemas; urxvt -e ranger'"
        } `additionalKeys` ( [
          ((mod4Mask, xK_f), spawn "http_proxy=http://10.10.10.211:31060 https_proxy=http://10.10.10.211:31060 qutebrowser"),
          ((mod4Mask, xK_g), scratchpadSpawnActionTerminal myTerminal)
        ]
        ++
        [((m .|. mod4Mask, k), windows $ f i)
             | (i, k) <- zip myWorkspaces [xK_1 .. xK_9]
             , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]
        )
