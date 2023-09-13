#!/bin/sh

bat=/sys/class/power_supply/BAT0/
per="$(cat "$bat/capacity")"

icon() {
	# Lightning icon if charging 
	[ $(cat "$bat/status") = Charging ] && echo "" && exit

	if [ "$per" -gt "90" ]; then
		icon=""
	elif [ "$per" -gt "80" ]; then
		icon=""
	elif [ "$per" -gt "70" ]; then
		icon=""
	elif [ "$per" -gt "60" ]; then
		icon=""
	elif [ "$per" -gt "50" ]; then
		icon=""
	elif [ "$per" -gt "40" ]; then
		icon=""
	elif [ "$per" -gt "30" ]; then
		icon=""
	elif [ "$per" -gt "20" ]; then
		icon=""
	elif [ "$per" -gt "10" ]; then
		icon=""
		# dunstify -u critical -a "System" "Battery Low 20%" "Connect Charger"
	elif [ "$per" -gt "5" ]; then
		icon=""
		# dunstify -u critical -a "System" "Battery Low 10%" "Connect Charger"
	else
		# dunstify -u critical -a "System" "Battery Low 5%" "Connect Charger"
		echo  && exit
	fi
	echo "$icon"
}

percent() {
	echo $per
}

[ "$1" = "icon" ] && icon && exit
[ "$1" = "percent" ] && percent && exit
exit