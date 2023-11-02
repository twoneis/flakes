{
  description = "Nix flake for basic configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = inputs@{nixpkgs, ...}:
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
    nixosConfigurations.nixdesktop = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit system; };

      modules = [ 
        ./desktop-config.nix 
      ];
    };
    nixConfigurations.nixsurface = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit system; };

      modules = [
        ./surface-config.nix
      ];
    };
  };
}
