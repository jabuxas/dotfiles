#!/usr/bin/env bash
# This is a script to bind Caps Lock to Escape while in vscodium.
# It is recommended to put it in $USER/.local/bin or /usr/local/bin for dwm compatibility.
setxkbmap -option caps:escape
vscodium -w; setxkbmap -option

