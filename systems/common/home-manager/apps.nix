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
    transmission_4-gtk
    cbonsai
    moonlight-qt
  ];

  programs.fzf = {
    enable = true;
  };
}
