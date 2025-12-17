{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    lfs.enable = true;
    signing = {
      key = "5C29C98968FD67AF";  # yubikey Sign key
      signByDefault = true;
    };
    settings = {
      user = {
        name = "Maxim Sytnyk";
        email = "iaroki@proton.me";
      };
      color.ui = true;
      core.askPass = "";
      credential.helper = "store";
      github.user = "iaroki";
      push.default = "upstream";
      push.autoSetupRemote = true;
      init.defaultBranch = "main";
      alias = {
        prettylog = "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(r) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative";
        root = "rev-parse --show-toplevel";
      };
    };
  };
}
