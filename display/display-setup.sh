#!/bin/bash 

BLUE='\e[0;34m'
STOP='\e[0m'
distro="pd login debian"
clear

echo -e "\n${BLUE}​⚡ Setup Debian Desktop -->X11${STOP}"
sleep 3

clear

echo -e "\n${BLUE}​⚡ Installing XFCE...${STOP}\n"
sleep 1
$distro -- apt install xfce4 -y

clear

echo -e "\n${BLUE}​⚡ Installing Dbus...${STOP}"
sleep 1
$distro -- apt install dbus -y

clear

echo -e "\n${BLUE}​⚡ Installing Dbus-x11...${STOP}"
sleep 1
$distro -- apt install dbus-x11 -y

clear

echo -e "\n${BLUE}​⚡​⚡​⚡ Display Setup --> OK...${STOP}"
sleep 5