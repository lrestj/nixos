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
          hash = "sha256-o+ikjjY3IZlT4yxTArV9BFhlFBKoLiJs843Uf+i8AMU=";
        };
      });
    })
  ];

  environment.systemPackages = [ pkgs.vim-full ];
}
