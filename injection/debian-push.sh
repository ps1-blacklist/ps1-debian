#!/bin/bash

RED='\e[0;31m'
STOP='\e[0m' 
distro="pd login debian"

echo -e "\n${RED}​⚡ Checking debian graphics launcher...${STOP}\n"
sleep 3
clear

if [[ ! $($distro -- bash -c 'test -f ~/.x11-start.sh; echo $?') -eq 0 ]]; then
    echo -e "\n${RED}​⚡ Injecting...${STOP}\n"

    $distro -- touch ~/.x11-start.sh
    $distro -- bash -c 'echo "export DISPLAY=:0 && dbus-launch --exit-with-session startxfce4" > ~/.x11-start.sh'

    sleep 3
    echo -e "\n${RED}​⚡ Injected successfully...${STOP}\n"

else
    echo -e "\n${RED}​⚡ Launcher already exist...${STOP}\n"
fi

sleep 3
