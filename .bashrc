# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ls="ls -ahFG --color=auto"
alias python='python3'
# alias pycharm=/home/jordan/Downloads/pycharm-community-2016.3.2/bin/pycharm.sh
alias ga="git add -A"
alias gs="git status"
alias gc="git commit"
alias gd='git diff'
alias gl='git log --graph --decorate --oneline'
alias grep="grep --color=auto"
alias ll="ls -lah"
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias m="make"
alias mp="make package"
alias mi="make install"
alias mc="make clean"
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E "state|to\ full|percentage"'
alias open="xdg-open"
alias vi=vimx
alias rm=trash
# alias pycharm="pycharmdirhere"

# Journalctl aliases
alias log=journalctl
alias spy='journalctl -f'

# Systemctl aliases
alias reload='systemctl reload'
alias restart='systemctl restart'
alias start='systemctl start'
alias sctl='systemctl'
alias status='systemctl -l status'
alias stop='systemctl stop'

setxkbmap -layout us -option ctrl:nocaps

extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1     ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }
