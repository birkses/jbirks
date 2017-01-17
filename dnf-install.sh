#!/usr/bin/env bash
yes | dnf update
yes | dnf update vim-common vim-minimal
yes | dnf install rxvt-unicode-256color vim-X11 trash-cli xmonad ghc-xmonad-contrib-devel screenfetch htop surfraw w3m  qutebrowser figlet feh zsh util-linux-user ncurses-devel
# this breaks gnome with xmonad if installed
# yes | dnf install xlockmore xautolock

