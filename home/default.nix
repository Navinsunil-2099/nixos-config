{ ... }:

{
  imports = [
    ./packages.nix
    ./shell.nix
    ./git.nix
    ./kitty.nix
    ./session.nix

    # Enable these later when their files are ready:
     ./niri
     ./waybar
     ./fuzzel
     ./noctalia
     ./hyprlock
     ./hypridle
     ./programs
  ];
}
