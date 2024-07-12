{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pciutils usbutils dunst networkmanagerapplet
    grim slurp wl-clipboard swaylock-effects swaybg
    psmisc pass-wayland wlr-randr kanshi brightnessctl lswt
    alacritty foot wezterm pasystray
  ];

  # River setup
  programs.river.enable = true;
  programs.river.xwayland.enable = true;
  programs.river.extraPackages = with pkgs; [
    river-filtile tofi waybar
  ];
  xdg.portal.enable = true;
  xdg.portal.wlr.enable = true;
  xdg.portal.extraPortals = [
    pkgs.xdg-desktop-portal-wlr
    pkgs.xdg-desktop-portal-gtk
    pkgs.xdg-desktop-portal-hyprland
  ];

  programs.dconf.enable = true;
  security.pam.services.swaylock = {};

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "dbus-run-session ${pkgs.greetd.tuigreet}/bin/tuigreet --time --asterisks --cmd river";
        user = "msytnyk";
      };
    };
  };
}
