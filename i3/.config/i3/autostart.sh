#!/bin/bash

setxkbmap es
setxkbmap -option caps:escape

picom -b
feh --bg-fill /home/s4izh/Pictures/system-wallpaper
(sleep 5; volumeicon) &
