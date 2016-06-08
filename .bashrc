# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ls="ls -aFG --color=auto"
alias ga="git add -A"
alias gc="git commit -m"
alias gs="git status"
alias gd='git diff'
alias gl='git log --graph --decorate --oneline'
alias gpl='git pull'
alias gps='git push'
alias grep="grep --color=auto"
alias ll="ls -l"
alias m="make"
alias mp="make package"
alias mi="make install"
alias mc="make clean"
setxkbmap -layout us -option ctrl:nocaps
