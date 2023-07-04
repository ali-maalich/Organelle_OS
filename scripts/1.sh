#!/bin/bash

clear
raspi-config nonint do_boot_wait 0
raspi-config nonint do_ssh 1

echo "@music - rtprio 99" >> /etc/security/limits.conf
echo "@music - memlock unlimited" >> /etc/security/limits.conf
echo "@music - nice -10" >> /etc/security/limits.conf
echo "DefaultTimeoutStartSec=10s" >> /etc/systemd/system.conf
echo "DefaultTimeoutStopSec=5s" >> /etc/systemd/system.conf

echo "now you need to change the user's password"
echo "The current password is raspberry -> change it to music"
echo "Press a key to start raspi-config and change the password"
echo "System Options / password"
read
sudo raspi-config

echo "#1 finished."
echo "Create the 'music' user as instructed"
read
exit
