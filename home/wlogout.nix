{ config, pkgs, lib, ... }:

let
  p = config.theme.palette;

  entries = [
    { label = "lock"; action = "hyprlock"; text = "Verrouiller"; keybind = "l"; }
    { label = "logout"; action = "hyprctl dispatch exit"; text = "Déconnexion"; keybind = "e"; }
    { label = "suspend"; action = "systemctl suspend"; text = "Veille"; keybind = "s"; }
    { label = "reboot"; action = "systemctl reboot"; text = "Redémarrer"; keybind = "r"; }
    { label = "shutdown"; action = "systemctl poweroff"; text = "Éteindre"; keybind = "p"; }
  ];
in
{
  home.packages = [ pkgs.wlogout ];

  home.file.".config/wlogout/layout".text =
    lib.concatMapStringsSep "\n" builtins.toJSON entries;

  home.file.".config/wlogout/style.css".text = ''
    * {
      font-family: "JetBrainsMono Nerd Font";
      font-size: 14px;
      background-image: none;
      box-shadow: none;
    }

    window {
      background-color: rgba(30, 30, 46, 0.85);
    }

  button {
    background-color: #${p.surface0};
    color: #${p.text};
    border-radius: 12px;
    border: 2px solid #${p.surface0};
    margin: 10px;
    padding: 2px;
    background-repeat: no-repeat;
    background-position: center;
    background-size: 20%;
    min-height: 0;
  }

  button:focus {
    border: 2px solid #${p.mauve};
  }

  button:hover,
  button:active {
    background-color: #${p.mauve};
    border: 2px solid #${p.mauve};
  }

  #lock {
    background-image: image(url("${pkgs.wlogout}/share/wlogout/icons/lock.png"));
  }
  #logout {
    background-image: image(url("${pkgs.wlogout}/share/wlogout/icons/logout.png"));
  }
  #suspend {
    background-image: image(url("${pkgs.wlogout}/share/wlogout/icons/suspend.png"));
  }
  #reboot {
    background-image: image(url("${pkgs.wlogout}/share/wlogout/icons/reboot.png"));
  }
  #shutdown {
    background-image: image(url("${pkgs.wlogout}/share/wlogout/icons/shutdown.png"));
  }
  '';
}
