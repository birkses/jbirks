#!/usr/bin/env bash
cp -i .bashrc ~/
cp -i .compton.conf ~/
cp -i .vimrc ~/
cp -i .inputrc ~/
cp -i .xmonad/xmonad.hs ~/.xmonad/xmonad.hs
cp -i .bash_profile ~/
cp -i .profile ~/
cp -i .aliases ~/
mkdir -p ~/.config/ && cp -ir .config/* ~/.config/
