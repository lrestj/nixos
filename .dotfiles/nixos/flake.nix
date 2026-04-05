{

  description = "My NixOS config flake";

  
  inputs = {
      nixpkgs.url = "nixpkgs/nixos-unstable"; 
      nixpkgs-stable.url = "nixpkgs/nixos-25.11"; 
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
          mirantb = nixpkgs.lib.nixosSystem {
              system = "x86_64-linux";
              specialArgs = { inherit inputs; };
              modules = [
                  ./hosts/mirantb/configuration.nix
              ];
          };
          probook = nixpkgs.lib.nixosSystem {
              system = "x86_64-linux";
              specialArgs = { inherit inputs; };
              modules = [
                  ./hosts/probook/configuration.nix
              ];
          };
      };
  }; 
}

#####  END OF FILE  #####
