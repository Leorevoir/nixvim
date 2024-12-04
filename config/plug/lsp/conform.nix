{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      notify_on_error = true;
      formatters_by_ft = {
        liquidsoap = [ "liquidsoap-prettier" ];
        html = [
          [
            "prettierd"
            "prettier"
          ]
        ];
        css = [
          [
            "prettierd"
            "prettier"
          ]
        ];
        python = [ "black" ];
        lua = [ "stylua" ];
        nix = [ "nixfmt" ];
        markdown = [
          [
            "prettierd"
            "prettier"
          ]
        ];
        ruby = [ "ruby-beauty" ];
      };
      formatters = {
        stylua = {
          command = "stylua";
          args = [
            "--indent-width"
            "4"
            "--indent-type"
            "Spaces"
            "-"
          ];
        };
      };
    };
  };
}
