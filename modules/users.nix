{ config, lib, pkgs, ... }:

{
  users.users.alexcroix = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "video" "docker"];
    packages = with pkgs; [
      tree
      helix
      gcc
    ];
  };
}
