{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pciutils usbutils psmisc keyd foot pass-wayland dconf2nix
    gnome.dconf-editor gnome.nautilus gnome.gnome-tweaks gnome.pomodoro
    gnomeExtensions.appindicator gnomeExtensions.disable-workspace-switcher
    gnomeExtensions.no-overview gnomeExtensions.clipboard-indicator
    alacritty xorg.xprop
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
