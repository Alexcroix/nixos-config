{ config, pkgs, nix-ada, ... }:

{
  programs.helix = {
    enable = true;
    defaultEditor = true;

    # Serveurs de langage et formateurs, disponibles uniquement pour helix
    extraPackages = with pkgs; [
      clang-tools   # clangd (C/C++) + clang-format
      nil           # LSP Nix
      nixfmt        # formateur Nix
      nix-ada.packages.${pkgs.stdenv.hostPlatform.system}.ada-language-server
    ];

    settings = {
      theme = "catppuccin_mocha";

      editor = {
        line-number = "relative";
        cursorline = true;
        bufferline = "multiple";
        color-modes = true;
        true-color = true;

        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };

        indent-guides.render = true;
        lsp.display-messages = true;
      };

      keys.normal = {
        space.w = ":w";
        space.q = ":q";
      };
    };

    languages = {
      language = [
        {
          name = "nix";
          auto-format = true;
          formatter.command = "nixfmt";
        }
      ];
    };
  };
}
