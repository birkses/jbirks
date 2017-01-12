#!/usr/bin/env bash
yes | dnf update
yes | dnf update vim-common vim-minimal
yes | dnf install rxvt-unicode-256color irssi irssi-xmpp vim-X11 trash-cli xmonad ghc-xmonad-contrib-devel screenfetch htop surfraw w3m  qutebrowser figlet feh zsh util-linux-user
# this breaks gnome with xmonad if installed
# yes | dnf install xlockmore xautolock

