#!/bin/bash

GREEN='\e[0;32m'
STOP='\e[0m' 

clear

echo -e "${GREEN}​⚡ Updating System... ${STOP}\n"
sleep 3
pkg update -y

clear

echo -e "​${GREEN}⚡ Upgrading System...${STOP}\n"
sleep 2
pkg upgrade -y -o Dpkg::Options::="--force-confnew"

clear

echo -e "${GREEN}⚡ Installing X11-repo...${STOP}\n"
sleep 1
pkg install x11-repo -y

clear

echo -e "${GREEN}⚡ Installing Termux-x11-nightly...${STOP}\n"
sleep 1
pkg install termux-x11-nightly -y

clear

bashrc_path=/data/data/com.termux/files/home/.bashrc

echo -e "​${GREEN}⚡ Checking Launcher...${STOP}\n"
sleep 2
if [ ! -f $bashrc_path ]; then
    echo -e "\n${GREEN}​⚡ Creating File...${STOP}"
    touch $bashrc_path 
else
    clear
    echo -e "${GREEN}\n​⚡ Launcher Areadly Exist...${STOP}\n"
fi

sleep 5

