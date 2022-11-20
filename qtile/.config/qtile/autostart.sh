#!/bin/bash

xrandr --output HDMI-A-0 --mode 1920x1080 --output eDP --off
xinput --set-prop 15 308 0 1
xinput --set-prop 10 305 0 1
xinput --set-prop 11 305 0 1
feh --bg-fill /home/s4izh/pictures/system-wallpaper
picom --fade-in-step=1 --fade-out-step=1 --fade-delta=0 &
setxkbmap es -option caps:escape &
nm-applet &
