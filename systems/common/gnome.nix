{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pciutils usbutils psmisc keyd foot pass-wayland dconf2nix
    dconf-editor nautilus gnome-tweaks gnome-pomodoro
    gnomeExtensions.appindicator gnomeExtensions.clipboard-indicator
    gnomeExtensions.blur-my-shell gnomeExtensions.just-perfection
    gnomeExtensions.tactile alacritty xorg.xprop onagre
    gnome.gvfs mtpfs android-file-transfer
  ];

  environment.gnome.excludePackages = (with pkgs; [
    gnome-photos gnome-tour gedit cheese gnome-terminal epiphany
    geary evince totem yelp gnome-music gnome-characters
    tali iagno hitori atomix gnome-contacts gnome-initial-setup
  ]);

  # USB mount workaround for GNOME 48
  services.devmon.enable = true;
  services.gvfs.enable = true;
  services.udisks2.enable = true;

  programs.dconf.enable = true;
  services.udev.packages = with pkgs; [ gnome-settings-daemon ];

  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.displayManager.defaultSession = "gnome";
}
