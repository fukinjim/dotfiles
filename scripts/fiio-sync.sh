#!/bin/sh

notify-send "Starting Fiio sync"
cd /home/andrew/Music/Tunes
TS_SOCKET=/tmp/fiio tsp rsync -a --delete --info=progress2 0000--L* /run/media/andrew/CARD01
TS_SOCKET=/tmp/fiio tsp rsync -a --delete --info=progress2 0000--N* /run/media/andrew/CARD01
TS_SOCKET=/tmp/fiio tsp rsync -a --delete --info=progress2 01* /run/media/andrew/CARD01
TS_SOCKET=/tmp/fiio tsp rsync -a --delete --info=progress2 02* /run/media/andrew/CARD01
TS_SOCKET=/tmp/fiio tsp rsync -a --delete --info=progress2 03* /run/media/andrew/CARD01
TS_SOCKET=/tmp/fiio tsp rsync -a --delete --info=progress2 04* /run/media/andrew/CARD02
TS_SOCKET=/tmp/fiio tsp rsync -a --delete --info=progress2 05* /run/media/andrew/CARD02
TS_SOCKET=/tmp/fiio tsp rsync -a --delete --info=progress2 06* /run/media/andrew/CARD02
TS_SOCKET=/tmp/fiio tsp rsync -a --delete --info=progress2 07* /run/media/andrew/CARD02
TS_SOCKET=/tmp/fiio tsp rsync -a --delete --info=progress2 08* /run/media/andrew/CARD02
TS_SOCKET=/tmp/fiio tsp rsync -a --delete --info=progress2 09* /run/media/andrew/CARD02
TS_SOCKET=/tmp/fiio tsp rsync -a --delete --info=progress2 10* /run/media/andrew/CARD02
TS_SOCKET=/tmp/fiio tsp rsync -a --delete --info=progress2 11* /run/media/andrew/CARD02
TS_SOCKET=/tmp/fiio tsp rsync -a --delete --info=progress2 12* /run/media/andrew/CARD02
TS_SOCKET=/tmp/fiio tsp rsync -a --delete --info=progress2 13* /run/media/andrew/CARD02
TS_SOCKET=/tmp/fiio tsp rsync -a --delete --info=progress2 14* /run/media/andrew/CARD02
TS_SOCKET=/tmp/fiio tsp rsync -a --delete --info=progress2 15* /run/media/andrew/CARD02
TS_SOCKET=/tmp/fiio tsp notify-send -t 0 "Tunes synced to player!"
TS_SOCKET=/tmp/fiio tsp -C
