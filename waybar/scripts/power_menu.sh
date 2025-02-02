#!/bin/bash

chosen=$(echo -e " Shutdown\n Reboot\n Suspend\n Hibernate\n Logout" | wofi --dmenu -i -p "Power Menu")

case "$chosen" in
    " Shutdown") systemctl poweroff ;;
    " Reboot") systemctl reboot ;;
    " Suspend") systemctl suspend ;;
    " Hibernate") systemctl hibernate ;;
    " Logout") hyprctl dispatch exit ;;
esac
