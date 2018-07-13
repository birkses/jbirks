#!/usr/bin/env bash
cp -i .aliases ~/
cp -i .bash_profile ~/
cp -i .bashrc ~/
cp -i .compton.conf ~/
cp -i .gitconfig ~/
cp -i .inputrc ~/
cp -i .profile ~/
cp -i .vimrc ~/
cp -i .xinitrc ~/

mkdir -p ~/.xmonad && cp -i .xmonad/xmonad.hs ~/.xmonad/xmonad.hs
cp -ir .config ~/
