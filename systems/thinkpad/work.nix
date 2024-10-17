{ pkgs, ... }: let

  zed-fhs = pkgs.buildFHSUserEnv {
    name = "zed";
    targetPkgs = pkgs:
      with pkgs; [
        zed-editor
      ];
    runScript = "zed";
  };

in

{
  home.packages = with pkgs; [
    zoom-us
    obs-studio
    google-cloud-sdk
    rclone
    dbeaver-bin
    slack
    google-chrome
    zed-fhs
  ];
}
