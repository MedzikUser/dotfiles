#!/bin/bash

setxkbmap -layout pl
xsetroot -cursor_name left_ptr

pipewire &
pipewire-pulse &
pipewire-media-session &

#export XDG_SESSION_TYPE=x11
#export GDK_BACKEND=x11
#exec gnome-session

exec dbus-launch --exit-with-session bspwm
