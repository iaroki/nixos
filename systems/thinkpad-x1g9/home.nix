{ config, pkgs, inputs, ... }:

{

  home.username = "msytnyk";
  home.homeDirectory = "/home/msytnyk";

  programs.home-manager.enable = true;

  imports = [
    ../common/home-manager/apps.nix
    ../common/home-manager/dev.nix
    ../common/home-manager/firefox.nix
    ../common/home-manager/git.nix
    ../common/home-manager/gpg.nix
    ../common/home-manager/nnn.nix
    ../common/home-manager/note-sync.nix
    ../common/home-manager/rofi.nix
    ../common/home-manager/services.nix
    ../common/home-manager/session.nix
    ../common/home-manager/tmux.nix
    ../common/home-manager/xkeysnail.nix
    ../common/home-manager/zathura.nix
    ../common/home-manager/zsh.nix
  ];

  home.shellAliases = {
    n = "nnn -edaPp";
    home-switch = "home-manager switch --flake '.#thinkpad-x1g9'";
    nixos-switch = "sudo nixos-rebuild switch --flake '.#thinkpad-x1g9'";
  };

  nixpkgs.config.allowUnfree = true;

  home.stateVersion = "22.05";
}
