#!/bin/sh

## youtube
# super + y 
ytfzf -D

## Mpdmenu / Mpd
# super + m
mpdmenu
# super + shift + m
mpdmenu -p
# super + alt + m
mpdmenu -a
# super + t
mpdmenu -t
# super + shift + t
mpdmenu -T
# super + g
mpdmenu -g
## Open a floating instance of ncmpcpp
#super + control + m
st -c float -e clerk
## Media keys
# XF86Audio {Play, Stop, Prev, Next}
mpc {toggle, stop, prev, next}

## Filemanager
# super + f
st -c float -e ranger

## Autotiling
# super + shift + a
autotiling

## Volume Control
# XF86Audio { Raise, Lower } Volume
amixer sset Master {1%+, 1%-}; kill -44 $(pidof dwmblocks)
## Pulseaudio mixer
# super + a
st -c float -e pulsemixer --color 1
## Switch audio output
# super + F12
audioswitch.sh

## Browsers
# super + w 
qutebrowser
# super + alt +w 
google-chrome-stable
# super + shift +w 
librewolf
## super + shift +w 
## google-chrome-stable --incognito

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
# super + control + t
todo

## Configure hotkeys
# super + alt + h
st -c float -e nvim ~/.config/dxhd/dxhd.sh && dxhd -r

## DPMS toggle script
# super + F8
bedtime

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

## i3 exit
# super + alt + e
i3-save && i3-msg exit

## i3 exit script
# super + shift + e
i3-save && ~/.config/i3/exit_menu.sh

## ip address
# super + i
notify-send "$(hostname -i)"

## Test
# # super + 0
## st -c float

## Update keyboard after pluggin in
# super + shift + i
setxkbmap -option caps:escape && xmodmap ~/.Xmodmap

## Reboot
# super + shift + F12
i3-save && reboot

## Shutdown
# super + F12
i3-save && shutdown now
