{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    xorg.xhost xclip rofi libnotify
    pulseaudio pavucontrol acpi
    alacritty
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

  services.xserver.windowManager.awesome.enable = true;
  services.xserver.displayManager.defaultSession = "none+awesome";

}
