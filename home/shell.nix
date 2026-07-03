{ ... }:

{
  programs.fish = {
    enable = true;

    shellAliases = {
      # =========================
      # NixOS rebuild
      # =========================

      rebuild =
        "sudo nixos-rebuild switch --flake /etc/nixos#nixos";

      testbuild =
        "sudo nixos-rebuild test --flake /etc/nixos#nixos";

      build =
        "sudo nixos-rebuild build --flake /etc/nixos#nixos";

      update =
        "cd /etc/nixos && sudo nix flake update && sudo nixos-rebuild switch --flake /etc/nixos#nixos";


      # =========================
      # Open full NixOS config
      # =========================

      nixconfig =
        "cd /etc/nixos && sudo nvim .";


      # =========================
      # Core config files
      # =========================

      flakeconfig =
        "sudo nvim /etc/nixos/flake.nix";

      sysconfig =
        "sudo nvim /etc/nixos/modules/system/default.nix";

      homeconfig =
        "sudo nvim /etc/nixos/home/default.nix";


      # =========================
      # System modules
      # =========================

      syspkgs =
        "sudo nvim /etc/nixos/modules/system/packages.nix";

      bootconfig =
        "sudo nvim /etc/nixos/modules/system/boot.nix";

      networkconfig =
        "sudo nvim /etc/nixos/modules/system/networking.nix";

      localeconfig =
        "sudo nvim /etc/nixos/modules/system/locale.nix";

      usersconfig =
        "sudo nvim /etc/nixos/modules/system/users.nix";

      hardwareconfig =
        "sudo nvim /etc/nixos/modules/system/hardware.nix";

      powerconfig =
        "sudo nvim /etc/nixos/modules/system/power.nix";

      servicesconfig =
        "sudo nvim /etc/nixos/modules/system/services.nix";


      # =========================
      # Desktop modules
      # =========================

      desktopconfig =
        "sudo nvim /etc/nixos/modules/desktop/default.nix";

      niriconfig =
        "sudo nvim /etc/nixos/home/niri/config.kdl";

      waybarconfig =
        "sudo nvim /etc/nixos/home/waybar/config.jsonc";

      waybarstyle =
        "sudo nvim /etc/nixos/home/waybar/style.css";

      fuzzelconfig =
        "sudo nvim /etc/nixos/home/fuzzel/fuzzel.ini";

      hyprlockconfig =
        "sudo nvim /etc/nixos/home/hyprlock/hyprlock.conf";

      hypridleconfig =
        "sudo nvim /etc/nixos/home/hypridle/hypridle.conf";


      # =========================
      # Home package groups
      # =========================

      browsers =
        "sudo nvim /etc/nixos/home/programs/browsers.nix";

      devpkgs =
        "sudo nvim /etc/nixos/home/programs/development.nix";

      media =
        "sudo nvim /etc/nixos/home/programs/media.nix";

      gaming =
        "sudo nvim /etc/nixos/home/programs/gaming.nix";

      comms =
        "sudo nvim /etc/nixos/home/programs/communication.nix";

      utilities =
        "sudo nvim /etc/nixos/home/programs/utilities.nix";


      # =========================
      # Gaming system modules
      # =========================

      steamconfig =
        "sudo nvim /etc/nixos/modules/gaming/steam.nix";

      gamemodeconfig =
        "sudo nvim /etc/nixos/modules/gaming/gamemode.nix";

      gamescopeconfig =
        "sudo nvim /etc/nixos/modules/gaming/gamescope.nix";

      wineconfig =
        "sudo nvim /etc/nixos/modules/gaming/wine.nix";


      # =========================
      # Git
      # =========================

      gs =
        "cd /etc/nixos && git status";

      ga =
        "cd /etc/nixos && sudo git add -A";

      gl =
        "cd /etc/nixos && git log --oneline --graph --decorate -10";
    };

    interactiveShellInit = ''
      set -g fish_greeting
      fastfetch
    '';

    functions.fish_prompt = ''
      set_color --bold green
      printf '[%s@%s:%s]$ ' $USER (prompt_hostname) (prompt_pwd)
      set_color normal
    '';

  };


  programs.bash = {
    enable = true;

    shellAliases = {
      # NixOS rebuild
      rebuild =
        "sudo nixos-rebuild switch --flake /etc/nixos#nixos";

      testbuild =
        "sudo nixos-rebuild test --flake /etc/nixos#nixos";

      build =
        "sudo nixos-rebuild build --flake /etc/nixos#nixos";

      update =
        "cd /etc/nixos && sudo nix flake update && sudo nixos-rebuild switch --flake /etc/nixos#nixos";


      # Full config
      nixconfig =
        "cd /etc/nixos && sudo nvim .";


      # Core config
      flakeconfig =
        "sudo nvim /etc/nixos/flake.nix";

      sysconfig =
        "sudo nvim /etc/nixos/modules/system/default.nix";

      homeconfig =
        "sudo nvim /etc/nixos/home/default.nix";


      # System modules
      syspkgs =
        "sudo nvim /etc/nixos/modules/system/packages.nix";

      bootconfig =
        "sudo nvim /etc/nixos/modules/system/boot.nix";

      networkconfig =
        "sudo nvim /etc/nixos/modules/system/networking.nix";

      localeconfig =
        "sudo nvim /etc/nixos/modules/system/locale.nix";

      usersconfig =
        "sudo nvim /etc/nixos/modules/system/users.nix";

      hardwareconfig =
        "sudo nvim /etc/nixos/modules/system/hardware.nix";

      powerconfig =
        "sudo nvim /etc/nixos/modules/system/power.nix";

      servicesconfig =
        "sudo nvim /etc/nixos/modules/system/services.nix";


      # Desktop configs
      desktopconfig =
        "sudo nvim /etc/nixos/modules/desktop/default.nix";

      niriconfig =
        "sudo nvim /etc/nixos/home/niri/config.kdl";

      waybarconfig =
        "sudo nvim /etc/nixos/home/waybar/config.jsonc";

      waybarstyle =
        "sudo nvim /etc/nixos/home/waybar/style.css";

      fuzzelconfig =
        "sudo nvim /etc/nixos/home/fuzzel/fuzzel.ini";

      hyprlockconfig =
        "sudo nvim /etc/nixos/home/hyprlock/hyprlock.conf";

      hypridleconfig =
        "sudo nvim /etc/nixos/home/hypridle/hypridle.conf";


      # Home package groups
      browsers =
        "sudo nvim /etc/nixos/home/programs/browsers.nix";

      devpkgs =
        "sudo nvim /etc/nixos/home/programs/development.nix";

      media =
        "sudo nvim /etc/nixos/home/programs/media.nix";

      gaming =
        "sudo nvim /etc/nixos/home/programs/gaming.nix";

      comms =
        "sudo nvim /etc/nixos/home/programs/communication.nix";

      utilities =
        "sudo nvim /etc/nixos/home/programs/utilities.nix";


      # Gaming system modules
      steamconfig =
        "sudo nvim /etc/nixos/modules/gaming/steam.nix";

      gamemodeconfig =
        "sudo nvim /etc/nixos/modules/gaming/gamemode.nix";

      gamescopeconfig =
        "sudo nvim /etc/nixos/modules/gaming/gamescope.nix";

      wineconfig =
        "sudo nvim /etc/nixos/modules/gaming/wine.nix";


      # Git
      gs =
        "cd /etc/nixos && git status";

      ga =
        "cd /etc/nixos && sudo git add -A";

      gl =
        "cd /etc/nixos && git log --oneline --graph --decorate -10";
    };
  };
}

