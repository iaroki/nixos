{ config, pkgs, inputs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      "${builtins.fetchGit {
        url = "https://github.com/kekrby/nixos-hardware.git";
        rev = "e964f9f56c01992263c0b8040f989996aa870741";
      }}/apple/t2"
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  system.stateVersion = "22.05";
}
