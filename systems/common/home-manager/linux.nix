{ pkgs, ... }:

{
  home.packages = with pkgs; [
   remmina
   vagrant
   transmission_4-gtk
   moonlight-qt
   distrobox
  ];
}
