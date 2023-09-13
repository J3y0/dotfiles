# Wallpaper manager
# nitrogen --restore &

# Wallpaper manager
$HOME/.fehbg &

# Starting picom
picom --animations -b&

# Active the numlock key on startup
numlockx on

# Starting the notification manager
dunst -conf ~/.config/dunst/dunstrc &

# Starting the polybar
$HOME/.config/polybar/launch.sh

# Starting eww bar
# $HOME/.config/eww/launch_eww.sh --open

# Starting the emacs daemon
/usr/bin/emacs --daemon

# Starring the wifi manager
nm-applet &

# Starting the bluetooth manager
blueman-applet &

# Unclutter hides the cursor when inactive
unclutter &
