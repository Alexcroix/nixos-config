{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/networking.nix
    ./modules/nvidia.nix
    ./modules/sddm.nix
    ./modules/fonts.nix
    ./modules/hyprland.nix
    ./modules/users.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  time.timeZone = "Europe/Paris";
  zramSwap.enable = true;

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  environment.systemPackages = with pkgs; [
    vim
    wget
    foot
    kitty
    pcmanfm
    hyprshot
    wofi
    pavucontrol
    wlogout
  ];

  programs.firefox.enable = true;

  system.stateVersion = "25.05";
}
