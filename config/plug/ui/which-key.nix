{
  plugins.which-key = {
    enable = true;

    settings = {
      spec = [
        {
          __unkeyed-1 = "<leader>g";
          group = "Git";
          desc = "Git";
          icon = "";
        }
        {
          __unkeyed-1 = "<leader>r";
          group = "Grep";
          desc = "Grep";
          icon = "󰈞";
        }
        {
          __unkeyed-1 = "<leader>q";
          desc = "Quit nixvim";
          icon = "";
        }
        {
          __unkeyed-1 = "<leader>u";
          group = "UI";
          desc = "UI";
          icon = "";
        }
        {
          __unkeyed-1 = "<leader>c";
          group = "Code";
          desc = "Code";
          icon = "</>";
        }
        {
          __unkeyed-1 = "<leader>s";
          group = "Search";
          desc = "Search";
          icon = "";
        }
        {
          __unkeyed-1 = "<leader>w";
          group = "Windows";
          desc = "Windows";
          icon = "󱂬";
        }
        {
          __unkeyed-1 = "<leader>f";
          group = "File";
          desc = "File";
          icon = "󰈞";
        }
        {
          __unkeyed-1 = "<leader>e";
          desc = "Tree";
          icon = "";
        }
        {
          __unkeyed-1 = "<leader>:";
          desc = "Command history";
          icon = "";
        }
        {
          __unkeyed-1 = "<leader>x";
          desc = "Destroy buffer";
          icon = "🗑️";
        }
        {
          __unkeyed-1 = "<leader>k";
          desc = "Pin buffer";
          icon = "📌";
        }
      ];
    };
  };
}
