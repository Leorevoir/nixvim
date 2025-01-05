{
  plugins.oil = {
    enable = true;
    settings = {
      useDefaultKeymaps = true;
      deleteToTrash = true;
      float = {
        padding = 2;
        maxWidth = 0;
        maxHeight = 0;
        border = "shadow"; # 'rounded' | 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
        winOptions = {
          winblend = 0;
        };
      };
      preview = {
        border = "rounded";
      };
      keymaps = {
        "-" = "actions.parent";
      };
    };
  };
}
