#!/bin/bash

CYAN='\e[0;36m'
STOP='\e[0m' 

echo -e "\n${CYAN}​⚡ Installing Proot Distro...${STOP}\n"
sleep 1
pkg install proot-distro -y

clear

echo -e "\n${CYAN}​⚡ Installing Debian...${STOP}\n"
sleep 1
proot-distro install debian

echo -e "\n${CYAN}​⚡ Installed Sucessfully...${STOP}\n"
sleep 5