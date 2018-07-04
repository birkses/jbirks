#!/usr/bin/env bash
cp -i .bashrc ~/
cp -i .vimrc ~/
cp -i .inputrc ~/
cp -i .xmonad/xmonad.hs ~/.xmonad/xmonad.hs
cp -i .bash_profile ~/
cp -i .aliases ~/
mkdir -p ~/.config/ && cp -ir .config/* ~/.config/
git config --global help.autocorrect 5
