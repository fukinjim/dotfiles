#!/bin/sh

## youtube
# super + y 
ytfzf -D

## mpdmenu
# super + m
mpdmenu
# super + shift +m
mpdmenu -p
# super + alt + m
mpdmenu -a
# super + shift + t
mpdmenu -t
# super + control + t
mpdmenu -T
# super + g
mpdmenu -g


## Browsers
# super + w 
qutebrowser
# super + shift +w 
palemoon

##Tunes
# XF86Audio {Play, Stop, Prev, Next}
mpc {toggle, stop, prev, next}

##Volume
# XF86Audio { Raise, Lower } Volume
amixer sset Master {1%+, 1%-}; kill -44 $(pidof dwmblocks)

##Soulseek
# super + s
soulseekqt

##Terminal with tmux
# super + shift + return
st -n SHELL tmux new-session -s GUI

##Clipmenu
# super + c
clipmenu

##alsamixer
# super + a
st alsamixer

##todo
# super + alt + t
todo

##DPMS settings
# super + alt + d
xset -dpms; notify-send "DPMS OFF"

##DPMS settings
# super + shift + alt + d
xset +dpms; notify-send "DPMS ON"

##Passmenu bypass clipboard
# super + p
passmenu --type

##click4ever
# super + shift + a
click4ever --delay=20
# super + @mouse2
click4ever --delay=5
