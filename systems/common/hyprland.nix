{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    rofi-wayland waybar
  ];

  programs.hyprland.enable = true;

}
