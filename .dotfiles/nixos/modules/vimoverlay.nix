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
          sha256 = "sha256-B6iTvRQ4ca3ZHVbIWv3+sa2Rv/NHmQra6H+e/Y+NIVQ=";
        };
      });
    })
  ];

  environment.systemPackages = [ pkgs.vim-full ];
}
