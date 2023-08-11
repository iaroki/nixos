{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    vim wget tmux git htop tree unzip home-manager
    pavucontrol acpi libnotify
  ];

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

  fonts.packages = [
    pkgs.source-serif
    pkgs.source-sans
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];

  networking.hostName = "nixpad";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Kiev";

  environment.homeBinInPath = true;
  programs.vim.defaultEditor = true;
  programs.zsh.enable = true;

  users.users.msytnyk = {
    isNormalUser = true;
    description = "msytnyk";
    shell = pkgs.zsh;
    extraGroups = [ "input" "video" "networkmanager" "docker" "wheel" "vboxusers" ];
  };

  security.sudo.wheelNeedsPassword = false;

  virtualisation.docker.enable = true;
  virtualisation.virtualbox.host.enable = true;

  services.acpid.enable = true;
  hardware.acpilight.enable = true;

  hardware.logitech.wireless.enable = true;
  hardware.logitech.wireless.enableGraphical = true;

  hardware.trackpoint.enable = true;
  hardware.trackpoint.emulateWheel = true;

  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  # security = {
  #   pam = {
  #     services = {
  #       login.fprintAuth = true;
  #       swaylock-effects.fprintAuth = true;
  #       sudo.fprintAuth = true;
  #       system-local-login.fprintAuth = true;
  #       su.fprintAuth = true;
  #     };
  #   };
  # };

  services.power-profiles-daemon.enable = false;
  services = {
    tlp = {
      enable = true;
      settings = {
        TLP_ENABLE = 1;
        START_CHARGE_THRESH_BAT0 = 70;
        STOP_CHARGE_THRESH_BAT0 = 80;
      };
    };
  };
  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
