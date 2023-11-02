{
  description = "Nix flake for basic configuration, for surface and desktop";


  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };


  outputs = {nixpkgs, home-manager, ...}:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;

      config = {
        allowUnfree = true;
      };
    };
  in
  {
    nixosConfigurations.nixdesktop = pkgs.lib.nixosSystem {
      specialArgs = { inherit system; };

      modules = [ 
        ./desktop-config.nix 
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.twoneis = import ./home.nix;
        }
      ];
    };
    nixConfigurations.nixsurface = pkgs.lib.nixosSystem {
      specialArgs = { inherit system; };

      modules = [
        ./surface-config.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.twoneis = import ./home.nix;
        }
      ];
    };
  };
}
