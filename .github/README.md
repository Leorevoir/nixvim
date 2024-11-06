<div align="center">
    <img src="assets/neovim-flake-logo-work.svg" alt="neovim-flake Logo"  width="200">
</div>

# Nixvim config

Elythh nixvim fork for Yutsuna's nixvim config.

## Configuring

To start configuring, just add or modify the nix files in `./config`.
If you add a new configuration file, remember to add it to the
[`config/default.nix`](../config/default.nix) file

## Testing your new configuration

To test your configuration simply run the following command

```
nix run .
```

If you have nix installed, you can directly run my config from anywhere

You can try running mine with:

```shell
nix run 'github:Leorevoir/nixvim'
```

## Installing into NixOS configuration

This `nixvim` flake will output a derivation that you can easily include
in `NixOS`.

```nix
#flake.nix
{
  inputs = {
    nixvim = {
      url = "github:Leorevoir//nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}

# your_home-manager.nix
{
  pkgs
  , username
  , inputs
  , ...
};
{
  home = {
    packages = [
      inputs.nixvim.packages.${pkgs.system}.default
    ];
 };
}
```

## Credits

- [yavko](https://github.com/yavko) for the logo
- [elythh](https://github.com/elythh) for the main repo
- [nixvim](https://github.com/nix-community/nixvim) and all their maintainers/contributors
