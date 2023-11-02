pkgs: with pkgs; [
  gnomeExtensions.paperwm
  thunderbird
  helix
  (discord.override {
    withOpenASAR = true;
    withVencord = true;
  })
  signal-desktop
  spotify
]
