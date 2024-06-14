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
    newsboat
    distrobox
    wezterm
  ];

  programs.fzf = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
    defaultOptions = [
      "--reverse"
      "--border"
    ];
    colors = {
      fg = "#cdd6f4";
      "fg+" = "#f5e0dc";
      hl = "#cba6f7";
      "hl+" = "#cba6f7";
      spinner = "#f5e0dc";
      header = "#cba6f7";
      info = "#cba6f7";
      pointer = "#f5e0dc";
      marker = "#f5e0dc";
      prompt = "#cba6f7";
      border = "#cdd6f4";
    };
  };
}
