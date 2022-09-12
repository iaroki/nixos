
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    slack
    nodePackages.aws-azure-login
  ];
}
