#!/bin/bash
RED='\e[0;31m'
STOP='\e[0m' 


bashrc_path=/data/data/com.termux/files/home/.bashrc
src="alias ps1-debian='pgrep termux-x11 >/dev/null || termux-x11 :0 & sleep 4 && pd login debian --shared-tmp -- bash .x11-start.sh
'"
exist=$(cat $bashrc_path | grep -xF "${src}")

echo -e "\n${RED}​⚡ Checking debian-x11 launcher....${STOP}\n"
sleep 2
clear
if [[ "$src" != "$exist" ]]; then
    echo -e "\n${RED}​⚡ Injecting launcher...${STOP}\n"
    echo "$src" >> $bashrc_path

else
    clear
    echo -e "\n${RED}​⚡ Launcher already injected...${STOP}\n"
fi
    source $bashrc_path
sleep 3