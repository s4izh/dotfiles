#!/bin/sh

# systray battery icon
# cbatticon -u 5 &
# systray volume
volumeicon &
setxkbmap es -option caps:escape
picom -b
feh --bg-fill /home/s4izh/pictures/system-wallpaper
nm-applet &
