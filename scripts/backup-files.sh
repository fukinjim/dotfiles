#!/bin/bash
TS_SOCKET=/tmp/backup tsp rsync -a --delete --info=progress2 /home/andrew/Storage/ /run/media/andrew/External/00--BACKUP/01--FILES
notify-send "Files backed up"
