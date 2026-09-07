{config, pkgs, ... }:

{
  home.username = "alexcroix";
  home.homeDirectory = "/home/alexcroix";
  home.stateVersion = "25.05";

  programs.bash = {
    enable = true;
    profileExtra = ''
      if uwsm check may-start; then
        exec uwsm start hyprland-uwsm.desktop
      fi
    '';
  };

  programs.git = {
    enable = true;
    userName = "Alexandre Lacroix";
    userEmail = "alexlacroix03@gmail.com";
  }; 

  home.file.".config/hypr".source = ./config/hypr;
  home.file.".config/foot".source = ./config/foot;
}
