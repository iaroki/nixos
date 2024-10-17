{ pkgs, ... }:

{
  home.packages = with pkgs; [
#    remmina
#    vagrant
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
    k9s
    kubectl
    kubectx
    kubernetes-helm
    python311
    python311Packages.pip
    nodejs
    nodePackages.npm
    nodePackages.bash-language-server
    nodePackages.dockerfile-language-server-nodejs
    nodePackages.vscode-langservers-extracted
    nodePackages.yaml-language-server
    pyright
    sumneko-lua-language-server
    cmake-language-server
    cmake
    sops
  ];
}
