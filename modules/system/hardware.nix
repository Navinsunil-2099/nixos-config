{ pkgs, ... }:

{
  # Intel graphics
  hardware.graphics = {
    enable = true;

    extraPackages = with pkgs; [
      intel-media-driver
    ];
  };

  # Bluetooth
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
  };

  services.blueman.enable = true;

  # Touchpad
  services.xserver.libinput.enable = true;
}
