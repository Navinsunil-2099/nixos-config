{ ... }:

{
  imports = [
    ./home
  ];

  home.username = "navin";
  home.homeDirectory = "/home/navin";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
