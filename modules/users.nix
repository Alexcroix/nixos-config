{ config, lib, pkgs, ... }:

{
  users.users.alexcroix = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "video"];
    packages = with pkgs; [
      tree
      helix
    ];
  };
}
