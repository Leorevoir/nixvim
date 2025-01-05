{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin rec {
      pname = "markview.nvim";
      version = "24.0.0";
      src = pkgs.fetchFromGitHub {
        owner = "OXY2DEV";
        repo = "markview.nvim";
        rev = "refs/tags/v${version}";
        hash = "sha256-Bkwhg4RstOSRx+Jmjq5n2xjEkvyZ4Mx85lWn0YqRHxY=";
      };
    })
  ];

  extraConfigLua = ''
    require("markview").setup();
  '';
}
