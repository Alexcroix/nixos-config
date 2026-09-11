{ config, pkgs, lib, ... }:

{
  imports = [
    ./home/theme.nix
    ./home/git.nix
    ./home/starship.nix
    ./home/hyprland.nix
    ./home/foot.nix
    ./home/waybar.nix
    ./home/hyprlock.nix
    ./home/hypridle.nix
    ./home/wofi.nix
    ./home/swayosd.nix
    ./home/wlogout.nix
  ];

  programs.bash.enable = true;

  home.username = "alexcroix";
  home.homeDirectory = "/home/alexcroix";
  home.stateVersion = "25.05";
}
