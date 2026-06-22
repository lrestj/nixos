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
          hash = "sha256-Xl1uz+b5yFnkY6/q6pgjE5xlRILJFVtDFCNl/dU08PM=";
        };
      });
    })
  ];

  environment.systemPackages = [ pkgs.vim-full ];
}
