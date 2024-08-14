{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pciutils usbutils psmisc keyd foot pass-wayland dconf2nix
    dconf-editor nautilus gnome-tweaks gnome-pomodoro
    gnomeExtensions.appindicator gnomeExtensions.clipboard-indicator
    gnomeExtensions.blur-my-shell gnomeExtensions.just-perfection
    gnomeExtensions.tactile alacritty xorg.xprop onagre
  ];

  environment.gnome.excludePackages = (with pkgs; [
    gnome-photos gnome-tour gedit cheese gnome-terminal epiphany
    geary evince totem yelp
  ]) ++ (with pkgs.gnome; [
    gnome-music gnome-characters
    tali iagno hitori atomix
    gnome-contacts gnome-initial-setup
  ]);

  programs.dconf.enable = true;
  services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];

  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.displayManager.defaultSession = "gnome";
}
