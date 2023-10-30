{
  description = "A template flake for development with gcc";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
      };
    in {
      devShell.x86_64-linux = pkgs.mkShell rec {
        name = "gcc-devel";
        packages = with pkgs; [
          cmake
          libgcc
          gdb
          gef
        ];
        shellHook = ''export PS1="[${whoami}@gcc-project]"'';
      };
    };
}
