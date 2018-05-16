# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
setxkbmap -layout us -option ctrl:nocaps
#setup urxvt daemon
urxvtd -q -f -o
