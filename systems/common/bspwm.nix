{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    xorg.xhost xclip rofi libnotify
    pulseaudio pavucontrol dunst acpi
    polybar sxhkd bspwm alacritty
  ];

  environment.sessionVariables = {
    GTK_THEME = "Adwaita:dark";
  };

  fonts.fonts = [
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];

  programs.slock.enable = true;
  programs.nm-applet.enable = true;

  services.xserver.enable = true;
  services.xserver.layout = "us,ru";
  services.xserver.xkbVariant = "winkeys";
  services.xserver.xkbOptions = "grp:caps_toggle";

  services.xserver.windowManager.bspwm.enable = true;
  services.xserver.windowManager.bspwm.configFile = "/home/msytnyk/.config/bspwm/bspwmrc";
  services.xserver.windowManager.bspwm.sxhkd.configFile= "/home/msytnyk/.config/sxhkd/sxhkdrc";
  services.xserver.displayManager.defaultSession = "none+bspwm";

}
