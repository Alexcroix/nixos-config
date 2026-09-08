{ config, ... }:

let
  p = config.theme.palette;
in
{
  home.file.".config/foot/foot.ini".text = ''
    font=JetBrainsMono Nerd Font:size=16
    pad=4x4

    [colors-dark]
    foreground=${p.text}
    background=${p.base}

    regular0=${p.surface1}
    regular1=${p.red}
    regular2=${p.green}
    regular3=${p.yellow}
    regular4=${p.blue}
    regular5=${p.pink}
    regular6=${p.teal}
    regular7=${p.subtext1}

    bright0=${p.surface2}
    bright1=${p.red}
    bright2=${p.green}
    bright3=${p.yellow}
    bright4=${p.blue}
    bright5=${p.pink}
    bright6=${p.teal}
    bright7=${p.subtext0}

    alpha=0.9
  '';
}
