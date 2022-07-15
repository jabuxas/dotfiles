#!/bin/bash
xrandr --output HDMI-0  --mode 1400x900 --pos 1920x180 --rotate normal 
xrandr --output DVI-D-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal 

nitrogen --restore &

setxkbmap us intl

xinput --set-prop 'pointer:''Gaming Mouse' 'libinput Accel Profile Enabled' 0, 1 
xinput --set-prop 'pointer:''Gaming Mouse' 'libinput Accel Speed' 0.1 

pulseaudio --start

picom &

numlockx on 

dwmblocks &

mpd &

dunst &

lxqt-policykit-agent &

touch ~/tmp/dasjdas.das
rm -rf ~/tmp/*

killall pasystray; pasystray & # killlall is needed in case you reset dwm, it will just spawn infinites pasystrays

/usr/bin/emacs --daemon &

otd &

#discord & # If using regular discord.
flatpak run com.discordapp.Discord & # If using flatpak

#steam &
