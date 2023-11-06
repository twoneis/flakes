{ pkgs, rustPlatform, fetchFromGitHub, makeBinaryWrapper, pkg-config, libclang, libglvnd, libinput, libxkbcommon, mesa, seatd, udev, wayland, pipewire}:

rustPlatform.buildRustPackage rec {
  pname = "niri";
  version = "0.1";

  src = fetchFromGitHub {
    owner = "twoneis";
    repo = "niri";
    sha256 = "0jg5hndlfsnnj10dhy8sigwnpqj5sixqgcfcd2w2jb3z9wb6ifyh";
    rev = "v${version}";
  };

  cargoLock = {
    lockFile = ./Cargo.lock;
    outputHashes = {
      "smithay-0.3.0" = "sha256-6R2FaqjAZL9gBUB/4/JD0LQV2W/rDS1SNYNCL4TTlu0=";
    };
  };

  LIBCLANG_PATH = "${pkgs.libclang.lib}/lib";
  BINDGEN_EXTRA_CLANG_ARGS = [
    ''-I"${pkgs.libclang.lib}/lib/clang/${pkgs.libclang.version}/include"''
    "-I ${pkgs.glibc.dev}/include"
  ];

  nativeBuildInputs = [ makeBinaryWrapper pkg-config libclang ];
  buildInputs = [ libglvnd libinput libxkbcommon mesa seatd udev wayland pipewire ];

  RUSTFLAGS = map (a: "-C link-arg=${a}") [
    "-Wl,--push-state,--no-as-needed"
    "-lEGL"
    "-lwayland-client"
    "-Wl,--pop-state"
  ];
}
