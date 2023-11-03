{ lib, rustPlatform, fetchFromGitHub }: 
rustPlatform.buildRustPackage {
  pname = "niri";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "YaLTeR";
    repo = "niri";
    hash = "sha256-889d062df7d89bf8084414c6f8fd87075c3cf85a";
  };

  cargoSha = lib.fakeHash;

  meta = with lib; {
    description = "";
    homepage = "";
    license = license.gpl3Only;
  };
}
