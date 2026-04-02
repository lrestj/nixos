{ config, pkgs, lib, inputs, ... }:

{
  hardware = {
      nvidia = {
          modesetting.enable = true;
          powerManagement = {
              enable = true;
              finegrained = true;
          };
          nvidiaSettings = true;
          package = config.boot.kernelPackages.nvidiaPackages.beta;
          open = false;
          prime = {
              intelBusId = "PCI:0:2:0";
              nvidiaBusId = "PCI:1:0:0";
              offload = {
                  enable = true;
                  enableOffloadCmd = true;
              };
          };
      };
  };

  boot ={
       kernelParams = [ "nvidia-drm.fbdev=1" ];
      # initrd.kernelModules = [ "nvidia" "nvidia_modeset" "nvidia_drm" ];
      
  };

  services = {
      xserver = {
          videoDrivers = [ "nvidia" ];
      };
  };

}

#####  END OF FILE  #####
