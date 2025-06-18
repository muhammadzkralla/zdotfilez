#!/bin/bash

# Path to wallpapers
wallpapers=(~/Pictures/Wallpapers/*)

# Use a file to store the index of the last wallpaper used
index_file="/tmp/wallpaper_index"
[ -f "$index_file" ] || echo 0 > "$index_file"

# Get current index and next index
index=$(cat "$index_file")
next_index=$(( (index + 1) % ${#wallpapers[@]} ))

# Set wallpaper
feh --bg-scale "${wallpapers[$next_index]}"

# Save index
echo "$next_index" > "$index_file"
