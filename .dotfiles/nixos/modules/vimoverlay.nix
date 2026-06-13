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
          hash = "sha256-Pz5ZtljOetwqPhhvv1nQsS37/1LYb5+4QSmh00G4TIc=";
        };
      });
    })
  ];

  environment.systemPackages = [ pkgs.vim-full ];
}
