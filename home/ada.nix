{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gnat
    gprbuild
    gnatprove
  ];
}
