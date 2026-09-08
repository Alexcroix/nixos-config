{ config, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Alexandre Lacroix";
        email = "alexlacroix03@gmail.com";
      };
      init.defaultBranch = "main";
      pull.rebase = false;
    };
  };
}
