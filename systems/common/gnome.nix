{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pciutils usbutils psmisc
    tofi keyd foot pass-wayland
    gnome.gnome-tweaks gnomeExtensions.appindicator
    gnome.pomodoro gnomeExtensions.disable-workspace-switcher
    gnomeExtensions.workspace-indicator-2 gnomeExtensions.caffeine
    gnomeExtensions.date-menu-formatter gnomeExtensions.hide-activities-button
    gnomeExtensions.no-overview gnomeExtensions.clipboard-indicator
    gnomeExtensions.remove-app-menu libgtop alacritty xorg.xprop
  ];

  environment.gnome.excludePackages = (with pkgs; [
    gnome-photos gnome-tour
  ]) ++ (with pkgs.gnome; [
    cheese gnome-music gnome-terminal gedit
    epiphany geary evince gnome-characters
    totem tali iagno hitori atomix yelp
    gnome-contacts gnome-initial-setup
  ]);

  programs.dconf.enable = true;
  services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];

  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.displayManager.defaultSession = "gnome";
}
