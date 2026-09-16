{ config, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Alexandre Lacroix";
        email = "alexandre.lacroix@epita.fr";
      };
      init.defaultBranch = "main";
      pull.rebase = false;
      core.editor = "hx";
    };
  };
}
