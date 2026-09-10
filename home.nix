{ config, pkgs, lib, ... }:

{
  imports = [
    ./home/theme.nix
    ./home/git.nix
    ./home/starship.nix
    ./home/hyprland.nix
    ./home/foot.nix
    ./home/waybar.nix
  ];

  programs.bash.enable = true;

  home.username = "alexcroix";
  home.homeDirectory = "/home/alexcroix";
  home.stateVersion = "25.05";
}
