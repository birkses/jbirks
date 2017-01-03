#!/usr/bin/env bash
#sleep 20 seconds so that the script is initialised after other xfce scripts to avoid race conditions
# can put code in ~/.bash_profile for it to execute on login
sleep 20
#switch ctrl to capslock key and leave caps lock unassigned 
setxkbmap -layout us -option ctrl:nocaps
