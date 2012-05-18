import XMonad
import XMonad.Config.Xfce
import XMonad.Layout.Spacing
import XMonad.Hooks.SetWMName
import XMonad.Hooks.ICCCMFocus

-- defaultConfig
main = xmonad $ xfceConfig
        { borderWidth        = 2
         , modMask = mod4Mask -- use win key for mod 
         , workspaces = ["1","2","3","4","5","6"]
         , startupHook = setWMName "LG3D" -- fix swing application i.e. idea to work with xmonad
         ,logHook = takeTopFocus --fix issue with Java applications not taking focus http://code.google.com/p/xmonad/issues/detail?id=177
         --, layoutHook = spacing 2 $ Tall 1 (3/100) (1/2) -- put 2px space around every window
          , normalBorderColor  = "#586e75" -- solarizedBase01 "#cccccc"
          , focusedBorderColor =  "#dc322f" -- solarizedRed --"#cd8b00" 

        }

