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
    ../common/home-manager/session.nix
    ../common/home-manager/tmux.nix
    ../common/home-manager/zathura.nix
    ../common/home-manager/zsh.nix
    ../common/home-manager/dconf.nix
    ./work.nix
  ];

  home.shellAliases = {
    b = "bat --style=header,grid --paging=never --theme=gruvbox-dark";
    home-switch = "home-manager switch --flake '.#thinkpad'";
    nixos-switch = "sudo nixos-rebuild switch --flake '.#thinkpad'";
  };

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.permittedInsecurePackages = [
    "electron-25.9.0"  # obsidian-1.5.3 workaround
  ];

  home.stateVersion = "22.05";
}
