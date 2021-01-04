#!/bin/sh
#
# Determine battery status. This also works if multiple batteries are present.
#
cat /sys/class/power_supply/BAT0/capacity
echo hello
