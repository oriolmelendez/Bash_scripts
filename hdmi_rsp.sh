#!/bin/bash

if [ "$EUID" -ne 0 ]
	then echo "Please run as root"
	exit
fi

cp /boot/config.txt /boot/config_backup.txt

echo "hdmi_force_hotplug=1" >> /boot/config.txt
echo "hdmi_group=2" >> /boot/config.txt
echo "hdmi_mode=42" >> /boot/config.txt
