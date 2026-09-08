{ config, lib, pkgs, ... }:

{
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  services.openssh.enable = true;
}
