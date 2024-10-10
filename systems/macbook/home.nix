{ config, pkgs, inputs, ... }:

{

  home.username = "m.sytnyk";
  home.homeDirectory = "/Users/m.sytnyk";

  programs.home-manager.enable = true;

  imports = [
    ../common/home-manager/apps.nix
    ../common/home-manager/dev.nix
    ../common/home-manager/git.nix
    ../common/home-manager/tmux.nix
    ../common/home-manager/zsh.nix
    ./work.nix
  ];

  home.shellAliases = {
    b = "bat --style=header,grid --paging=never --theme=catppuccin";
    nix-switch = "darwin-rebuild switch --flake '.#nixbook'";
  };

  home.sessionVariables = {
    PATH = "/Users/$USER/bin:$PATH";
    LANG = "en_US.UTF-8";
    LC_CTYPE = "en_US.UTF-8";
    LC_ALL = "en_US.UTF-8";
    EDITOR = "nvim";
    PAGER = "less -FirSwX";
    MANPAGER = "less -FirSwX";
    PASSWORD_STORE_GPG_OPTS = "--armor";
  };

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.permittedInsecurePackages = [
    # "electron-25.9.0"  # obsidian-1.5.3 workaround
  ];

  home.stateVersion = "22.05";
}
