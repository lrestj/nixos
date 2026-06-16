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
          hash = "sha256-KCSWpqmrXYT+dDeO7CmKO1nyQJ4NWvWeM1YbzX74tDY=";
        };
      });
    })
  ];

  environment.systemPackages = [ pkgs.vim-full ];
}
