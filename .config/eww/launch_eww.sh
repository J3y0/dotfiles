#!/bin/bash

EWW="$HOME/.local/bin/eww"
CONFIG="$HOME/.config/eww"

open_bar() {
    ${EWW} -c ${CONFIG} open bar_window
}

close_bar() {
    ${EWW} -c ${CONFIG} close bar_window
}

open_logout() {
    ${EWW} -c ${CONFIG} open logout_window
}

close_logout() {
    ${EWW} -c ${CONFIG} close logout_window
}

## Run eww daemon if not running already
if [[ ! `pidof eww` ]]; then
	${EWW} daemon
	sleep 1
fi

if [[ "$1" == "--open-bar" ]];then
    open_bar
elif [[ "$1" == "--close-bar" ]];then
    close_bar
elif [[ "$1" == "--open-logout" ]];then
    open_logout
elif [[ "$1" == "--close-logout" ]];then
    close_logout
fi
exit