{ pkgs, ... }:

{
  home.packages = with pkgs; [
    zoom-us
    google-cloud-sdk
    rclone
    dbeaver-bin
    ollama
  ];
}
