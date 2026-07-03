{ pkgs, inputs, ... }:

{
  home.packages = [
    pkgs.brave
    inputs.helium.packages.${pkgs.system}.default
  ];
}
