#!/bin/sh

PLAYER_BIN="playerctl --player=spotify -s"
STATUS="$($PLAYER_BIN status)"
# Get status
get_status() {
	if [[ $STATUS == "Playing" ]]; then
		echo "󱖒"
	else
		echo "󱖑"
	fi
}

# Get song
get_song() {
	song="$($PLAYER_BIN metadata --format "{{title}}")"
	if [[ -z "$song" ]]; then
		echo ""
	else
		echo "$song"
	fi	
}

# Get artist
get_artist() {
	artist="$($PLAYER_BIN metadata --format "{{artist}}")"
	if [[ -z "$artist" ]]; then
		echo ""
	else
		echo "$artist"
	fi	
}

# Execute accordingly
if [[ "$1" == "--song" ]]; then
	get_song
elif [[ "$1" == "--artist" ]]; then
	get_artist
elif [[ "$1" == "--status" ]]; then
	get_status
elif [[ "$1" == "--toggle" ]]; then
	$PLAYER_BIN play-pause
elif [[ "$1" == "--next" ]]; then
    $PLAYER_BIN next
elif [[ "$1" == "--prev" ]]; then
    $PLAYER_BIN previous
fi