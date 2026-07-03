{ pkgs, ... }:

{
  home.packages = with pkgs; [
    neovim
    vscode
    antigravity

    flutter
    android-studio
    jdk17
    android-tools
    firebase-tools
  ];
}
