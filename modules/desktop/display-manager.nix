{ pkgs, ... }:

{
  services.xserver.displayManager.gdm.enable = true;

  services.displayManager = {
    sddm = {
      enable = false;
      package = pkgs.kdePackages.sddm;
      wayland.enable = true;
      theme = "chili";
    };

    autoLogin = {
      enable = false;
      user = "navin";
    };
  };
}
