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
    initContent = ''
      bindkey jk vi-cmd-mode
      zstyle ':completion::complete:make:*:targets' call-command true
      # emacs vterm
      vterm_printf() {
          if [ -n "$TMUX" ] \
              && { [ "''${TERM%%-*}" = "tmux" ] \
                  || [ "''${TERM%%-*}" = "screen" ]; }; then
              # Tell tmux to pass the escape sequences through
              printf "\ePtmux;\e\e]%s\007\e\\" "$1"
          elif [ "''${TERM%%-*}" = "screen" ]; then
              # GNU screen (screen, screen-256color, screen-256color-bce)
              printf "\eP\e]%s\007\e\\" "$1"
          else
              printf "\e]%s\e\\" "$1"
          fi
      }
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
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };
}
