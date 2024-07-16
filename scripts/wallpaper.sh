#!/bin/bash
wal -i $wallpaper
pywal-spicetify text
killall -SIGUSR2 waybar
pywalfox update
