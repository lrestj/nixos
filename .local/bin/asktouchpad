#!/bin/bash


# Replace {touchpad_device_name} with the actual name of your touchpad
touchpad_device_name="synps/2-synaptics-touchpad"

#Function to disable touchpad
disable_touchpad() {
  hyprctl keyword device[${touchpad_device_name}]:enabled false
  notify-send -c center -i $HOME/.dotfiles/icons/touchpad.svg "Touchpad zakázán"
}

# Function to enable touchpad
enable_touchpad() {
  hyprctl keyword device[${touchpad_device_name}]:enabled true
  # echo "Touchpad aktivní"
   notify-send -c center -i $HOME/.dotfiles/icons/touchpad.svg "Touchpad aktivní"
}

# Ask user
read -n1 -s -t10 -p "Aktivovat/zakázat touchpad ???   Zvolte [A,z]:  " input
 if [ "$input" = "z" ]; then
   disable_touchpad
 else
   enable_touchpad
 fi

