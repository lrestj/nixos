#!/bin/bash

sdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
icon="/home/libor/.dotfiles/icons/help.png"
title="Základní klávesové zkratky:"

notify-send -t 35000 -c help -u critical -i dialog-information "$title" "$(cat $sdir/helpnotify.txt)"
