{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Terminal tools
    htop
    wget
    unzip
    ripgrep
    fd
    lazygit
    tree-sitter
    plocate
    tree

    # VPN
    proton-vpn

    # Display / Wayland tools
    wlr-randr

    # Terminal fun
    cmatrix
    hollywood
    asciiquarium
    cbonsai
    hyprpicker

    # Desktop utilities
    pavucontrol
    playerctl
    brightnessctl
    wl-clipboard

    # Screenshots
    grim
    slurp

    # File manager
    nautilus
  ];
}
