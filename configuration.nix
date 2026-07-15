{ inputs, ... }:

{
  imports = [
    inputs.dms.nixosModules.default
    ./hardware-configuration.nix
    ./modules
  ];

  system.stateVersion = "25.11";
}
