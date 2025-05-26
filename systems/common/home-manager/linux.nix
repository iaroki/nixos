{ pkgs, ... }:

{
  home.packages = with pkgs; [
   remmina
   # vagrant # broken 17-10-2024
   transmission_4-gtk
   distrobox
  ];
}
