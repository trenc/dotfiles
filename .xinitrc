#!/bin/bash

# no bells and whistles
xset b off
xset b 0 0 0

# enable and rotate second screen
xrandr --output DP1 --rotate left --pos 1920x0 --mode 1920x1200

# theme from Xresources
xrdb -load ~/.Xresources &

# numlock on
numlockx &

# key bindings
xbindkeys

# screenlock
sh ~/apps/bin/locker.sh &

# execute autostarts
for file in ~/.config/autostart/*
do
	dex "$file" &
done

# awesome
exec awesome
