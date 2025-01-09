{ pkgs, ... }:

{
  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.zsh = {
    enable = true;
    autocd = true;
    autosuggestion.enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    defaultKeymap = "viins";
    initExtra = ''
      bindkey jk vi-cmd-mode
      zstyle ':completion::complete:make:*:targets' call-command true
    '';
    localVariables = {
        VI_MODE_SET_CURSOR = true;
        STARSHIP_CONFIG = "$HOME/.config/starship/starship.toml";
      };
    shellAliases = {
      vim = "nvim";
      ll = "eza -l";
      ls = "eza";
      lg = "lazygit";
      ga = "git add";
      gc = "git commit";
      gco = "git checkout";
      gcp = "git cherry-pick";
      gdiff = "git diff";
      gl = "git prettylog";
      gp = "git push";
      gs = "git status";
      gt = "git tag";
      gwl = "git worktree list";
      gwa = "git worktree add";
      gwr = "git worktree remove";
    };
    oh-my-zsh = {
      enable = false;
      plugins = [ "aws" "kubectl" "kubectx" "vi-mode" ];
      theme = "robbyrussell";
    };
    starship = {
      enable = true;
      enableZshIntegration = true;
    };
  };
}
