{ pkgs, ... }:

{
  users.users.navin = {
    isNormalUser = true;
    description = "navin";

    extraGroups = [
      "networkmanager"
      "wheel"
    ];

    shell = pkgs.fish;
  };

  programs.fish.enable = true;
}
