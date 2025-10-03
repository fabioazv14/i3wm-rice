#!/usr/bin/env bash

# options
options=" Shutdown\n Reboot\n Logout"

# rofi
chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power")

# execute
case "$chosen" in
    " Shutdown")
        systemctl poweroff
        ;;
    " Reboot")
        systemctl reboot
        ;;
    " Logout")
        i3-msg exit
        ;;
esac
