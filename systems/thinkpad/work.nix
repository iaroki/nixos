{ pkgs, ... }:

{
  home.packages = with pkgs; [
    zoom-us
    ripcord
    google-cloud-sdk
    rclone
    cloudflared
    cloudflare-warp
    dbeaver-bin
    slack
  ];
}
