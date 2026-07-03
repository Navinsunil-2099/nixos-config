{ ... }:

{
  programs.hyprlock.enable = true;

  xdg.configFile."hypr/hyprlock.conf".source =
    ./hyprlock.conf;

  xdg.configFile."hypr/assets/nixos.png".source =
    ./assets/nixos.png;
}
