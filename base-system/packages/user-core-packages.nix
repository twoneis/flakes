pkgs: with pkgs; [
  # Scrolling window manager extension
  gnomeExtensions.paperwm
  # For character search
  gnome.gnome-characters
  # Helix editor and LSPs for helix
  helix
  nil
  marksman
  # Render markdown files
  glow
  pandoc
  texlive.combined.scheme-full
  # Regular apps
  discord.override {
    withOpenASAR = true;
    withVencord = true;
  }
  thunderbird
  signal-desktop
  spotify
  calibre
  krita
]
