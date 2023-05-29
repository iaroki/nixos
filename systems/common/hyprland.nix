{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    pciutils usbutils dunst networkmanagerapplet
    rofi-wayland waybar tofi grim slurp wl-clipboard waylock swaylock-effects
    hyprpaper hyprpicker keyd psmisc foot
  ];

  programs.hyprland.enable = true;
  security.pam.services.swaylock = {};
  security.pam.services.waylock = {};

}
