{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    lfs.enable = true;
    userName = "Maxim Sytnyk";
    userEmail = "iaroki@proton.me";
    signing = {
      key = "5C29C98968FD67AF";  # yubikey Sign key
      signByDefault = true;
    };
    aliases = {
      prettylog = "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(r) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative";
      root = "rev-parse --show-toplevel";
    };
    extraConfig = {
      color.ui = true;
      core.askPass = "";
      credential.helper = "store";
      github.user = "iaroki";
      push.default = "upstream";
      push.autoSetupRemote = true;
      init.defaultBranch = "main";
    };
  };
}
