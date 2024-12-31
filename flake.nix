{
  description = "nixstation";
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    note-sync.url = "github:iaroki/note-sync";
    zen-browser.url = "github:omarcresp/zen-browser-flake";
  };

  outputs = { self, nixpkgs, home-manager, nix-darwin, note-sync, ... }@attrs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      darwinConfigurations."nixbook" = nix-darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        specialArgs.inputs = attrs;
        modules = [
          ./systems/macbook/configuration.nix
          home-manager.darwinModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs.inputs = attrs;
            home-manager.users."m.sytnyk" = import ./systems/macbook/home.nix;
          }
        ];
      };
      nixosConfigurations.macmini = nixpkgs.lib.nixosSystem {
        system = "${system}";
        specialArgs.inputs = attrs;
        modules = [ ./systems/macmini ];
      };
      nixosConfigurations.thinkpad = nixpkgs.lib.nixosSystem {
        system = "${system}";
        specialArgs.inputs = attrs;
        modules = [ ./systems/thinkpad ];
      };
      nixosConfigurations.vmware = nixpkgs.lib.nixosSystem {
        system = "${system}";
        specialArgs.inputs = attrs;
        modules = [ ./systems/vmware ];
      };
      homeConfigurations.macmini = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
        extraSpecialArgs.inputs = attrs;
        modules = [
          ./systems/macmini/home.nix
        ];
      };
      homeConfigurations.thinkpad = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
        extraSpecialArgs.inputs = attrs;
        modules = [
          ./systems/thinkpad/home.nix
        ];
      };
      homeConfigurations.vmware = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
        extraSpecialArgs.inputs = attrs;
        modules = [
          ./systems/vmware/home.nix
        ];
      };
    };
}
