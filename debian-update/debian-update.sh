#!/bin/bash

CYAN='\e[0;36m'
STOP='\e[0m'
ENV="DEBIAN_FRONTEND=noninteractive"
distro="pd login debian"

echo -e "\n${CYAN}​⚡ Updating Distro...${STOP}\n"
$distro -- env $ENV apt update -y

clear

echo -e "\n${CYAN}​⚡ Upgrading Distro...${STOP}\n"
$distro -- env $ENV apt upgrade -y

clear

echo -e "\n${CYAN} Distro Status --> Ok${STOP}\n"
sleep 4
