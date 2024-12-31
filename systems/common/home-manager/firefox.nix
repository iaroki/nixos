{ config, pkgs, ... }:

{
  programs.firefox = {
    enable = true;
    profiles.firenix = {
      id = 0;
      isDefault = true;
      settings = {
          "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
          "privacy.webrtc.hideGlobalIndicator" = true;
          "privacy.webrtc.legacyGlobalIndicator" = false;
      };
      userChrome = ''
        /* hides the native tabs */
        #TabsToolbar {
          visibility: collapse;
        }

        #titlebar {
          visibility: collapse;
        }

        #sidebar-header {
          visibility: collapse !important;
        }
      '';
    };
    profiles.ozone = {
      id = 1;
      isDefault = false;
      settings = {
          "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
          "privacy.webrtc.hideGlobalIndicator" = true;
          "privacy.webrtc.legacyGlobalIndicator" = false;
      };
      userChrome = ''
        /* hides the native tabs */
        #TabsToolbar {
          visibility: collapse;
        }

        #titlebar {
          visibility: collapse;
        }

        #sidebar-header {
          visibility: collapse !important;
        }
      '';
    };
    profiles.flex = {
      id = 2;
      isDefault = false;
      settings = {
          "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
          "privacy.webrtc.hideGlobalIndicator" = true;
          "privacy.webrtc.legacyGlobalIndicator" = false;
      };
      userChrome = ''
        /* hides the native tabs */
        #TabsToolbar {
          visibility: collapse;
        }

        #titlebar {
          visibility: collapse;
        }

        #sidebar-header {
          visibility: collapse !important;
        }
      '';
    };
    profiles.svitla = {
      id = 3;
      isDefault = false;
      settings = {
          "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
          "privacy.webrtc.hideGlobalIndicator" = true;
          "privacy.webrtc.legacyGlobalIndicator" = false;
      };
      userChrome = ''
        /* hides the native tabs */
        #TabsToolbar {
          visibility: collapse;
        }

        #titlebar {
          visibility: collapse;
        }

        #sidebar-header {
          visibility: collapse !important;
        }
      '';
    };
    profiles.work = {
      id = 4;
      isDefault = false;
      settings = {
          "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
          "privacy.webrtc.hideGlobalIndicator" = true;
          "privacy.webrtc.legacyGlobalIndicator" = false;
      };
      userChrome = ''
        /* hides the native tabs */
        #TabsToolbar {
          visibility: collapse;
        }

        #titlebar {
          visibility: collapse;
        }

        #sidebar-header {
          visibility: collapse !important;
        }
      '';
    };
  };
}
