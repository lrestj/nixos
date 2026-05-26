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
          hash = "sha256-SC2V/ls8jYzEqpa91Zo9+lOzH5hN6po8sRSd8uG8P8k=";
        };
      });
    })
  ];

  environment.systemPackages = [ pkgs.vim-full ];
}
