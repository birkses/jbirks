# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ls="ls -ahFG --color=auto"
alias ga="git add -A"
alias gs="git status"
alias gc="git commit"
alias gd='git diff'
alias gl='git log --graph --decorate --oneline'
alias grep="grep --color=auto"
alias ll="ls -lah"
alias m="make"
alias mp="make package"
alias mi="make install"
alias mc="make clean"
alias fuck="sudo $(history -p \!\!)"

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
