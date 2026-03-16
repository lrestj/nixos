{ config, pkgs, inputs, pkgsStable, ... }:

{

  imports = [ 
      # ./vimoverlay.nix
  ]; 
  
  fonts.packages = with pkgs; [
      font-awesome
      corefonts vista-fonts
      noto-fonts
      source-code-pro 
      nerd-fonts.hack
      nerd-fonts.jetbrains-mono
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
            lxqt.lxqt-policykit
            mako
            mpv
            networkmanagerapplet
            nwg-look
            pamixer
            papirus-icon-theme
            pavucontrol
            pdfarranger
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
      xfconf.enable = true;
      dconf.enable = true;  
      gnome-disks.enable = true;
      thunar = {
          enable = true;
          plugins = with pkgs; [ 
              thunar-archive-plugin
              thunar-volman
          ];
      };
      sway = {
          enable = true;
          wrapperFeatures.gtk = true;
          xwayland.enable = true;
          extraPackages = with pkgs; [
              grim
              swaybg
              swaylock
              swayidle
              sway-contrib.grimshot
              wlprop
              wl-color-picker
              waybar
              waypaper
          ];
      };
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
