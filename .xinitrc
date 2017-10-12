#!/bin/bash

# autostarts

xset b off
xset b 0 0 0
xrdb -load ~/.Xresources &
numlockx &


# start window manager

DEFAULT_SESSION=awesome

case "$1" in
	awesome)
		exec awesome ;;
	openbox)
		exec openbox-session ;;
	xfce)
		exec xfce4-session ;;
	gnome3)
		exec gnome-session ;;
	kde)
		exec startkde ;;
	cinnamon)
		exec gnome-session-cinnamon ;;
	razor-qt)
		exec razor-session ;;
	lxde)
		exec lxsession ;;
	mate)
		exec mate-session ;;
	*)
		exec $DEFAULT_SESSION ;;
esac
