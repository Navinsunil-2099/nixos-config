{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    blueman
    sddm-chili-theme
    wget
    curl
    unzip

    # Basics
    htop
    kitty
    fastfetch
    freshfetch
    honeyfetch
    yazi
    wlogout

    #typing cli
    smassh

    #note app
    obsidian
    syncthing
    quickshell

   


    # Programming & development
    git
    openssh
    gcc
    temurin-bin-21
    gnumake
    neovim
    vscode
    nodejs_22
    bun
    python3
    postgresql
    ripgrep
    fd
    lazygit
    tree-sitter

    # Browsers
    brave

    mangohud

    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default

    # Video stuff
    mpv

    # Battery management tools
    tlp
    powertop

    # Desktop / Wayland
    fuzzel
    waybar
    niri

    #inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.dms.packages.${pkgs.stdenv.hostPlatform.system}.default

    # X11
    xwayland-satellite

    # Audio & networking
    pavucontrol
    networkmanagerapplet
    playerctl
    grim
    slurp

    # Wallpaper daemons
    swaybg
    swww

    # Notification / clipboard
    wl-clipboard

    # Sway stuff
    swaylock
    swayidle
    brightnessctl
    waypaper

    # File sender
    localsend

    # Applications
    telegram-desktop
    nautilus

    # Fonts
    nerd-fonts.jetbrains-mono
    nerd-fonts.caskaydia-mono
    nerd-fonts.symbols-only
    terminus_font_ttf
    cozette

    btop

    # GPU things
    intel-gpu-tools

    spotify
    bibata-cursors
    kdePackages.breeze

    # TUI show stuff
    cmatrix
    hollywood
    asciiquarium
    ani-cli
  ];

  environment.sessionVariables = {
    XCURSOR_THEME = "breeze_cursors";
    XCURSOR_SIZE = "24";
  };

  programs.firefox.enable = true;

  programs.nix-ld.enable = true;

  programs.nix-ld.libraries = with pkgs; [
    # X11
  libx11
  libxext
  libxrender
  libxtst
  libxi
  libxrandr
  libxcb
  libxkbcommon
  libxfixes
  libxkbfile
  libxcursor
  libxdamage
  libxcomposite
  libbsd

  libSM
  libICE

  
  # Graphics
  libGL
  libdrm
  mesa

  # GTK / GLib
  glib
  gtk3

  # Audio
  libpulseaudio
  alsa-lib

  # Emulator / Chromium-style runtime dependencies
  nss
  nspr

  # Images / compression
  libpng
  zlib

  # Terminal / C++ runtime
  ncurses
  stdenv.cc.cc.lib

  # Common runtime dependencies
  dbus
  expat
  fontconfig
  freetype
  ];
}
