{ ... }:

{
  # Set username and home directory
  home.username = "twoneis";
  home.homeDirectory = "/home/twoneis";

  systemd.user.sessionVariables = {
    EDITOR = "hx";
    SUDO_EDITOR = "hx";
    VISUAL = "hx";
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

    zsh = {
      enable = true;
      enableAutosuggestions = true;
      enableCompletion = true;
      enableVteIntegration = true;
      dotDir = ".config/zsh";
      history.ignoreDups = true;
    };
  };


  home.stateVersion = "18.09";
}
