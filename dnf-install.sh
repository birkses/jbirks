#!/usr/bin/env bash
dnf update -y
dnf update vim-common vim-minimal -y
dnf install rxvt-unicode-256color vim-X11 trash-cli xmonad ghc-xmonad-contrib-devel screenfetch htop surfraw w3m  qutebrowser figlet feh zsh util-linux-user ncurses-devel -y
# this breaks gnome with xmonad if installed
# dnf install xlockmore xautolock -y

