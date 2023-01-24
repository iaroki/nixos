{ pkgs, ... }:

{
  home.packages = with pkgs; [
    xkeysnail flameshot
  ];

  home.file.xkeysnail_config = {
      executable = false;
      target = ".config/xkeysnail/config.py";
      text = ''
        import re
        from xkeysnail.transform import *

        define_keymap(re.compile("st-256color"), {
            K("M-v"): K("C-Shift-v"),
            K("M-c"): K("C-Shift-c"),
            K("M-d"): K("Shift-page_down"),
            K("M-u"): K("Shift-page_up")
        }, "st terminal")

        define_keymap(re.compile("Alacritty"), {
            K("M-v"): K("C-Shift-v"),
            K("M-c"): K("C-Shift-c"),
            K("M-d"): K("Shift-page_down"),
            K("M-u"): K("Shift-page_up")
        }, "alacritty")

        define_keymap(None, {
            K("M-a"): K("C-a"),
            K("M-c"): K("C-c"),
            K("M-v"): K("C-v")
        }, "Global Copy/Paste")

        define_keymap(None, {
            K("M-d"): K("page_down"),
            K("M-u"): K("page_up"),
            K("M-h"): K("left"),
            K("M-j"): K("down"),
            K("M-k"): K("up"),
            K("M-l"): K("right")
        }, "60% Keyboard navigation")
      '';
    };

  home.file.dwm_autostart = {
      executable = true;
      target = ".config/dwm/autostart.sh";
      text = ''
        slstatus &
        xsetroot -solid "black" &
        sudo xkeysnail --watch ~/.config/xkeysnail/config.py &
        #xrandr -s 2880x1674
      '';
    };
}
