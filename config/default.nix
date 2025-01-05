{ ...
}: {
  imports = [
    ./autocommands.nix
    ./highlight.nix
    ./keys.nix
    ./settings.nix

    ./plugins/default.nix
  ];
}
