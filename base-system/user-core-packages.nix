pkgs: with pkgs; [
  gnomeExtensions.paperwm
  thunderbird
  helix
  (discord-ptb.override {
    withOpenASAR = true;
    withVencord = true;
  })
  signal-desktop
  spotify
]
