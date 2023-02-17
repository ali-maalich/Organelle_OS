#!/bin/bash

clear
echo "Change root password"
echo "Enter [root] at the prompt that appears"
sudo passwd root
sudo raspi-config nonint do_hostname barbonelle

echo "Step #0 finished."
echo "The Raspberry will restart - press a button"
read
reboot
