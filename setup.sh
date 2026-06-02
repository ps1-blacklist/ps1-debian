#!/bin/bash

clear

cd "$(dirname "$0")" || exit 1

# banner
bash banner/banner.sh
sleep 5

clear

# termux
bash termux-setup/x11-setup.sh

clear

# debian install
bash debian-installer/debian-installer.sh

clear

# debian update
bash debian-update/debian-update.sh

clear

# distro display
bash display/display-setup.sh

clear

# termux launcher injection
bash injection/termux-push.sh

clear

# debian launcher injection
bash injection/debian-push.sh

clear

# fixing some graphics issue
bash error-handel/graphics.sh

clear

# banner .
bash banner/banner.sh
bash end/use.sh
