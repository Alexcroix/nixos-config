{ config, ... }:

let
  p = config.theme.palette;
in
{
  home.file.".config/hypr/hyprland.conf".source = ../config/hypr/hyprland.conf;
  home.file.".config/hypr/hyprpaper.conf".source = ../config/hypr/hyprpaper.conf;

  home.file.".config/hypr/theme/catppuccin-mocha.conf".text = ''
    $rosewater = rgb(${p.rosewater})
    $flamingo  = rgb(${p.flamingo})
    $pink      = rgb(${p.pink})
    $mauve     = rgb(${p.mauve})
    $red       = rgb(${p.red})
    $maroon    = rgb(${p.maroon})
    $peach     = rgb(${p.peach})
    $yellow    = rgb(${p.yellow})
    $green     = rgb(${p.green})
    $teal      = rgb(${p.teal})
    $sky       = rgb(${p.sky})
    $sapphire  = rgb(${p.sapphire})
    $blue      = rgb(${p.blue})
    $lavender  = rgb(${p.lavender})
    $text      = rgb(${p.text})
    $subtext1  = rgb(${p.subtext1})
    $subtext0  = rgb(${p.subtext0})
    $overlay2  = rgb(${p.overlay2})
    $overlay1  = rgb(${p.overlay1})
    $overlay0  = rgb(${p.overlay0})
    $surface2  = rgb(${p.surface2})
    $surface1  = rgb(${p.surface1})
    $surface0  = rgb(${p.surface0})
    $base      = rgb(${p.base})
    $mantle    = rgb(${p.mantle})
    $crust     = rgb(${p.crust})
  '';
}
