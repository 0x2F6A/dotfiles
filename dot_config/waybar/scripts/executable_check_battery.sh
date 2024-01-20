#!/usr/bin/env bash

bat=/sys/class/power_supply/BAT1
CRIT=${1:-15}

FILE=~/.config/waybar/scripts/notified

stat=$(cat $bat/status)
perc=$(cat $bat/capacity)

if [[ $perc -le $CRIT ]] && [[ $stat == "Discharging" ]]; then
    if [[ ! -f $FILE ]]; then
        notify-send --urgency=critical --icon=dialog-warning "Battary Low" "Current cahrge: $perc%"
        touch $FILE
    fi
    elif [[ -f $FILE ]];then
    rm $FILE
fi