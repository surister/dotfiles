#!/bin/env bash

right_screen=$(xrandr | grep -v disconnected | grep HDMI | awk '{print $1}')
left_screen=$(xrandr | grep -v disconnected | grep DP | awk '{print $1}')

xrandr --output $right_screen --auto --right-of $left_screen


