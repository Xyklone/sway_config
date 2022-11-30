#! /bin/bash

swaymsg output '*' bg $(find /home/victor/Pictures/Wallpapers\ 3840x2160/ -maxdepth 1 -print | shuf | head -n 1) fill &

OLD_PID=$!

while true; do
    sleep 300
    swaymsg output '*' bg $(find /home/victor/Pictures/Wallpapers\ 3840x2160/ -maxdepth 1 -print | shuf | head -n 1) fill &
    NEXT_PID=$!
    sleep 5
    kill $OLD_PID
    OLD_PID=$NEXT_PID
done
