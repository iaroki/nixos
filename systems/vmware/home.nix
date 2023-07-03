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
    ../common/home-manager/note-sync.nix
    ../common/home-manager/services.nix
    ../common/home-manager/session.nix
    ../common/home-manager/tmux.nix
    ../common/home-manager/zathura.nix
    ../common/home-manager/zsh.nix
  ];

  home.shellAliases = {
    home-switch = "home-manager switch --flake '.#vmware'";
    nixos-switch = "sudo nixos-rebuild switch --flake '.#vmware'";
  };

  home.stateVersion = "22.05";
}
