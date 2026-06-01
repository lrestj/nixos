#!/bin/bash
################################################################################
# Author: 	imatsatsos                                                         #
# Description:	This script will apply the tweaks I use on a Void Linux system #
################################################################################

set -e

# boxes for nice text
boxf() {
    title=" $1 "
    edge=$(echo "$title" | sed 's/./*/g')
    echo "$edge"
    echo -e "\e[1;32m$title\e[0m"
    echo "$edge"
}

boxu() {
    title=" $1 "
    edge=$(echo "$title" | sed 's/./*/g')
    echo "$edge"
    echo -e "\e[1;32m$title\e[0m"
}

box() {
    title=" $1 "
    echo -e "\e[1;32m$title\e[0m"
}

boxerr() {
    title=" $1 "
    echo -e "\e[1;31m$title\e[0m"
}

boxd() {
    title=" $1 "
    edge=$(echo "$title" | sed 's/./*/g')
    echo -e "\e[1;32m$title\e[0m"
    echo "$edge"
}

command_exists () {
    command -v $1 >/dev/null 2>&1;
}


### Check if Script is Run as Root ###
if [[ "$EUID" = 0 ]]; then
    box "Please rerun this as a regular user!" 2>&1
    sleep 2
    exit 1
fi


### OPENING
boxu "                   !!!!  IMPORTANT  !!!!                    "
boxu "   THIS SCRIPT MODIFIES SERVICES, APPLICATION AUTOSTARTS,   "
box  "   REMOVES APPS, TWEAKS SETTINGS AND APPLIES MY PREFFERED   "
box  " SETUP TO A VOID LINUX SYSTEM. !READ IT BEFORE RUNNING IT!  "
boxd "            Do you still want to continue? [y/N]            "
read -r accept
if [[ "$accept" == [Y/y] ]];
then
    box "OK! Lets get started! \n"
else
    box "That's ok, thanks for checking out this script. \n"
    exit
fi


### Check dependencies
if command_exists git && command_exists curl
then
    box "Dependencies found! \n"
else
    boxf "> Installing dependencies.."
    for pkmgr in xbps-install pacman; do
        type -P "$pkmgr" &> /dev/null || continue
        case $pkmgr in
            xbps-install)
                sudo xbps-install -Sy git curl
                box "Done \n"
                ;;
            pacman)
                sudo pacman -Suy git curl
                ;;
        esac
        return
    done 
fi

### Disable useless services (for a laptop) ###
boxf "> Disabling useless services.."
sleep 2
[ -d /var/service/agetty-tty6 ]    && sudo rm -v /var/service/agetty-tty6
[ -d /var/service/agetty-tty5 ]    && sudo rm -v /var/service/agetty-tty5
box "Done \n"


### Remove useless packages ###
boxf "> Removing useless packages.."
sleep 2
sudo cp -v ./99-ignored-pkgs.conf /etc/xbps.d/99-ignored-pkgs.conf
sudo xbps-remove -Fy mdadm linux-firmware-amd linux-firmware-broadcom mobile-broadband-provider-info ipw2200-firmware ipw2100-firmware
box "Done \n"


### DONE
boxu "============= WE ARE DONE! =============="
boxd "            Please reboot !!!            "
