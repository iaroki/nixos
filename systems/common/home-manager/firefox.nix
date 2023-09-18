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
    profiles.work = {
      id = 4;
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
        :root {
          --thin-tab-width: 30px;
          --wide-tab-width: 300px;
          --inactive-tab-hide-delay: 180s;
          /* This value should be updated here and in the tree-style-tabs-theme.css */
          --tst-sidepanel-hide-delay: 0.2s;
        }

        /* where active tab is pinned, delays hiding of 'last-active' inactive tab for 1hr */
        .tabbrowser-tab[pinned][selected] ~ .tabbrowser-tab[fadein]:not([pinned]) {
          transition-duration: 0s !important;
          transition-property: width, visibility, min-width, -moz-box-flex !important;
          transition-delay: 3600s !important; /* = 1hr, adjust seconds to increase / decrease visibility */
        }

        /* hides all non-active tabs */
        .tabbrowser-tab[fadein]:not([pinned]):not([selected]):not([customizing]):not([tabdrop-samewindow][style*="translate"]) {
          visibility: hidden;
          overflow: hidden;
          min-width: 0 !important;
          -moz-box-flex: 0 !important;
          flex-grow: unset !important; /* required since v113 */
          padding: 0 !important;
        }

        /* waits 60 seconds before hiding inactive tabs */
        .tabbrowser-tab[fadein]:not([pinned]):not([customizing]):not([tabdrop-samewindow][style*="translate"]) {
          min-width: 0 !important;
          transition-property: min-width, max-width, width, visibility !important;
          transition-duration: 0.4s !important; /* slide shut */
          transition-delay: var(--inactive-tab-hide-delay) !important; /* wait X seconds before hiding inactive tabs | 0 = immediate */
        }

        /* shows active tabs immediately */
        .tabbrowser-tab[fadein][selected]:not([pinned]):not([customizing]):not([tabdrop-samewindow][style*="translate"]) {
          min-width: var(--tab-min-width) !important;
          width: var(--tab-min-width) !important;
          transition-duration: 0s !important; /* = immediate */
          transition-delay: 0s !important; /* = immediate */
        }
        /* Sidebar sliding auto-reveal */

        /* Sidebar min and max width removal */
        #sidebar {
          max-width: none !important;
          min-width: 0px !important;
        }

        /* Hide splitter */
        #sidebar-box[sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"] + #sidebar-splitter {
          display: none !important;
        }
        /* Hide sidebar header */
        #sidebar-box[sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"] #sidebar-header {
          visibility: collapse;
        }

        /* Shrink sidebar until hovered */
        #sidebar-box:not([sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"]) {
          min-width: var(--wide-tab-width) !important;
          max-width: none !important;
        }
        #sidebar-box[sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"] {
          overflow: hidden !important;
          position: relative !important;
          transition: all 0.2s var(--tst-sidepanel-hide-delay) !important;
          min-width: var(--thin-tab-width) !important;
          max-width: var(--thin-tab-width) !important;
          z-index: 2;
        }
        #sidebar-box[sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"]:hover,
        #sidebar-box[sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"] #sidebar {
          transition-delay: 0s !important;
          min-width: var(--wide-tab-width) !important;
          max-width: var(--wide-tab-width) !important;
          z-index: 1;
        }
        #sidebar-box[sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"]:hover {
          margin-right: calc((var(--wide-tab-width) - var(--thin-tab-width)) * -1) !important;
        }
      '';
    };
  };
}
