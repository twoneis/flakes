{ pkgs, ... }:

{
  # Set username and home directory
  home = {
    username = "twoneis";
    homeDirectory = "/home/twoneis";

    file = {
      ".gef.rc" = {
        source = ./dotfiles/gdb/gef-for-c;
        # source = ./dotfiles/gdb/gef-for-asm
      };
      ".gdbinit" = {
        source = ./dotfiles/gdb/gdb-for-c;
        # source = ./dotfiles/gdb/gdb-for-asm;
      };
    };
  };

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

    alacritty = {
      enable = true;
      settings = import ./dotfiles/alacritty/alacritty.nix;
    };

    discocss = {
      enable = true;
      css = import ./dotfiles/discord/rosepine.css;
    };
  };

  home.stateVersion = "18.09";
}
