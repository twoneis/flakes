{ config, pkgs, ... }:

{
  # Set username and home directory
  home.username = "twoneis";
  home.homeDirectory = "/home/twoneis";

  # Enable home manager (with self config)
  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    userName = "twoneis";
    userEmail = "sanjay29@sapura.de";
  };

  home.stateVersion = "18.09";
}
