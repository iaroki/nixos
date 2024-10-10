{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    vim wget tmux git htop tree unzip home-manager
    raycast yabai skhd sketchybar jankyborders
  ];

  fonts.packages = [
    pkgs.source-serif
    pkgs.source-sans
    pkgs.vollkorn
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];

users.users."m.sytnyk" = {
  name = "m.sytnyk";
  home = "/Users/m.sytnyk";
};

networking.computerName = "nixbook";
networking.hostName = "nixbook";
programs.direnv.enable = true;

services.jankyborders.enable = false;
services.sketchybar.enable = false;
services.skhd.enable = true;
# services.skhd.skhdConfig = "";
services.yabai.enable = true;
services.yabai.enableScriptingAddition = true;

  programs.zsh.enable = true;

  nixpkgs.config.allowUnfree = true;
  nixpkgs.hostPlatform = "aarch64-darwin";

  services.nix-daemon.enable = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = 5;
}
