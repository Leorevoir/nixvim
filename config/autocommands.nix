{
  autoGroups = {
    indentscope = { };
  };

  autoCmd = [

    # enable spellcheck for some filetypes
    {
      event = "FileType";
      pattern = [
        "tex"
        "latex"
        "markdown"
      ];
      command = "setlocal spell spelllang=en,fr";
    }

    # file-specific indentation rules
    {
      event = "FileType";
      pattern = [
        "nix"
        "html"
        "css"
        "scss"
        "json"
        "yaml"
      ];
      command = "setlocal shiftwidth=2 tabstop=2";
    }
    # {
    #   event = "FileType";
    #   pattern = [
    #     "cr"
    #     "rb"
    #   ];
    #   command = "setlocal shiftwidth=4 tabstop=4 sw=4 ts=4";
    # }
    {
      group = "indentscope";
      event = [ "FileType" ];
      pattern = [
        "help"
        "Startup"
        "startup"
        "neo-tree"
        "Trouble"
        "trouble"
        "notify"
      ];
      callback = {
        __raw = ''
          function()
            vim.b.miniindentscope_disable = true
          end
        '';
      };
    }

  ];
}
