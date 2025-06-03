#!/bin/bash

cd "$(dirname "$0")"

# Controleer of Conky al draait en stop het
if pidof conky > /dev/null; then
    killall conky
fi

# Start Conky met de juiste configuratie en log fouten
conky -c ./conky.conf &
sleep 2
sh Clock/start.sh
sleep 5 && conky -c ~/conky_colors/conky_colors/conkyrc;
#sleep 5 && conky -c ~/.conkycolors/conkyrc;
exit 0