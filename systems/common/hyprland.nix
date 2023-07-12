{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    pciutils usbutils dunst networkmanagerapplet
    waybar tofi grim slurp wl-clipboard swaylock-effects
    hyprpaper hyprpicker keyd psmisc foot pass-wayland
    alacritty xorg.xprop
  ];

  programs.hyprland.enable = true;
  programs.hyprland.xwayland.enable = true;
  programs.hyprland.xwayland.hidpi = true;
  security.pam.services.swaylock = {};

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "dbus-run-session ${pkgs.greetd.tuigreet}/bin/tuigreet --time --asterisks --cmd Hyprland";
        user = "msytnyk";
      };
    };
  };
}
