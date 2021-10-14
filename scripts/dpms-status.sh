#!/bin/bash

STATUS="$(xset -q | grep 'DPMS is' | awk '{print $3}')"

if [ "$STATUS" = 'Enabled' ]
then
  echo "DPMS=On"
else
  echo "DPMS=Off"
fi

