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
          hash = "sha256-u7mCQSkcPxUxIfaoc7SrSq9QOb1Rk12Jpqzp3jvASHI=";
        };
      });
    })
  ];

  environment.systemPackages = [ pkgs.vim-full ];
}
