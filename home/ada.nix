{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gnat
    gnatPackages.gprbuild
    gnatPackages.gnatprove
  ];
}
