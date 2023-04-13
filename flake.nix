{
  description = "nixstation";
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nur.url = "github:nix-community/NUR";
    note-sync.url = "github:iaroki/note-sync";
  };

  outputs = { self, nixpkgs, home-manager, nur, note-sync, ... }@attrs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      hostname = "nixstation";
    in
    {
      nixosConfigurations.${hostname} = nixpkgs.lib.nixosSystem {
        system = "${system}";
        specialArgs.inputs = attrs;
        modules = [ ./configuration.nix ];
      };
      nixosConfigurations.macmini = nixpkgs.lib.nixosSystem {
        system = "${system}";
        specialArgs.inputs = attrs;
        modules = [ ./systems/macmini ];
      };
      nixosConfigurations.thinkpad-e15g2 = nixpkgs.lib.nixosSystem {
        system = "${system}";
        specialArgs.inputs = attrs;
        modules = [ ./systems/thinkpad-e15g2 ];
      };
      homeConfigurations.${hostname} = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs.inputs = attrs;
        modules = [
          nur.nixosModules.nur
          ./home.nix
        ];
      };
      homeConfigurations.macmini = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs.inputs = attrs;
        modules = [
          nur.nixosModules.nur
          ./systems/macmini/home.nix
        ];
      };
    };
}
