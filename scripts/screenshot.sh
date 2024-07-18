#!/bin/bash

# Take screenshot of current active monitor

active_workspace_monitor=$(hyprctl -j activeworkspace | jq -r '(.monitor)')
screenshot_filename="$HOME/Pictures/screenshots/$(date +"%d-%m-%Y-%H%S")-$active_workspace_monitor.png"
grim -o $active_workspace_monitor $screenshot_filename

if [ -e $screenshot_filename ]; then
  notify-send -i $screenshot_filename "Grim" "Active Monitor Screenshot Saved \n $screenshot_filename"
fi
