{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-24.11.tar.gz") { } }:

pkgs.mkShell
{
  buildInputs = with pkgs; [
    procps
  ];
  NIX_CONFIG = "extra-experimental-features = nix-command flakes";
  shellHook =
    ''
      nix flake check

      if [ $? -ne 0 ]; then
        exit 84
      fi
    '';
}
