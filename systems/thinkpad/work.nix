{ pkgs, ... }:

{
  home.packages = with pkgs; [
    zoom-us
    obs-studio
    google-cloud-sdk
    rclone
    cloudflared
    cloudflare-warp
    dbeaver-bin
    slack
    google-chrome
  ];
}
