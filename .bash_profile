# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
# disable pgup and pgdn keys
xmodmap -e 'keycode 112 = 0x0000'
xmodmap -e 'keycode 117 = 0x0000'
# change caps lock to control
setxkbmap -layout us -option ctrl:nocaps
# setup urxvt daemon
urxvtd -q -f -o

# multi monitor setup
# xrandr --auto --output DP-2 --mode 1920x1080 --left-of HDMI-1 --output HDMI-1 --mode 1920x1080 --left-of eDP-1 --output eDP-1 --mode 1920x1080
# set background image
# feh --bg-fill /home/jbirks/Downloads/free_as_in_freedom.png

