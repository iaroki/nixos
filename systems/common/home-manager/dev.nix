{ pkgs, ... }:

{
  home.packages = with pkgs; [
    remmina
    vagrant
    packer
    terraform
    terraform-docs
    terraform-ls
    tflint
    terragrunt
    shellcheck
    ansible
    ansible-lint
    ansible-language-server
    sshpass
    awscli2
    kubectl
    kubectx
    kubernetes-helm
    python311
    python311Packages.pip
    nodejs
    nodePackages.npm
    nodePackages.pyright
    nodePackages.bash-language-server
    nodePackages.dockerfile-language-server-nodejs
    nodePackages.vscode-langservers-extracted
    nodePackages.yaml-language-server
    sumneko-lua-language-server
    cmake-language-server
    cmake
    sops
  ];
}
