#!/bin/bash

clear
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y iptables dhcpcd5 adwaita-icon-theme conky csound cython3 dnsmasq git gnome-themes-standard gtk-theme-switch hostapd jwm libasound2-dev liblo-dev liblo-tools luarocks lxterminal mpg123 nodejs pcmanfm puredata pyliblo-utils python3-cherrypy3 python3-liblo python3-rpi.gpio realvnc-vnc-server supercollider x11-utils x11-xserver-utils xinit zip

cd /tmp
wget https://project-downloads.drogon.net/wiringpi-latest.deb
sudo dpkg -i wiringpi-latest.deb

#sudo raspi-config nonint do_boot_behaviour B2

echo "#3 concluso"
echo "premere un tasto per riavviare"
reboot
