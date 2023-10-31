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
        name = "markdown";
        packages = with pkgs; [
          marksman
        ];
        shellHook = ''export PS1="[\u@markdown:\W]\$ "'';
      };
    };
}
