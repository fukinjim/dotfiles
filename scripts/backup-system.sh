#!/bin/sh

TS_SOCKET=/tmp/backup tsp rsync --info=progress2 -aAXHv --exclude={"/home/*","/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} / /run/media/andrew/External/00--BACKUP/00--SYSTEM
notify-send "System backed up"
