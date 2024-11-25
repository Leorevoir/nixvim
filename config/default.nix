{ ...
}: {
  imports = [
    ./autocommands.nix
    ./keys.nix
    ./sets.nix
    ./highlight.nix
    ./plug/default.nix
  ];
  config = {
    extraConfigLua = ''
      _G.theme = "base16-catppuccin-mocha"
    '';
  };
}
