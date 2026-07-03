{ ... }:

{
  services.swaync = {
    enable = true;

    settings = {
      positionX = "right";
      positionY = "top";

      control-center-margin-top = 10;
      control-center-margin-bottom = 10;
      control-center-margin-right = 10;
      control-center-margin-left = 10;

      notification-icon-size = 48;
      notification-body-image-height = 100;
      notification-body-image-width = 200;

      timeout = 6;
      timeout-low = 3;
      timeout-critical = 0;

      fit-to-screen = true;
      keyboard-shortcuts = true;
      image-visibility = "when-available";
      transition-time = 200;

      widgets = [
        "title"
        "dnd"
        "notifications"
      ];
    };

    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font";
        font-size: 14px;
      }

      .control-center {
        background: #272E33;
        border: 2px solid #ffffff;
        border-radius: 12px;
      }

      .notification-row {
        outline: none;
      }

      .notification {
        background: #272E33;
        color: #ffffff;
        border: 1px solid #7FBBB3;
        border-radius: 10px;
        margin: 6px;
        padding: 8px;
      }

      .notification-content {
        background: transparent;
      }

      .summary {
        color: #ffffff;
        font-weight: bold;
      }

      .body {
        color: #d3c6aa;
      }
    '';
  };
}
