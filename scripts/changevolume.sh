#!/bin/ env bash
read var

if [ "$var" = "0" ]
then
	pactl set-sink-volume @DEFAULT_SINK@ +5%
elif [ "$var" = "1" ]
then
	pactl set-sink-volume @DEFAULT_SINK@ -5%
fi
