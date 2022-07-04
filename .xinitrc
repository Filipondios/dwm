#!/bin/bash

# DWM Status
/home/filipondios/dwm-bar/dwm_bar.sh &

# Change the keymap to spanish
setxkbmap es &

#Set that screen resolution to 1900x1080px
#xrandr --output Virtual1 --mode 1920x1080 --rate 60 &

# Helps to create transparency in the console
xcompmgr -c & 

# Retrieve the past wallpaper
nitrogen --restore &

# Strat DWM
exec dwm
