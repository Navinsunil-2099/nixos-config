{ pkgs, ... }:

{
  boot.loader.systemd-boot.enable = false;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.loader.grub = {
    enable = true;
    device = "nodev";
    efiSupport = true;
    useOSProber = true;
  };

  boot.kernelParams = [
    "mem_sleep_default=deep"
  ];

  boot.kernelPackages = pkgs.linuxPackages_latest;

  systemd.services.resume-kbd-backlight-off = {
    description = "Turn off keyboard backlight after resume";

    wantedBy = [
      "suspend.target"
    ];

    after = [
      "suspend.target"
    ];

    serviceConfig = {
      Type = "oneshot";

      ExecStart = ''
         ${pkgs.bash}/bin/bash -c "sleep 2 && echo 0 > /sys/class/leds/platform::kbd_backlight/brightness"
      '';
    };
  };
}
