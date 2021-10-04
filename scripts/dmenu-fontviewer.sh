#!/bin/bash

choice=$(fc-list | sed 's/:.*//g' | dmenu -i -l 20 -p 'Fonts: ')
display "$choice"
