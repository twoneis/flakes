{ config, pkgs, ... }:

{
  # Set username and home directory
  home.username = "twoneis";
  home.homeDirectory = "/home/twoneis";

  programs = {
    home-manager = {
      enable = true;
    };

    git = {
      enable = true;
      userName = "twoneis";
      userEmail = "sanjay29@sapura.de";
    };

    helix = {
      enable = true;
      defaultEditor = true;
      settings = import ./dotfiles/helix/config.nix;
      themes = import ./dotfiles/helix/rosepine.nix;
    };
  };

  home.stateVersion = "18.09";
}
