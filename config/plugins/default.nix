{
  imports = [

    ./colors/colorscheme.nix
    ./colors/web-devicons.nix

    ./completion/cmp.nix
    ./completion/lspkind.nix
    ./completion/schemastore.nix

    ./editor/neo-tree.nix
    ./editor/illuminate.nix
    ./editor/markview.nix
    ./editor/oil.nix
    ./editor/todo-comments.nix

    ./git/gitsigns.nix
    ./git/lazygit.nix

    ./lsp/fidget.nix
    ./lsp/format.nix
    ./lsp/lsp.nix
    ./lsp/none-ls.nix

    ./snippets/luasnip.nix

    ./syntax/crystal.nix
    ./syntax/treesitter.nix

    ./ui/alpha.nix
    ./ui/bufferline.nix
    ./ui/indent-blankline.nix
    ./ui/lualine.nix
    ./ui/statline.nix
    ./ui/telescope.nix

    ./utils/autopair.nix
    ./utils/mini.nix
    ./utils/which-key.nix

  ];
}
