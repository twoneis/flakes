pkgs: with pkgs; [
  alacritty
  git
  gh
  man-pages
  man-pages-posix
  firefox
  gnome.nautilus
  vlc
  image-roll
] ++ [
  (import ./niri/default.nix)
]
