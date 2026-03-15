#!/bin/bash

sudo nix-env -p /nix/var/nix/profiles/system --list-generations | awk '{print $1}'| paste -s -d " "
