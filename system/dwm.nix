{ config, pkgs, ... }:

{

  nixpkgs.overlays = [
    (self: super: {
      dwm = super.dwm.overrideAttrs (oldAttrs: rec {
        src = super.fetchFromGitHub {
          owner = "iaroki";
          repo = "dwm";
          rev = "95080de31380b04e64dd6a00f7d09b8605fe6f02";
          sha256 = "og+izjlksCXWX5sdtAyVT+vQJJtBq12vSYQPYr55W3A=";
        };
      });

      st = super.st.overrideAttrs (oldAttrs: rec {
        src = super.fetchFromGitHub {
          owner = "iaroki";
          repo = "st";
          rev = "5372bcee1d786b5a4175078dd17b2ac1e05cb9d9";
          sha256 = "oL5ShdogkvTet/X1CtpGRAdUxdK0YkF2KuATA3r7Vd0=";
        };
        buildInputs = oldAttrs.buildInputs ++  [ super.harfbuzz ];
      });

      slstatus = super.slstatus.overrideAttrs (oldAttrs: rec {
        src = super.fetchFromGitHub {
          owner = "iaroki";
          repo = "slstatus";
          rev = "a88c75f5f3cc95110c9e7705aebdc244883b98b7";
          sha256 = "QacX6RITnIWCtBdsQPwysGyxmEfpNa9GsMiiwNBVJkM=";
        };
      });
    })
  ];

  environment.systemPackages = with pkgs; [
    xorg.xhost dmenu st dwm slstatus xclip rofi libnotify
    pulseaudio pavucontrol dunst acpi
  ];

  environment.sessionVariables = {
    GTK_THEME = "Adwaita:dark";
  };

  fonts.fonts = [
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];

  programs.slock.enable = true;
  programs.nm-applet.enable = true;

  services.acpid.enable = true;
  hardware.acpilight.enable = true;

  sound.enable = true;
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.package = pkgs.pulseaudioFull;

  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  services.xserver.enable = true;
  services.xserver.layout = "us,ru";
  services.xserver.xkbVariant = "winkeys";
  services.xserver.xkbOptions = "grp:caps_toggle";

  services.xserver.windowManager.dwm.enable = true;
  services.xserver.displayManager.defaultSession = "none+dwm";

  #services.xserver.dpi = 220;

}
