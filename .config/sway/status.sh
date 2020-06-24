#!/bin/bash
date_formatted=$(date +'%Y-%m-%d %k:%M:%S')
linux_version=$(uname -r)
battery_status=$(cat /sys/class/power_supply/BAT0/status)
host=$(hostname)
kernel=$(uname -s)
cpu=$(top -n 1 -b -i | grep 'Cpu(s)' | awk -F ' ' '{print $2}')

echo -e "$host $USER \U1f427 $kernel $linux_version \U1f4bb $cpu% \U1f50b $battery_status \U1f4c5 $date_formatted"

