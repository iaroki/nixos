{ pkgs, ... }:

{
  home.packages = with pkgs; [
    zoom-us
    obs-studio
    google-cloud-sdk
    rclone
    dbeaver-bin
    slack
    google-chrome
    zed-editor-fhs
    ghostty
  ];
}
