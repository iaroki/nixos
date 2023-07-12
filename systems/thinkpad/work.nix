{ pkgs, ... }:

{
  home.packages = with pkgs; [
    zoom-us
    ripcord
  ];
}
