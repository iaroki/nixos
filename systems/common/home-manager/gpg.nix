{ pkgs, ... }:

{
  programs.gpg = {
    enable = true;
    settings = {
      pinentry-mode = "loopback";
    };
    scdaemonSettings = {
      disable-ccid = true;
    };
  };

  services.gpg-agent = {
    enable = true;
    pinentry = {
      package = pkgs.pinentry-tty;
    };
    defaultCacheTtl = 31536000;
    defaultCacheTtlSsh = 31536000;
    maxCacheTtl = 31536000;
    maxCacheTtlSsh = 31536000;
    enableSshSupport = true;
    extraConfig = ''
      allow-loopback-pinentry
    '';
  };
}
