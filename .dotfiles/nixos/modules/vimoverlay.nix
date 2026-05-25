{ config, pkgs, ... }:

{
  nixpkgs.overlays = [
    (final: prev: {
      vim-full = prev.vim-full.overrideAttrs (oldAttrs: rec {
        version = "master";
        src = pkgs.fetchFromGitHub {
          owner = "vim";
          repo = "vim";
          rev = "master";
          hash = "sha256-ywL8D+JXqs2Z+72fwXNqc7yDbCdki4qLaBasf1+Xzuc=";
        };
      });
    })
  ];

  environment.systemPackages = [ pkgs.vim-full ];
}
