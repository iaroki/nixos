{ config, pkgs, ... }:

{

  nixpkgs.overlays = [
    (self: super: {
      dwm = super.dwm.overrideAttrs (oldAttrs: rec {
        src = super.fetchFromGitHub {
          owner = "iaroki";
          repo = "dwm";
          rev = "817c0f120ef73be2ed3dc6172c4e2bfffa8e8a15";
          sha256 = "oKl8v5CfN9XhtSGQ8k0GkDnRAdKuSiMXZ0KWggcDV7M=";
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
    polybar sxhkd bspwm alacritty
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

  hardware.logitech.wireless.enable = true;
  hardware.logitech.wireless.enableGraphical = true;

  hardware.trackpoint.enable = true;
  hardware.trackpoint.emulateWheel = true;
  services.xserver.libinput.enable = true;
  services.xserver.libinput.touchpad.tapping = false;
  services.xserver.libinput.touchpad.naturalScrolling = false;
  services.xserver.libinput.touchpad.horizontalScrolling = false;
  services.xserver.libinput.touchpad.disableWhileTyping = true;
  services.xserver.libinput.mouse.scrollButton = 9;
  services.xserver.libinput.mouse.scrollMethod = "button";
  services.xserver.exportConfiguration = true;

  services.fprintd.enable = true;
  security.pam.services.login.fprintAuth = true;

  sound.enable = true;
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.package = pkgs.pulseaudioFull;

  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  services.xserver.enable = true;
  services.xserver.layout = "us,ru";
  services.xserver.xkbVariant = "winkeys";
  services.xserver.xkbOptions = "grp:caps_toggle";

  services.xserver.windowManager.bspwm.enable = true;
  services.xserver.windowManager.bspwm.configFile = "/home/msytnyk/.config/bspwm/bspwmrc";
	services.xserver.windowManager.bspwm.sxhkd.configFile= "/home/msytnyk/.config/sxhkd/sxhkdrc";
  services.xserver.windowManager.dwm.enable = true;
  services.xserver.displayManager.defaultSession = "none+dwm";

  #services.xserver.dpi = 220;

}
