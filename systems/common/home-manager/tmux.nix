{ pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    secureSocket = false;
    baseIndex = 1;
    clock24 = true;
    extraConfig = ''
      set -g default-terminal "tmux-256color"
      set -ag terminal-overrides ",xterm-256color:RGB"
      set -g base-index 1
      setw -g pane-base-index 1
      set-option -g renumber-windows on
      set -g status-position top
      set -g status-justify centre
      set -g status-style "bg=#000000"
      set -g window-style ""
      set -g window-active-style ""
      set -g status-left " #[fg=orange]#S"
      set -g status-left-style "bold"
      set -g status-left-length 50
      set -g status-right "#[fg=#b8bb26]#H "
      set -g status-right-style "bold"
      set -g status-right-length 25
      set -g window-status-current-style "bold"
      set -g window-status-style ""
      set -g window-status-format " #[fg=#cdd6f4][#I]#W#F "
      set -g window-status-current-format " #[fg=#cba6f7]#W#F "
      set -g window-status-separator ""
      set -g pane-active-border-style "fg=#DCD7BA"
      set -g pane-border-style "fg=#DCD7BA"
      bind C-h select-pane -L
      bind C-j select-pane -D
      bind C-k select-pane -U
      bind C-l select-pane -R
      setw -g mode-keys vi
      bind -T copy-mode-vi v send -X begin-selection
      bind-key -T copy-mode-vi y send -X copy-pipe-and-cancel "xclip -sel clip -i"
      bind P paste-buffer
      bind-key -r f display-popup -E "f"
      bind-key -r g display-popup -b rounded -E "lazygit"
      bind-key -r S display-popup -b rounded -E "tmux-session"
    '';
  };
}
