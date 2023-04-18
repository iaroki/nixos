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
    go
    gopls
    gcc
    gnumake
    flameshot
    feh
    picom
    vifm
    ueberzug    # terminal image preview
    uair        # pomodoro timer
    obsidian
  ];

  programs.fzf = {
    enable = true;
  };
}
