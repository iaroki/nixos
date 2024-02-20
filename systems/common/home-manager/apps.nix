{ pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    lazygit
    lazydocker
    neovim
    mpv
    eza
    bat
    glow
    ripgrep
    fd
    jq
    yq
    tree
    btop
    mosh
    just
    go
    gopls
    gcc
    gnumake
    vifm
    w3m
    obsidian
    transmission-gtk
    cbonsai
  ];

  programs.fzf = {
    enable = true;
  };
}
