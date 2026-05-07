{ config, pkgs, lib, pkgsStable, ... }:

{

  nixpkgs.overlays = [
      (final: prev: {
          vim = prev.vim.overrideAttrs (old: {
              name = "vim-git";
              src = prev.fetchFromGitHub {
                  owner = "vim";
                  repo = "vim";
                  rev = "latest";
                  hash = "";
              };
          });  
      })
  ];

}
