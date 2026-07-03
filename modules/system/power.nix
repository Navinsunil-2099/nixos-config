{ pkgs, ... }:

{
  services.tlp.enable = true;

  powerManagement.powertop.enable = true;

  services.power-profiles-daemon.enable = false;

  services.logind.lidSwitch = "suspend";

  services.acpid = {
    enable = true;

    handlers.lid = {
      event = "button/lid.*";

      action = ''
        sudo -u navin env \
          XDG_RUNTIME_DIR=/run/user/1000 \
          WAYLAND_DISPLAY=wayland-1 \
          noctalia msg session lock-and-suspend
      '';
    };
  };
}
