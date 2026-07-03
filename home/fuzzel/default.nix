{ ... }:

{
  programs.fuzzel.enable = true;

  xdg.configFile."fuzzel/fuzzel.ini".source =
    ./fuzzel.ini;

  xdg.configFile."fuzzel/themes/noctalia".source =
    ./themes/noctalia;
}
