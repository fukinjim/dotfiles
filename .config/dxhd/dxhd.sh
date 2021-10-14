#!/bin/sh

## youtube
# super + y 
ytfzf -D

## mpdmenu / mpd
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
## Open a floating instance of ncmpcpp
#super + control + m
st -n tunes -e ncmpcpp
## Media keys
# XF86Audio {Play, Stop, Prev, Next}
mpc {toggle, stop, prev, next}

## Volume Control
# XF86Audio { Raise, Lower } Volume
amixer sset Master {1%+, 1%-}; kill -44 $(pidof dwmblocks)
## Pulseaudio mixer
# super + a
st -n mixer -e pulsemixer

## Browsers
# super + w 
qutebrowser
# super + shift +w 
palemoon
# super + b
bmks

## Soulseek
# super + shift + s
soulseekqt

## Terminal
# super + return
st

## Terminal with tmux
# super + shift + return
st -n SHELL -e tmux new -As0

## Clipmenu
# super + c
clipmenu

## todo
# super + alt + t
todo

## DPMS settings
# super + alt + d
xset -dpms; notify-send "DPMS OFF"

## DPMS settings
# super + shift + alt + d
xset +dpms; notify-send "DPMS ON"

## DPMS toggle script
# super + F6
dpms-toggle.sh

## Passmenu bypass clipboard
# super + p
passmenu --type

## Change windows with rofi
# super + tab
rofi -show 

## i3-winmotion [FLAC]
# super + q
i3-winmotion

## Dmenu (Rofi) run history
# super + d
dmenu_run_history
