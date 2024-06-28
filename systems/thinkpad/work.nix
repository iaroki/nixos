{ pkgs, ... }:

{
  home.packages = with pkgs; [
    zoom-us
    obs-studio
    ripcord
    google-cloud-sdk
    rclone
    cloudflared
    cloudflare-warp
    dbeaver-bin
    slack
  ];
}
