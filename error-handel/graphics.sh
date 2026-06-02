#!/bin/bash

YELLOW='\e[0;33m'
STOP='\e[0m' 
distro=pd login debian
echo -e "\n${YELLOW}​⚡ Fixing some graphics issue...${STOP}\n"
sleep 2
$distro -- xfwm4 --replace &