
# ❄️ Navin's NixOS Configuration

A modular, reproducible NixOS configuration built around **Niri**, **Home Manager**, and **Nix Flakes**.

This repository contains my complete declarative Linux setup, including system configuration, desktop environment, gaming support, development tools, shell configuration, Waybar, Fuzzel, Hyprlock, Hypridle, and application packages.

## 🖥️ Setup

* **OS:** NixOS Unstable
* **Window Manager / Compositor:** Niri
* **Desktop Environment:** GNOME
* **Display Manager:** GDM
* **Shell:** Fish
* **Terminal:** Kitty
* **Status Bar:** Waybar
* **Application Launcher:** Fuzzel
* **Lock Screen:** Hyprlock
* **Idle Management:** Hypridle
* **Shell UI:** Noctalia
* **Package Management:** Nix + Home Manager
* **Configuration:** Nix Flakes

## 📁 Repository Structure

```text
/etc/nixos
├── flake.nix
├── flake.lock
├── configuration.nix
├── hardware-configuration.nix
├── home.nix
│
├── modules
│   ├── default.nix
│   │
│   ├── system
│   │   ├── default.nix
│   │   ├── boot.nix
│   │   ├── networking.nix
│   │   ├── locale.nix
│   │   ├── users.nix
│   │   ├── hardware.nix
│   │   ├── power.nix
│   │   ├── services.nix
│   │   └── packages.nix
│   │
│   ├── desktop
│   │   ├── default.nix
│   │   ├── niri.nix
│   │   ├── gnome.nix
│   │   ├── portals.nix
│   │   └── display-manager.nix
│   │
│   └── gaming
│       ├── default.nix
│       ├── steam.nix
│       ├── gamemode.nix
│       ├── gamescope.nix
│       └── wine.nix
│
├── home
│   ├── default.nix
│   ├── packages.nix
│   ├── shell.nix
│   ├── git.nix
│   ├── kitty.nix
│   ├── session.nix
│   │
│   ├── niri
│   │   ├── default.nix
│   │   └── config.kdl
│   │
│   ├── waybar
│   │   ├── default.nix
│   │   ├── config.jsonc
│   │   └── style.css
│   │
│   ├── fuzzel
│   │   ├── default.nix
│   │   └── fuzzel.ini
│   │
│   ├── hyprlock
│   │   ├── default.nix
│   │   ├── hyprlock.conf
│   │   └── assets
│   │
│   ├── hypridle
│   │   ├── default.nix
│   │   └── hypridle.conf
│   │
│   ├── noctalia
│   │   └── default.nix
│   │
│   └── programs
│       ├── default.nix
│       ├── browsers.nix
│       ├── development.nix
│       ├── media.nix
│       ├── gaming.nix
│       ├── communication.nix
│       └── utilities.nix
│
└── wallpapers
```

## 🧩 Modular Architecture

The configuration is split into two main layers.

### System Modules

System-level NixOS configuration lives under:

```text
modules/
```

The system configuration is divided into focused branches:

* `system/` — boot, networking, users, hardware, power, services, packages
* `desktop/` — Niri, GNOME, portals, display manager
* `gaming/` — Steam, GameMode, Gamescope, Wine

### Home Manager

User-level configuration lives under:

```text
home/
```

Home Manager manages:

* Fish and Bash shell configuration
* Git
* Kitty
* Niri
* Waybar
* Fuzzel
* Hyprlock
* Hypridle
* Noctalia
* application groups
* user packages
* session variables

## 🎮 Gaming

The gaming stack includes:

* Steam
* GameMode
* Gamescope
* MangoHud
* Heroic Games Launcher

Steam includes a custom launch workaround for Chromium Embedded Framework GPU compositing issues under the current Niri setup.

## 💻 Development Environment

The configuration includes tools for:

* Flutter
* Dart
* Android development
* Firebase
* Java
* Python
* C/C++
* Node.js
* Bun
* PostgreSQL
* Git
* Neovim
* VS Code
* Android Studio

## 🌐 Browsers

The setup includes multiple browsers, including:

* Helium
* Brave
* Zen Browser
* Firefox

## 🔄 Rebuilding

Test the configuration without making it the persistent boot configuration:

```bash
sudo nixos-rebuild test --flake /etc/nixos#nixos
```

Build without activating:

```bash
sudo nixos-rebuild build --flake /etc/nixos#nixos
```

Apply permanently:

```bash
sudo nixos-rebuild switch --flake /etc/nixos#nixos
```

Update flake inputs and rebuild:

```bash
cd /etc/nixos
nix flake update
sudo nixos-rebuild switch --flake /etc/nixos#nixos
```

## ⌨️ Shell Aliases

The setup includes aliases for quickly opening and managing different parts of the modular configuration.

Examples include:

```bash
rebuild
testbuild
nixconfig
syspkgs
devpkgs
niriconfig
waybarconfig
waybarstyle
steamconfig
flakeconfig
```

These aliases are declared through Home Manager.

## 🔒 Reproducibility

This configuration uses:

* Nix Flakes
* a committed `flake.lock`
* modular NixOS modules
* Home Manager
* declarative application packages
* declarative desktop configuration
* repository-managed configuration files and assets

The modular configuration was verified against the previous monolithic configuration by comparing:

* resolved NixOS system outputs
* recursive filesystem differences
* NAR hashes
* Nix store closures
* exact closure membership

The verified modular and monolithic configurations resolved to the same NixOS system output.

## ⚠️ Hardware Note

`hardware-configuration.nix` is hardware-specific.

Do not blindly copy it to another machine. Generate a hardware configuration appropriate for the target system.

## 📌 Status

This is my personal NixOS configuration and evolves with my system.

The repository tracks my current modular setup for Niri, Home Manager, development, desktop customization, and gaming.

---

Built and maintained by **Navin Sunil**.
