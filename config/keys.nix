{
  globals.mapleader = " ";

  keymaps = [
    {
      mode = [
        "i"
        "x"
        "n"
        "s"
      ];
      key = "<C-s>";
      action = "<cmd>w<cr><esc>";
      options = {
        silent = true;
        desc = "Save file";
      };
    }
    {
      mode = "n";
      key = "-";
      action = ":Oil<CR>";
      options = {
        silent = true;
        desc = "Open partend directory";
      };
    }
    {
      mode = "n";
      key = "<leader>qq";
      action = "<cmd>quitall<cr><esc>";
      options = {
        silent = true;
        desc = "Quit all";
      };
    }
    # ctrl + a select all (gg + vG)
    {
      mode = "n";
      key = "<C-a>";
      action = "ggvG";
      options = {
        silent = true;
      };
    }
    # open terminal below
    {
      mode = "n";
      key = "<leader>t";
      # action = "<C-W>s +:terminal<CR>i";
      action = ":sp +:terminal<CR>i";
      options = {
        silent = true;
      };
    }
    # escape mode in terminal
    {
      mode = "t";
      key = "<Esc>";
      action = "<C-\\><C-n>";
    }
  ];
}
