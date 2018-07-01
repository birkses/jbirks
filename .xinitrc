#!/usr/bin/env sh

# multi monitor
# xrandr --auto --output DP-2 --mode 1920x1080 --left-of HDMI-1 --output HDMI-1 --mode 1920x1080 --left-of eDP-1 --output eDP-1 --mode 1920x1080

# disable pgup and pgdn keys
xmodmap -e 'keycode 112 = 0x0000'
xmodmap -e 'keycode 117 = 0x0000'

# change caps lock to control
setxkbmap -layout us -option ctrl:nocaps

# wallpaper setup
wal -R
exec xmonad
