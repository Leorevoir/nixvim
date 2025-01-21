{ pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "vim-crystal";
      src = pkgs.fetchFromGitHub {
        owner = "vim-crystal";
        repo = "vim-crystal";
        rev = "master";
        sha256 = "1r7nr1g471h875p97yhz29z0w9kngf7vxs8b943cvyid0cr4ysxq";
      };
    })
  ];
}
