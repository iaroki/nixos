{ pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    lazygit
    lazydocker
    neovim
    scrot
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
  ];

  programs.fzf = {
    enable = true;
  };
}
