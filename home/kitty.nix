{ ... }:

{
  programs.kitty = {
    enable = true;

    settings = {
      # Font
      font_family = "Terminus (TTF)";
      font_size = 12.5;
      background_opacity = "1.0";
      confirm_os_window_close = 0;
      cursor_shape = "block";

      background = "#111418";
      foreground = "#E8EDF3";

      cursor = "#7AA2F7";
      cursor_text_color = "#111418";

      selection_background = "#2A3441";
      selection_foreground = "#FFFFFF";

      color0  = "#1B1F24";
      color1  = "#F7768E";
      color2  = "#9ECE6A";
      color3  = "#E0AF68";
      color4  = "#7AA2F7";
      color5  = "#BB9AF7";
      color6  = "#7DCFFF";
      color7  = "#C0CAF5";

      color8  = "#565F89";
      color9  = "#FF899D";
      color10 = "#B9F27C";
      color11 = "#F7C66D";
      color12 = "#8DB8FF";
      color13 = "#D2B3FF";
      color14 = "#8DEEFF";
      color15 = "#FFFFFF";
    };
  };
}
