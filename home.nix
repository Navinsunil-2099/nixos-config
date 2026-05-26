{ config, pkgs, ... }:

{
  home.username = "navin";
  home.homeDirectory = "/home/navin";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    userName = "Navin";
    userEmail = "navinsunil06@gmail.com";
  };

  home.packages = with pkgs; [
    # terminal stuff
    fastfetch
    btop
    htop
    wget
    unzip
    ripgrep
    fd
    lazygit
    tree-sitter

    # editors & tools
    neovim
    vscode

    # browsers & apps
    brave
    spotify
    telegram-desktop
    localsend

    # media
    mpv
    ani-cli

    # terminal fun
    cmatrix
    hollywood
    asciiquarium

    # desktop utilities
    pavucontrol
    playerctl
    brightnessctl
    wl-clipboard

    # screenshots & wayland tools
    grim
    slurp

    # file manager
    nautilus

    # extra tui stuff
    kitty
    fastfetch
  ];

  programs.fish = {
    enable = true;

    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#nixos";
      update = "sudo nix flake update && sudo nixos-rebuild switch --flake /etc/nixos#nixos";
      gs = "git status";
      vimconfig = "sudo vim /etc/nixos/configuration.nix";
      homeconfig = "sudo vim /etc/nixos/home.nix";
      flakeconfig = "sudo vim /etc/nixos/flake.nix";
    };

    interactiveShellInit = ''
      set -g fish_greeting
      fastfetch
    '';
  };

  programs.btop.enable = true;

  programs.fastfetch.enable = true;

  programs.kitty = {
    enable = true;

    settings = {
      confirm_os_window_close = 0;
      enable_audio_bell = false;
    };
  };

  programs.git.extraConfig = {
    init.defaultBranch = "main";
    pull.rebase = false;
  };

  home.sessionVariables = {
    EDITOR = "nvim";
    TERMINAL = "kitty";
  };
}
