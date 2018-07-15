    --
    -- An example, simple ~/.xmonad/xmonad.hs file.
    -- It overrides a few basic settings, reusing all the other defaults.
    --

    import XMonad
    import XMonad.Actions.SpawnOn
    import XMonad.Config.Gnome
    import XMonad.Hooks.EwmhDesktops
    import XMonad.Layout.Dishes
    import XMonad.Layout.Gaps
    import XMonad.Layout.Grid
    import XMonad.Layout.MouseResizableTile
    import XMonad.Layout.NoBorders
    import XMonad.Layout.Spacing
    import XMonad.ManageHook
    import XMonad.Util.EZConfig
    import XMonad.Util.NamedScratchpad
    import XMonad.Util.Scratchpad
    import qualified XMonad.StackSet as W

    myTerminal = "st"
    myWorkspaces = [ "1","2","3","4","5","6","7","8","9" ]
    myLayout = resizeableLayout ||| noBorders Full ||| Dishes 3 (1/6) ||| Grid
      where
        resizeableLayout = mouseResizableTile
            { draggerType = FixedDragger { gapWidth = 0, draggerWidth = 22 } }
    myScratchpads =
        [ (NS "qutebrowser" "qutebrowser --qt-arg name scratchqt" (appName =? "scratchqt") nonFloating)
        ]

    main = xmonad $ ewmh defaultConfig
        { borderWidth        = 0
        , handleEventHook    = handleEventHook defaultConfig <+> fullscreenEventHook
        , workspaces         = myWorkspaces
        , manageHook         = manageSpawn
                             <+> manageHook def
                             <+> scratchpadManageHook (W.RationalRect 0.125 0.125 0.75 0.75)
        , modMask            = mod4Mask
        , layoutHook         = smartSpacing 3 $ myLayout
        , terminal           = myTerminal
        , focusFollowsMouse  = False
        , startupHook = do
            spawnOn "2" "st htop"
        } `additionalKeys` ( [
          ((mod4Mask, xK_f), namedScratchpadAction myScratchpads "qutebrowser"),
          ((mod4Mask, xK_d), scratchpadSpawnActionCustom "st -n scratchpad -e tty-clock -cxB -C 7")
        ]
        ++
        [ ((m .|. mod4Mask, k), windows $ f i)
          | (i, k) <- zip myWorkspaces [xK_1 .. xK_9]
          , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]
        ] )
