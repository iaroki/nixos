{ pkgs, ... }:

{
  home.packages = with pkgs; [
    zoom-us
    mysql-workbench
    beekeeper-studio
  ];
}
