{ pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    lazygit
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
    obsidian
    cbonsai
    newsboat
  ];

  programs.fzf = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
    defaultOptions = [
      "--reverse"
      "--border"
    ];
    # Disable for light mode
    # colors = {
    #   fg = "#cdd6f4";
    #   "fg+" = "#f5e0dc";
    #   hl = "#cba6f7";
    #   "hl+" = "#cba6f7";
    #   spinner = "#f5e0dc";
    #   header = "#cba6f7";
    #   info = "#cba6f7";
    #   pointer = "#f5e0dc";
    #   marker = "#f5e0dc";
    #   prompt = "#cba6f7";
    #   border = "#cdd6f4";
    # };
  };
}
