#!/bin/bash

setxkbmap es -option caps:escape
xinput --set-prop 11 305 0 1
feh --bg-fill /home/s4izh/pictures/system-wallpaper
polybar &
sleep 3
