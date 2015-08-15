#!/bin/bash

fg="\e[0;39m"
bg="\e[0;33m"

hostname=$(hostname)
distro=$(crux)
kernel=$(uname -r)
uptime=$(uptime -p | sed s:"up "::)
entropy=$(cat /proc/sys/kernel/random/entropy_avail)
packages=$(pkginfo -i | wc -l)
wm="OpenBox"

echo -e "               ${bg}$USER${fg}@${bg}$hostname"
echo -e "${bg}     .--.      ${fg}Entropy: ${bg}$entropy"
echo -e "    |o_o |     ${fg}Distro: ${bg}$distro"
echo -e "    |\\_/ |     ${fg}Kernel: ${bg}$kernel"
echo -e "   //   \\ \\    ${fg}Uptime: ${bg}$uptime"
echo -e "  ( |    | )   ${fg}Shell: ${bg}$SHELL"
echo -e "  /'\\   _/'\\   ${fg}Packages: ${bg}$packages"
echo -e "  \\__)--(__/   ${fg}WM: ${bg}$wm$(tput sgr0)"
