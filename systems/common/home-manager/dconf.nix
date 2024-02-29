# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/blueman/general" = {
      plugin-list = [ "StatusNotifierItem" "!ConnectionNotifier" ];
      window-properties = [ 706 528 0 0 ];
    };

    "org/blueman/network" = {
      nap-enable = false;
    };

    "org/blueman/plugins/powermanager" = {
      auto-power-on = false;
    };

    "org/freedesktop/tracker/miner/files" = {
      index-recursive-directories = [];
      index-single-directories = [];
    };

    "org/gnome/Console" = {
      font-scale = 1.5000000000000004;
      last-window-size = mkTuple [ 972 672 ];
    };

    "org/gnome/GWeather4" = {
      temperature-unit = "centigrade";
    };

    "org/gnome/desktop/datetime" = {
      automatic-timezone = true;
    };

    "org/gnome/desktop/input-sources" = {
      per-window = true;
      show-all-sources = true;
      sources = [ (mkTuple [ "xkb" "us" ]) (mkTuple [ "xkb" "ru" ]) (mkTuple [ "xkb" "ua+winkeys" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" "grp:caps_toggle" ];
    };

    "org/gnome/desktop/interface" = {
      clock-show-weekday = true;
      color-scheme = "prefer-dark";
      cursor-size = 14;
      enable-animations = false;
      enable-hot-corners = false;
      font-antialiasing = "grayscale";
      font-hinting = "slight";
      gtk-theme = "Adwaita-dark";
      icon-theme = "Adwaita";
      locate-pointer = false;
      monospace-font-name = "FiraCode Nerd Font 10";
      show-battery-percentage = true;
    };

    "org/gnome/desktop/notifications" = {
      show-banners = false;
      show-in-lock-screen = false;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/privacy" = {
      old-files-age = mkUint32 30;
      recent-files-max-age = -1;
      remember-recent-files = false;
    };

    "org/gnome/desktop/search-providers" = {
      disabled = [ "org.gnome.Nautilus.desktop" "org.gnome.Calculator.desktop" "org.gnome.Calendar.desktop" "org.gnome.clocks.desktop" "org.gnome.seahorse.Application.desktop" ];
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 0;
    };

    "org/gnome/desktop/sound" = {
      event-sounds = false;
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Alt>q" ];
      move-to-workspace-1 = [ "<Shift><Alt>1" ];
      move-to-workspace-2 = [ "<Shift><Alt>2" ];
      move-to-workspace-3 = [ "<Shift><Alt>3" ];
      move-to-workspace-4 = [ "<Shift><Alt>4" ];
      move-to-workspace-5 = [ "<Shift><Alt>5" ];
      move-to-workspace-6 = [ "<Shift><Alt>6" ];
      move-to-workspace-7 = [ "<Shift><Alt>7" ];
      move-to-workspace-8 = [ "<Shift><Alt>8" ];
      move-to-workspace-9 = [ "<Shift><Alt>9" ];
      switch-applications = [];
      switch-applications-backward = [];
      switch-to-workspace-1 = [ "<Alt>1" ];
      switch-to-workspace-2 = [ "<Alt>2" ];
      switch-to-workspace-3 = [ "<Alt>3" ];
      switch-to-workspace-4 = [ "<Alt>4" ];
      switch-to-workspace-5 = [ "<Alt>5" ];
      switch-to-workspace-6 = [ "<Alt>6" ];
      switch-to-workspace-7 = [ "<Alt>7" ];
      switch-to-workspace-8 = [ "<Alt>8" ];
      switch-to-workspace-9 = [ "<Alt>9" ];
      switch-windows = [ "<Alt>Tab" ];
      switch-windows-backward = [ "<Shift><Alt>Tab" ];
      toggle-maximized = [ "<Alt>m" ];
    };

    "org/gnome/desktop/wm/preferences" = {
      mouse-button-modifier = "<Alt>";
      num-workspaces = 9;
      resize-with-right-button = true;
      workspace-names = [ "1" "2" "3" "4" "5" "6" "7" "8" "9" ];
    };

    "org/gnome/mutter" = {
      attach-modal-dialogs = true;
      center-new-windows = true;
      dynamic-workspaces = false;
      edge-tiling = true;
      focus-change-on-pointer-rest = true;
      workspaces-only-on-primary = false;
    };

    "org/gnome/nautilus/list-view" = {
      use-tree-view = true;
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "list-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
      show-delete-permanently = true;
    };

    "org/gnome/pomodoro/plugins/sounds" = {
      pomodoro-end-sound = "bell.ogg";
      pomodoro-end-sound-volume = 1.0;
    };

    "org/gnome/pomodoro/preferences" = {
      enabled-plugins = [ "dark-theme" "sounds" ];
      pause-when-idle = false;
      show-screen-notifications = true;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Shift><Alt>Return";
      command = "foot";
      name = "terminal";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      idle-dim = false;
      sleep-inactive-ac-type = "nothing";
      sleep-inactive-battery-timeout = 1800;
    };

    "org/gnome/shell" = {
      disable-user-extensions = false;
      disabled-extensions = [];
      enabled-extensions = [
        "appindicatorsupport@rgcjonas.gmail.com"
        "clipboard-indicator@tudmotu.com"
        "disable-workspace-switcher@jbradaric.me"
        "no-overview@fthx"
        "pomodoro@arun.codito.in"
        "blur-my-shell@aunetx"
      ];
    };

    "org/gnome/shell/extensions/blur-my-shell" = {
      brightness = 0.16;
      hacks-level = 3;
      sigma = 20;
    };

    "org/gnome/shell/extensions/blur-my-shell/applications" = {
      enable-all = false;
      opacity = 230;
      whitelist = [ "foot" ];
    };

    "org/gnome/shell/extensions/blur-my-shell/dash-to-dock" = {
      blur = false;
      override-background = true;
      style-dash-to-dock = 2;
    };

    "org/gnome/shell/extensions/blur-my-shell/lockscreen" = {
      blur = false;
    };

    "org/gnome/shell/extensions/blur-my-shell/overview" = {
      style-components = 2;
    };

    "org/gnome/shell/extensions/blur-my-shell/panel" = {
      blur = true;
      brightness = 0.25;
      customize = false;
      override-background-dynamically = false;
      sigma = 20;
    };

    "org/gnome/shell/app-switcher" = {
      current-workspace-only = true;
    };

    "org/gnome/shell/extensions/appindicator" = {
      icon-contrast = 0.7;
      icon-saturation = 0.9999999999999999;
      tray-pos = "right";
    };

    "org/gnome/shell/keybindings" = {
      show-screenshot-ui = [ "<Alt><Super>p" ];
      toggle-application-view = [ "<Alt>r" ];
    };

    "org/gnome/system/location" = {
      enabled = true;
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

  };
}
