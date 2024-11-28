{
  autoCmd = [
    # Vertically center document when entering insert mode
    {
      event = "InsertEnter";
      command = "norm zz";
    }

    # Open help in a vertical split
    {
      event = "FileType";
      pattern = "help";
      command = "wincmd L";
    }

    # Enable spellcheck for some filetypes
    {
      event = "FileType";
      pattern = [
        "tex"
        "latex"
        "markdown"
      ];
      command = "setlocal spell spelllang=en,fr";
    }

    # File-specific indentation rules
    {
      event = "FileType";
      pattern = [
        "nix"
        "html"
        "css"
        "scss"
      ];
      command = "setlocal shiftwidth=2 tabstop=2";
    }

  ];
}
