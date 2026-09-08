{ config, lib, pkgs, ... }:

{
  users.users.alexcroix = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    packages = with pkgs; [
      tree
      helix
    ];
  };
}
