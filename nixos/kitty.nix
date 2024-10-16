{ pkgs, ... }:

{
  programs.kitty.enable = true;
  programs.kitty.extraConfig = "include ~/.config/HyprV/kitty/mocha.conf";

  programs.kitty.settings = {
    font_family = "jetbrains mono nerd font";
    font_size = 10;
    bold_font = "auto";
    italic_font = "auto";
    bold_italic_font = "auto";
    mouse_hide_wait = "2.0";
    cursor_shape = "block";
    url_color = "#0087bd";
    url_style = "dotted";
    confirm_os_window_close = 0;
    background_opacity = "0.7";
  };
}

