{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    pciutils usbutils dunst networkmanagerapplet
    waybar tofi grim slurp wl-clipboard swaylock-effects
    hyprpaper hyprpicker keyd psmisc foot
  ];

  programs.hyprland.enable = true;
  security.pam.services.swaylock = {};

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "dbus-run-session ${pkgs.cage}/bin/cage -s ${pkgs.greetd.gtkgreet}/bin/gtkgreet";
        user = "msytnyk";
      };
    };
  };

  environment.etc = {
    "greetd/environments".text = ''
      dbus-run-session Hyprland
    '';
  };

}
