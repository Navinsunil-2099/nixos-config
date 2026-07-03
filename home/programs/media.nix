{ pkgs, ... }:

{
  home.packages = with pkgs; [
    spotify

    mpv
    ani-cli
    qbittorrent
    overskride
    vlc
    gnome-network-displays
  ];
}
