{ config, pkgs, ... }:

{
  programs.firefox = {
    enable = true;
    profiles.firenix = {
      id = 0;
      isDefault = true;
    extensions = with config.nur.repos.rycee.firefox-addons; [
      ublock-origin
      darkreader
      h264ify
      tree-style-tab
      vimium
      auto-tab-discard
    ];
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
    extensions = with config.nur.repos.rycee.firefox-addons; [
      ublock-origin
      darkreader
      multi-account-containers
      tree-style-tab
      vimium
      auto-tab-discard
    ];
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
    extensions = with config.nur.repos.rycee.firefox-addons; [
      ublock-origin
      darkreader
      tree-style-tab
      vimium
      auto-tab-discard
    ];
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
    extensions = with config.nur.repos.rycee.firefox-addons; [
      ublock-origin
      darkreader
      tree-style-tab
      vimium
    ];
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
