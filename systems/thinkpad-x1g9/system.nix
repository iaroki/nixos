{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    vim wget tmux git htop tree unzip home-manager
  ];

  networking.hostName = "nixpad";
  networking.networkmanager.enable = true;

  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };

  time.timeZone = "Europe/Kiev";

  environment.homeBinInPath = true;
  programs.vim.defaultEditor = true;
  programs.zsh.enable = true;

  users.users.msytnyk = {
    isNormalUser = true;
    description = "msytnyk";
    shell = pkgs.zsh;
    extraGroups = [ "networkmanager" "docker" "wheel" ];
  };

  security.sudo.wheelNeedsPassword = false;

  virtualisation.docker.enable = true;
#  virtualisation.virtualbox.host.enable = true;

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

#  services.xserver.videoDrivers = [ "displaylink" "modesetting" ];

  sound.enable = true;
  hardware.pulseaudio.enable = true;

  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
