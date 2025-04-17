{ pkgs, ... }:

{
  programs.emacs = {
    enable = true;
    package = pkgs.emacs-pgtk;
    extraPackages = epkgs: [ epkgs.vterm ];
  };

  services.emacs = {
    enable = false;         # Emacs daemon
    client.enable = false;  # Emacs client desktop entry
  };
}
