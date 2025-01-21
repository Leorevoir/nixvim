{
  autoGroups = {
    restore_cursor = { };
    indentscope = { };
  };

  autoCmd = [
    ## from NVChad https://nvchad.com/docs/recipes (this autocmd will restore the cursor position when opening a file)
    {
      group = "restore_cursor";
      event = [ "BufReadPost" ];
      pattern = "*";
      callback = {
        __raw = ''
          function()
            if
              vim.fn.line "'\"" > 1
              and vim.fn.line "'\"" <= vim.fn.line "$"
              and vim.bo.filetype ~= "commit"
              and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
            then
              vim.cmd "normal! g`\""
            end
          end
        '';
      };
    }
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
        "alpha"
        "neo-tree"
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
