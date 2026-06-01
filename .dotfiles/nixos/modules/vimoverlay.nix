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
          hash = "sha256-SZ3vbgQISJBGeNd0vWowcZ+7P0dE8rwMxdfsUstu2e0=";
        };
      });
    })
  ];

  environment.systemPackages = [ pkgs.vim-full ];
}
