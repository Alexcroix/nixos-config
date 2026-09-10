{ config, ... }:

let
  p = config.theme.palette;

  icon = code: builtins.fromJSON ''"\u${code}"'';
in
{
  programs.waybar = {
    enable = true;

    settings.mainBar = {
      layer = "top";
      position = "top";
      height = 34;
      spacing = 4;

      modules-left = [ "hyprland/workspaces" "hyprland/window" ];
      modules-center = [ "clock" ];
      modules-right = [ "pulseaudio" "network" "cpu" "memory" "battery" "tray" ];

      "hyprland/workspaces" = {
        format = "{icon}";
        on-click = "activate";
        format-icons = {
          active = icon "f111";
          default = icon "f111";
        };
      };

      "hyprland/window" = {
        max-length = 40;
        separate-outputs = true;
      };

      clock = {
        format = "{:%H:%M}";
        format-alt = "{:%A, %d %B %Y}";
        tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
      };

      cpu = {
        format = "${icon "f2db"} {usage}%";
        interval = 5;
      };

      memory = {
        format = "${icon "f538"} {percentage}%";
        interval = 5;
      };

      battery = {
        format = "{icon} {capacity}%";
        format-charging = "⚡ {capacity}%";
        format-icons = [
          (icon "f244")
          (icon "f243")
          (icon "f242")
          (icon "f241")
          (icon "f240")
        ];
        states = {
          warning = 20;
          critical = 10;
        };
      };
      
      network = {
        format-wifi = "${icon "f1eb"} {essid}";
        format-ethernet = "${icon "f6ff"}  {ifname}";
        format-disconnected = "${icon "f071"} déconnecté";
        tooltip-format = "{ifname}: {ipaddr}/{cidr}";
      };
      
      pulseaudio = {
        format = "{icon} {volume}%";
        format-muted = "${icon "f6a9"} muet";
        format-icons = {
          default = [
            (icon "f026")
            (icon "f027")
            (icon "f028")
          ];
        };
        on-click = "pavucontrol";
      };
            
      tray = {
        icon-size = 16;
        spacing = 8;
      };
    };

    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font", "Font Awesome 7 Free";
        font-size: 16px;
        border: none;
        border-radius: 0;
      }

      window#waybar {
        background-color: #${p.base};
        color: #${p.text};
      }

      #workspaces button {
        padding: 0 8px;
        color: #${p.subtext0};
        background: transparent;
      }

      #workspaces button.active {
        color: #${p.mauve};
      }

      #workspaces button:hover {
        background: #${p.surface0};
      }

      #window,
      #clock,
      #cpu,
      #memory,
      #battery,
      #network,
      #pulseaudio,
      #tray {
        padding: 0 10px;
        color: #${p.text};
      }

      #clock {
        color: #${p.mauve};
        font-weight: bold;
      }

      #battery.warning {
        color: #${p.yellow};
      }

      #battery.critical {
        color: #${p.red};
      }

      #network.disconnected {
        color: #${p.red};
      }

      #pulseaudio.muted {
        color: #${p.overlay0};
      }

      tooltip {
        background-color: #${p.mantle};
        color: #${p.text};
        border: 1px solid #${p.surface0};
      }
    '';
  };
}
