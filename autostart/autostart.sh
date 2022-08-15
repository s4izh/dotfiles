#!/bin/sh

# systray battery icon
# cbatticon -u 5 &
# systray volume
volumeicon &
setxkbmap es
setxkbmap -option caps:escape
picom --no-vsync -b
feh --bg-fill /home/s4izh/Pictures/bg/1.png
nm-applet &
