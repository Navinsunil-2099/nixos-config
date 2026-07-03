{ ... }:

{
  programs.kitty = {
    enable = true;

    settings = {
      background_opacity = "1.0";
      confirm_os_window_close = 0;
      enable_audio_bell = false;
      font_size = 13;
    };

    themeFile = "Dracula";
  };
}
