#!/bin/bash

# get the class and floating status of the active window
active_class=$(hyprctl activewindow | awk -F": " '/class:/ {print $2}')
is_floating=$(hyprctl activewindow | awk -F": " '/floating:/ {print $2}')

# if the window is already floating, toggle it back to tiled
if [[ $is_floating == "1" ]]; then
    hyprctl dispatch togglefloating
else
    hyprctl dispatch togglefloating
    hyprctl dispatch resizeactive exact 60% 60%
    hyprctl dispatch centerwindow
    #if [[ $active_class == *"app"* ]]; then
    #fi
fi