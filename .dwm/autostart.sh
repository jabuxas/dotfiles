#!/bin/bash
sh ~/.dwm/screenlayout.sh

sleep 1

nitrogen --restore &

setxkbmap br abnt2

xinput --set-prop 'pointer:''Gaming Mouse' 'libinput Accel Profile Enabled' 0, 1 
xinput --set-prop 'pointer:''Gaming Mouse' 'libinput Accel Speed' 0.1 

pulseaudio --start

picom &

numlockx on 

dwmblocks &

mpd &

dunst &

lxqt-policykit-agent &

touch ~/tmp/touchy
rm -rf ~/tmp/*

killall pasystray; pasystray & # killlall is needed in case you reset dwm, it will just spawn infinites pasystrays

/usr/bin/emacs --daemon &

urxvtd --quiet --opendisplay --fork

otd &

#discord & # If using regular discord.
#flatpak run com.discordapp.Discord & # If using flatpak

#steam &
