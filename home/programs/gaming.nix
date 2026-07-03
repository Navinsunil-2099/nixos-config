{ pkgs, ... }:

{
  home.packages = with pkgs; [
    heroic
    steam

    # These were commented out in your original home.nix:
    # wineWowPackages.stable
    # winetricks
  ];
}
