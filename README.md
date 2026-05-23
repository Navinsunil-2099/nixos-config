# NixOS Configuration

My personal NixOS configuration.

## Features

- NixOS system configuration
- Niri window manager
- Git-managed setup
- Reproducible system configuration

## Structure

- `configuration.nix` → Main system config
- `hardware-configuration.nix` → Hardware config
- `niri.nix` → Niri configuration
- `packages.nix` → Installed packages

## Rebuild

```bash
sudo nixos-rebuild switch
