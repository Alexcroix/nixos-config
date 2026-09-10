{ config, ... }:

let
  p = config.theme.palette;
in
{
  programs.wofi = {
    enable = true;

    settings = {
      width = 600;
      height = 400;
      location = "center";
      show = "drun";
      prompt = "Rechercher...";

      allow_markup = true;
      allow_images = true;
      image_size = 32;

      insensitive = true;
      term = "foot";

      hide_scroll = true;
      dynamic_lines = true;
    };

    style = ''
      window {
        margin: 0px;
        border: 2px solid #${p.mauve};
        border-radius: 12px;
        background-color: #${p.base};
        font-family: "JetBrainsMono Nerd Font";
        font-size: 14px;
      }

      #input {
        margin: 10px;
        padding: 8px 12px;
        border: none;
        border-radius: 8px;
        background-color: #${p.surface0};
        color: #${p.text};
      }

      #input:focus {
        outline: none;
        box-shadow: none;
        border: 1px solid #${p.mauve};
      }

      #inner-box {
        margin: 0px 10px 10px 10px;
        background-color: transparent;
      }

      #outer-box {
        margin: 0px;
        background-color: transparent;
      }

      #scroll {
        margin: 0px;
      }

      #text {
        color: #${p.text};
        padding: 4px;
      }

      #entry {
        padding: 6px;
        border-radius: 8px;
      }

      #entry:selected {
        background-color: #${p.surface0};
      }

      #entry:selected #text {
        color: #${p.mauve};
      }

      #img {
        margin-right: 8px;
      }
    '';
  };
}
