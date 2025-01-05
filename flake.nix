{
  description = "Yutsu's Nixvim dots!";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";

    };
  };

  outputs =
    { nixvim
    , flake-parts
    , ...
    } @ inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
      ];

      perSystem =
        { system
        , pkgs
        , ...
        }:
        let
          nixvimLib = nixvim.lib.${system};
          nixvim_ = nixvim.legacyPackages.${system};
          nixvimModule = {
            inherit pkgs;
            module = import ./config;
          };
          nvim = nixvim_.makeNixvimWithModule nixvimModule;
        in
        {
          checks = {
            default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
          };
          packages = {
            default = nvim;
          };
        };
    };
}
