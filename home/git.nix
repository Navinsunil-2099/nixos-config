{ ... }:

{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "Navinsunil";
        email = "navinsunil06@gmail.com";
      };

      init.defaultBranch = "main";
      pull.rebase = false;
    };
  };
}
