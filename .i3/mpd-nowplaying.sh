#!/bin/sh
display_song() {
    status=
    color=
    case $(mpc status | sed 1d | head -n1 | awk '{ print $1 }') in
	'[playing]')
	    status=
	    color='#36a8d5'
	    ;;
	'[paused]')
	    status=
	    color=
	    ;;
    esac
	i3cat encode --name mpd --instance "now playing" --color "${color}" " ${status} $1"

}

(while :; do
	display_song "$(mpc current --wait)"
done) &

while :; do
	display_song "$(mpc current)"
	mpc idle player > /dev/null
done
