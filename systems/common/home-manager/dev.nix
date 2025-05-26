{ pkgs, ... }:

{
  home.packages = with pkgs; [
    packer
    terraform
    terraform-docs
    terraform-ls
    tflint
    terragrunt
    shellcheck
    # ansible  # broken as of 31.12.2024
    ansible-lint
    ansible-language-server
    yamllint
    sshpass
    awscli2
    k9s
    kubectl
    kubectx
    kubernetes-helm
    python312
    python312Packages.pip
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
