#!/bin/bash

clear
echo "Change root password"
echo "Enter [root] at the prompt that appears"
sudo passwd root
sudo raspi-config nonint do_hostname barbonelle

sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

echo "Step #0 finished."
echo "The Raspberry will restart - press a button"
read
reboot
