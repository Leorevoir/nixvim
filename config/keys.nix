{
  globals.mapleader = " ";

  keymaps = [
    # General maps
    {
      mode = "n";
      key = "<leader>f";
      action = "+find/file";
    }

    {
      mode = "n";
      key = "<leader>s";
      action = "+search";
    }

    {
      mode = "n";
      key = "<leader>q";
      action = "+quit/session";
    }

    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>g";
      action = "+git";
    }

    {
      mode = "n";
      key = "<leader>u";
      action = "+ui";
    }

    {
      mode = "n";
      key = "<leader>w";
      action = "+windows";
    }

    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>c";
      action = "+code";
    }

    # Windows
    {
      mode = "n";
      key = "<leader>ww";
      action = "<C-W>p";
      options = {
        silent = true;
        desc = "Other window";
      };
    }

    {
      mode = "n";
      key = "<leader>wd";
      action = "<C-W>c";
      options = {
        silent = true;
        desc = "Delete window";
      };
    }

    {
      mode = "n";
      key = "<leader>wj";
      action = "<C-W>s";
      options = {
        silent = true;
        desc = "Split window below";
      };
    }

    {
      mode = "n";
      key = "<leader>wl";
      action = "<C-W>v";
      options = {
        silent = true;
        desc = "Split window right";
      };
    }

    {
      mode = "n";
      key = "<C-h>";
      action = "<C-W>h";
      options = {
        silent = true;
        desc = "Move to window left";
      };
    }

    {
      mode = "n";
      key = "<C-l>";
      action = "<C-W>l";
      options = {
        silent = true;
        desc = "Move to window right";
      };
    }

    {
      mode = "n";
      key = "<C-k>";
      action = "<C-W>k";
      options = {
        silent = true;
        desc = "Move to window over";
      };
    }

    {
      mode = "n";
      key = "<C-j>";
      action = "<C-W>j";
      options = {
        silent = true;
        desc = "Move to window bellow";
      };
    }

    {
      mode = "n";
      key = "<C-s>";
      action = "<cmd>w<cr><esc>";
      options = {
        silent = true;
        desc = "Save file";
      };
    }

    # Quit/Session
    {
      mode = "n";
      key = "<leader>qq";
      action = "<cmd>quitall<cr><esc>";
      options = {
        silent = true;
        desc = "Quit all";
      };
    }

    {
      mode = "n";
      key = "<leader>ul";
      action = ":lua ToggleLineNumber()<cr>";
      options = {
        silent = true;
        desc = "Toggle Line Numbers";
      };
    }

    {
      mode = "n";
      key = "<leader>uL";
      action = ":lua ToggleRelativeLineNumber()<cr>";
      options = {
        silent = true;
        desc = "Toggle Relative Line Numbers";
      };
    }

    {
      mode = "n";
      key = "<leader>uw";
      action = ":lua ToggleWrap()<cr>";
      options = {
        silent = true;
        desc = "Toggle Line Wrap";
      };
    }

    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
      options = {
        desc = "Use move command when line is highlighted ";
      };
    }

    {
      mode = "v";
      key = "K";
      action = ":m '>-2<CR>gv=gv";
      options = {
        desc = "Use move command when line is highlighted ";
      };
    }

    {
      mode = "n";
      key = "J";
      action = "mzJ`z";
      options = {
        desc = "Allow cursor to stay in the same place after appending to current line ";
      };
    }

    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
      options = {
        desc = "Allow C-d and C-u to keep the cursor in the middle";
      };
    }

    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
      options = {
        desc = "Allow C-d and C-u to keep the cursor in the middle";
      };
    }

    {
      mode = "n";
      key = "n";
      action = "nzzzv";
      options = {
        desc = "Allow search terms to stay in the middle ";
      };
    }

    {
      mode = "n";
      key = "N";
      action = "Nzzzv";
      options = {
        desc = "Allow search terms to stay in the middle ";
      };
    }

    # NVimTree
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>NvimTreeFocus<CR>";
      options = {
        silent = true;
      };
    }

    # Buffer shortcuts
    # delete no override
    {
      mode = "n";
      key = "<leader>x";
      action = "<cmd>bdelete<cr>";
    }
    # pin buffer
    {
      mode = "n";
      key = "<leader>k";
      action = "<cmd>BufferLineTogglePin<cr>";
    }

    # Select ALL
    {
      mode = "n";
      key = "<C-a>";
      action = "ggVG";
      options = {
        silent = true;
      };
    }

    # Open a terminal below
    {
      mode = "n";
      key = "<leader>t";
      action = "<C-W>s +:terminal<CR>i";
      options = {
        silent = true;
      };
    }

    # Escape mode in terminal
    {
      mode = "t";
      key = "<Esc>";
      action = "<C-\\><C-n>";
    }

  ];
  extraConfigLua = ''
    function ToggleLineNumber()
        if vim.wo.number then
          vim.wo.number = false
        else
          vim.wo.number = true
          vim.wo.relativenumber = false
          end
    end

    function ToggleRelativeLineNumber()
        if vim.wo.relativenumber then
            vim.wo.relativenumber = false
        else
            vim.wo.relativenumber = true
            vim.wo.number = false
        end
    end

    function ToggleWrap()
        vim.wo.wrap = not vim.wo.wrap
    end
  '';
}
