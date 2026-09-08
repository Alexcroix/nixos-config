{ config, ... }:

let
  p = config.theme.palette;
in
{
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      format = "$directory$git_branch$git_status$character";

      character = {
        success_symbol = "[➜](bold mauve)";
        error_symbol = "[➜](bold red)";
      };

      directory = {
        style = "bold blue";
        truncation_length = 3;
      };

      git_branch = {
        symbol = " ";
        style = "bold mauve";
      };

      palette = "catppuccin_mocha";
      palettes.catppuccin_mocha = {
        mauve = "#${p.mauve}";
        red   = "#${p.red}";
        blue  = "#${p.blue}";
        green = "#${p.green}";
      };
    };
  };
}
