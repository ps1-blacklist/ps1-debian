#!/bin/bash
colors=(31 33 32 36 34 35)

show_banner() {
    banner=(
    "    ____     ___  ____       __    _           "
    "   / __ \____<  / / __ \___  / /_  (_)___ _____"
    "  / /_/ / ___/ / / / / / _ \/ __ \/ / \`_ \`/ __ \\\\"
    " / ____(__  ) / / /_/ /  __/ /_/ / / /_/ / / / /"
    "/_/   /____/_/ /_____/\___/_.___/_/\__,_/_/ /_/ "
    "                                               v1.0"
    ""
    "  Ps1-Debian | Automated Termux X11 Debian Installer"
    "  Desktop : Xfce4"
    "    by @ps1-blacklist"
    ""
    )

    i=0
    for line in "${banner[@]}"; do
        color=${colors[$((i % ${#colors[@]}))]}
        echo -e "\e[${color}m$line\e[0m"
        ((i++))
    done
}

show_banner