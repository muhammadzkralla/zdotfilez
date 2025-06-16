#!/usr/bin/env bash
current=$(brightnessctl g)
max=$(brightnessctl m)
pct=$(( current * 100 / max ))

new=$(seq 1 100 | rofi -dmenu -p "Brightness [$pct%]" -theme ~/.config/rofi/rounded.rasi)
if [[ "$new" =~ ^[0-9]+$ ]] && [ "$new" -ge 1 ] && [ "$new" -le 100 ]; then
  brightnessctl set "$new"% >/dev/null
fi
