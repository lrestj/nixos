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
          hash = "sha256-lBrcO7zDjjPDxa9LKzGFl9nTWuI0kVsuYRgcPcZgLzc=";
        };
      });
    })
  ];

  environment.systemPackages = [ pkgs.vim-full ];
}
