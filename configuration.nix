{ config, pkgs, inputs, ... }:

{
  imports =
    [
      /etc/nixos/hardware-configuration.nix
      ./system/system.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";

  system.stateVersion = "22.05";
}
