{ pkgs, ... }:

{
  home.packages = with pkgs; [
    telegram-desktop
    localsend
  ];
}
