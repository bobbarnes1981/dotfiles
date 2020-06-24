#!/bin/bash
date_formatted=$(date +'%Y-%m-%d %k:%M:%S')
linux_version=$(uname -r)
battery_status=$(cat /sys/class/power_supply/BAT0/status)
host=$(hostname)
kernel=$(uname -s)
cpu=$(top -n 1 -b -i | grep 'Cpu(s)' | awk -F ' ' '{print $2}')

echo $host $USER $kernel $linux_version $cpu% $battery_status $date_formatted

