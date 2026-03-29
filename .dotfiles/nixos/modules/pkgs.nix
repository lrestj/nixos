{ config, pkgs, inputs, pkgsStable, ... }:

{

  imports = [ 
      # ./vimoverlay.nix
  ]; 
  
  fonts.packages = with pkgs; [
      font-awesome
      jetbrains-mono
      corefonts vista-fonts
      noto-fonts
      source-code-pro 
      nerd-fonts.hack
      nerd-fonts.symbols-only
  ];
  
  _module.args.pkgsStable = import inputs.nixpkgs-stable {
      inherit (pkgs.stdenv.hostPlatform) system;
      inherit (config.nixpkgs) config;
    };
  
    environment.systemPackages =
        (with pkgs; [
            audacity
            banana-cursor
            baobab
            bemoji
            bibata-cursors
            brave
            brightnessctl
            btop
            cliphist
            cmake
            dconf-editor
            efibootmgr
            evince
            exfatprogs
            fastfetch
            fcft
            file-roller
            fish
            font-manager
            foot
            fuzzel
            fzf
            # galculator
            geany
            glib util-linux
            gparted
            mesa-demos
            hunspellDicts.cs_CZ
            hunspellDicts.en_US
            jq
            kdePackages.breeze-icons
            kdePackages.qt6ct
            kdePackages.qtsvg
            kdePackages.qtwayland
            killall
            kitty
            libnotify
            libreoffice-fresh
            libva-utils
            lshw
            mako
            mpv
            nautilus
            networkmanagerapplet
            nwg-look
            pamixer
            papirus-icon-theme
            pavucontrol
            pdfarranger
            polkit_gnome
            python3Minimal
            rclone
            reaper  
            reaper-reapack-extension
            reaper-sws-extension
            ripgrep
            rofi
            simple-scan
            slurp
            udiskie
            unzip
            vim-full
            vlc
            grim
            swaybg
            swaylock
            swayidle
            sway-contrib.grimshot
            wlprop
            waybar
            wl-color-picker
            waypaper
            wget
            whitesur-icon-theme
            wl-clipboard
            wlsunset
            xdg-user-dirs
            xdg-utils
            xnviewmp
            xeyes
            xournalpp
            yazi
            ytdownloader
            zip
            p7zip
            (pkgs.writeScriptBin "sct" ''
                #!/bin/sh
                killall wlsunset &> /dev/null;
                if [ $# -eq 1 ]; then
                    temphigh=$(( $1 + 1 ))
                    templow=$1
                    wlsunset -t $templow -T $temphigh &> /dev/null &
                else
                    killall wlsunset &> /dev/null;
                fi
            '')
            ])

        ++

        (with pkgsStable; [
            # vim-full
            galculator
        ]);
  
  programs = {
      niri = {
          enable = true;
          useNautilus = true;
      };
      nautilus-open-any-terminal.enable = true;
      xfconf.enable = true;
      dconf.enable = true;  
      gnome-disks.enable = true;
      # thunar = {
      #     enable = true;
      #     plugins = with pkgs; [ 
      #         thunar-archive-plugin
      #         thunar-volman
      #     ];
      # };
      git = {
          enable = true;
          config = {
              safe.directory = "/home/libor/.dotfiles";
              init = {
                  defaultBranch = "main";
                  userName  = "libor";
                  userEmail = "rest@seznam.cz";
              };
          };
      };
  };

}

#####  END OF FILE  #####
