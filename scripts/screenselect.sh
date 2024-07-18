#!/bin/bash

# Take screenshot of selection
screenshot_filename="$HOME/Pictures/screenshots/$(date +"%d-%m-%Y-%H%M%S")-Selection.png"
grim -g "$(slurp)" $screenshot_filename

if [ -e $screenshot_filename ]; then
  notify-send -i $screenshot_filename "Grim" "Selection Screenshot Saved \n $screenshot_filename"
fi
