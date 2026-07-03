{ ... }:

{
  programs.waybar = {
    enable = true;

    systemd.enable = false;
  };

  xdg.configFile."waybar/config.jsonc".source = ./config.jsonc;
  xdg.configFile."waybar/style.css".source = ./style.css;
}
