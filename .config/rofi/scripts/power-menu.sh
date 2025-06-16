#!/usr/bin/env bash

# Options
shutdown="  Shutdown"
reboot="  Reboot"
lock="  Lock"
suspend="  Suspend"
logout="  Logout"
cancel="  Cancel"

# Rofi CMD
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout\n$cancel"
chosen=$(echo -e "$options" | rofi -dmenu -p "Power Menu" -theme ~/.config/rofi/rounded.rasi)

case "$chosen" in
    *Shutdown) systemctl poweroff ;;
    *Reboot) systemctl reboot ;;
    *Lock) i3lock ;;
    *Suspend) systemctl suspend ;;
    *Logout) i3-msg exit ;;
    *) exit 0 ;;
esac
