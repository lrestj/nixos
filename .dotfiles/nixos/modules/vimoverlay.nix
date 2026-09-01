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
          hash = "sha256-6kC53aePaL9d/dvGoOYvbHxjQAarGbNdpi3NLG56LbE=";
        };
      });
    })
  ];

  environment.systemPackages = [ pkgs.vim-full ];
}
