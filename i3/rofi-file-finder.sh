#!/bin/bash

# Set the directory you want to search in (e.g. home)
SEARCH_DIR="$HOME"

# Use fd to list files, and rofi to pick one
selected=$(fd . "$SEARCH_DIR" --type f --hidden --exclude .git | rofi -dmenu -i -p "Open file")

# If a file was selected, open it with the default application
[ -n "$selected" ] && xdg-open "$selected"
