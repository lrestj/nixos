{

  description = "My NixOS config flake";

  
  inputs = {
      nixpkgs.url = "nixpkgs/nixos-unstable"; 
      nixpkgs-stable.url = "nixpkgs/nixos-25.11"; 
      # waybar = {
      #     url = "github:alexays/waybar";
      #     inputs.nixpkgs.follows = "nixpkgs";
      # };
  };


  outputs = { self, nixpkgs, ... }@inputs: {
      nixosConfigurations = {
          nixos = nixpkgs.lib.nixosSystem {
              system = "x86_64-linux";
              specialArgs = { inherit inputs; };
              modules = [
                  ./hosts/zbook/configuration.nix
              ];
          };
          probook = nixpkgs.lib.nixosSystem {
              system = "x86_64-linux";
              specialArgs = { inherit inputs; };
              modules = [
                  ./hosts/probook/configuration.nix
                  # ({ pkgs, ... }: {
                      # environment.systemPackages = [
                        # inputs.waybar.packages.${pkgs.system}.waybar
                      # ];
                  # })
              ];
          };
      };
  }; 
}

#####  END OF FILE  #####
