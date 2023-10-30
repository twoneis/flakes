{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-21.05"
  }

  outputs = { self, nixpkgs }: {
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
      };
    in  {
      devShell = pkgs.mkShell rec (
        name = "gcc-devel";
        packages = with pkgs; [
          libgcc
          gdb
          gef
        ];
      )
    };
  };
}
