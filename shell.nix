let
  pkgs = import (builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/ab7b6889ae9d484eed2876868209e33eb262511d.tar.gz";
  }) {};
in
  pkgs.mkShellNoCC {
    packages = [pkgs.typst pkgs.just];
  }
