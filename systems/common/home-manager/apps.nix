{ pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    lazygit
    lazydocker
    neovim
    mpv
    exa
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
    obsidian
  ];

  programs.fzf = {
    enable = true;
  };
}
