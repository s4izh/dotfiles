#!/bin/sh

# systray battery icon
# cbatticon -u 5 &
# systray volume
volumeicon &
setxkbmap es
setxkbmap -option caps:escape
picom -b
feh --bg-fill /home/s4izh/Pictures/bg/archnord.png
nm-applet &
