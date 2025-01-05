{
  config = {

    extraConfigLua =
      ''
        vim.fn.sign_define("diagnosticsignerror", { text = " ", texthl = "diagnosticerror", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsignwarn", { text = " ", texthl = "diagnosticwarn", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsignhint", { text = "󰌵", texthl = "diagnostichint", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsigninfo", { text = " ", texthl = "diagnosticinfo", linehl = "", numhl = "" })
      '';

    clipboard = {
      providers.wl-copy.enable = true;
    };

    opts = {

      # line number
      number = true;
      relativenumber = true;

      # default tab to 4 spaces
      tabstop = 4;
      softtabstop = 4;
      showtabline = 4;
      expandtab = true;
      smartindent = true;
      shiftwidth = 4;
      breakindent = true;

      # enable incremental searching
      hlsearch = true;
      incsearch = true;

      # enable text wrap
      wrap = true;

      # better splitting
      splitbelow = true;
      splitright = true;

      # nable mouse mode
      # mouse = "a";

      # ignorecase + smartcase for better searching
      ignorecase = true;
      smartcase = true;
      grepprg = "rg --vimgrep";
      grepformat = "%f:%l:%c:%m";

      # decrease updatetime
      updatetime = 50; # faster completion (4000ms default)

      # set completeopt to have a better completion experience
      completeopt = [
        "menuone"
        "noselect"
        "noinsert"
      ];

      # enable persistent undo history
      swapfile = false;
      backup = false;
      undofile = true;

      # enable 24-bit colors
      termguicolors = true;
      # highlight the line where the cursor is located
      cursorline = true;

      # set fold settings
      # these options were reccommended by nvim-ufo
      # see: https://github.com/kevinhwang91/nvim-ufo#minimal-configuration
      foldcolumn = "0";
      foldlevel = 99;
      foldlevelstart = 99;
      foldenable = true;

      # always keep 8 lines above/below cursor unless at start/end of file
      scrolloff = 8;

      # place a column line
      # colorcolumn = "80";

      # reduce which-key timeout to 10ms
      timeoutlen = 10;

      # set encoding type
      encoding = "utf-8";
      fileencoding = "utf-8";

      # more space in the neovim command line for displaying messages
      cmdheight = 0;

      # we don't need to see things like INSERT anymore
      showmode = false;
    };
  };
}
