{ config, ... }:

let
  p = config.theme.palette;
in
{
  programs.hyprlock = {
    enable = true;

    settings = {
      general = {
        disable_loading_bar = false;
        grace = 2;
        hide_cursor = true;
        no_fade_in = false;
      };

      background = [
        {
          path = "~/walls/wall1.jpg";
          blur_passes = 2;
          blur_size = 7;
        }
      ];

      input-field = [
        {
          size = "300, 50";
          position = "0, -20";
          halign = "center";
          valign = "center";

          outline_thickness = 2;
          dots_size = 0.25;
          dots_spacing = 0.3;

          outer_color = "rgb(${p.mauve})";
          inner_color = "rgb(${p.surface0})";
          font_color = "rgb(${p.text})";

          fade_on_empty = false;
          placeholder_text = "Password...";

          fail_text = "Incorrect";
          fail_color = "rgb(${p.red})";
        }
      ];

      label = [
        {
          text = "cmd[update:1000] echo \"$(date +'%H:%M')\"";
          font_size = 90;
          font_family = "JetBrainsMono Nerd Font";
          color = "rgb(${p.text})";
          position = "0, 150";
          halign = "center";
          valign = "center";
        }
        {
          text = "cmd[update:60000] echo \"$(date +'%A %d %B')\"";
          font_size = 22;
          font_family = "JetBrainsMono Nerd Font";
          color = "rgb(${p.subtext1})";
          position = "0, 60";
          halign = "center";
          valign = "center";
        }
      ];
    };
  };
}
