#!/bin/sh

workspaces() {

    ws1=1
    ws2=2
    ws3=3
    ws4=4
    ws5=5
    ws6=6

    # Unoccupied
    un="0"

    # check if Occupied
    o1=$(bspc query -D -d .occupied --names | grep "$ws1" )
    o2=$(bspc query -D -d .occupied --names | grep "$ws2" )
    o3=$(bspc query -D -d .occupied --names | grep "$ws3" )
    o4=$(bspc query -D -d .occupied --names | grep "$ws4" )
    o5=$(bspc query -D -d .occupied --names | grep "$ws5" )
    o6=$(bspc query -D -d .occupied --names | grep "$ws6" )

    # check if Focused
    f1=$(bspc query -D -d focused --names | grep "$ws1" )
    f2=$(bspc query -D -d focused --names | grep "$ws2" )
    f3=$(bspc query -D -d focused --names | grep "$ws3" )
    f4=$(bspc query -D -d focused --names | grep "$ws4" )
    f5=$(bspc query -D -d focused --names | grep "$ws5" )
    f6=$(bspc query -D -d focused --names | grep "$ws6" )

    # check if Urgent
    # u1=$(bspc query -D -d .urgent --names | grep 1)
    # u2=$(bspc query -D -d .urgent --names | grep 2)
    # u3=$(bspc query -D -d .urgent --names | grep 3)
    # u4=$(bspc query -D -d .urgent --names | grep 4)
    # u5=$(bspc query -D -d .urgent --names | grep 5)

    echo "(box	:class \"workspace\" :orientation \"h\" (button :onclick \"bspc desktop -f $ws1\"	:class	\"w$un$o1$f1\"	\"\") (button :onclick \"bspc desktop -f $ws2\"	:class \"w$un$o2$f2\"	 \"\") (button :onclick \"bspc desktop -f $ws3\"	:class \"w$un$o3$f3\" \"\") (button :onclick \"bspc desktop -f $ws4\"	:class \"w$un$o4$f4\"	\"\") (button :onclick \"bspc desktop -f $ws5\"	:class \"w$un$o5$f5\" \"\" )  (button :onclick \"bspc desktop -f $ws6\"	:class \"w$un$o6$f6\" \"\"))"

}

workspaces
bspc subscribe | while read -r _ ; do
    workspaces
done