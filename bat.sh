#!/bin/sh
#
# Determine battery status. This also works if multiple batteries are present.
#

energy_now=0
energy_full=0

for bat in /sys/class/power_supply/BAT*; do
    now=$(cat $bat/energy_now)
    full=$(cat $bat/energy_full)
    energy_now=$(( energy_now + $now ))
    energy_full=$(( energy_full + $full ))
done

echo $(( $energy_now * 100 / $energy_full ))%
