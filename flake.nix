{
  description = "Hyprland on Nixos";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-ada.url = "github:andrewathalye/nix-ada";
  };

  outputs = { self, nixpkgs, home-manager, nix-ada, ... }: {
    nixosConfigurations.nixos-conf = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.alexcroix = import ./home.nix;
            backupFileExtension = "backup";
            extraSpecialArgs = { inherit nix-ada; };
          };
        }
      ];
    };
  };
}
