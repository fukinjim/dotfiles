#!/bin/bash

STATUS="$(xset -q | grep 'DPMS is' | awk '{print $3}')"

if [ "$STATUS" = 'Enabled' ]
then
  xset -dpms; notify-send "DPMS OFF"
else
  xset +dpms; notify-send "DPMS ON"
fi
