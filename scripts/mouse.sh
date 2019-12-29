#! /bin/bash

id=$(xinput | grep "Cestus 310 Gaming Mouse" | sed -n 1p | awk '{print $7'} | cut -c 4-)

xinput --set-prop $id 'libinput Accel Speed' -0.8
