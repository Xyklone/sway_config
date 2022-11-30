#! /bin/bash

date=$(date +'%Y-%m-%d   %I:%M:%S %p ')
volLevel=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -o "[1-2]\?[0-9][0-9]%" | head -n 1)

muteStatus=$(pactl get-sink-mute @DEFAULT_SINK@)
if [[ x$muteStatus = x"Mute: yes" ]]; then
    volLevel="Muted"
fi

echo volume: $volLevel \| $date 
