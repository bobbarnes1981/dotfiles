#!/bin/bash
date_formatted=$(date +'%Y-%m-%d %k:%M:%S')
linux_version=$(uname -r)
battery_status=$(cat /sys/class/power_supply/BAT0/status)
host=$(hostname)
kernel=$(uname -s)
cpu=$(top -n 1 -b -i | grep 'Cpu(s)' | awk -F ' ' '{print $2}')
temp=$(sensors acpitz-acpi-0 | grep 'temp1' | awk -F ' ' '{print $2}')
#volts=$(sensors BAT0-acpi-0 | grep 'in0' | awk -F ' ' '{print $2}')
capacity=$(cat /sys/class/power_supply/BAT0/capacity)

echo -e "$kernel $linux_version \U1f427 $cpu% $temp \U1f4bb $battery_status $capacity% \U1f50b $date_formatted"

