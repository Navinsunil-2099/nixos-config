{ pkgs, ... }:

{
  services.xserver.displayManager.gdm.enable = false;

  services.displayManager = {
    sddm = {
      enable = false;
      package = pkgs.kdePackages.sddm;
      wayland.enable = true;
      theme = "chili";
    };

  };

  services.displayManager = {
    ly.enable = true;

    autoLogin = {
      enable = false;
      user = "navin";
    };
  };
}
