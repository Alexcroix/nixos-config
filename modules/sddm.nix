{ config, lib, pkgs, ... }:

{
  environment.systemPackages = [
    (pkgs.catppuccin-sddm.override {
      flavor = "mocha";
      font = "JetBrainsMono Nerd Font";
      fontSize = "10";
      loginBackground = true;
    })
  ];
  
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    theme = "catppuccin-mocha-mauve";
    package = pkgs.kdePackages.sddm;
  };

  services.displayManager.defaultSession = "hyprland-uwsm";
}
