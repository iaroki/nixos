{ config, pkgs, inputs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      "${builtins.fetchGit { url = "https://github.com/kekrby/nixos-hardware.git"; }}/apple/t2"
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  system.stateVersion = "22.05";
}
