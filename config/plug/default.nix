{
  imports = [

    ./colorscheme/biscuit.nix
    ./colorscheme/colorscheme.nix

    ./completion/cmp.nix
    ./completion/lspkind.nix
    ./completion/schemastore.nix

    ./git/gitlinker.nix
    ./git/gitsigns.nix
    ./git/lazygit.nix
    ./git/worktree.nix

    ./lsp/fidget.nix
    ./lsp/hlchunk.nix
    ./lsp/lsp.nix
    ./lsp/lspsaga.nix
    ./lsp/none-ls.nix
    ./lsp/trouble.nix

    ./snippets/luasnip.nix

    ./statusline/lualine.nix

    ./treesitter/treesitter-textobjects.nix
    ./treesitter/treesitter.nix

    ./ui/btw.nix
    ./ui/bufferline.nix
    ./ui/indent-blankline.nix
    ./ui/noice.nix
    #./ui/nvim-notify.nix
    ./ui/telescope.nix
    ./ui/nvim-tree.nix

    ./utils/comment.nix
    ./utils/comment-box.nix
    ./utils/hardtime.nix
    ./utils/illuminate.nix
    ./utils/markview.nix
    ./utils/mini.nix
    ./utils/nvim-autopairs.nix
    ./utils/oil.nix
    ./utils/ufo.nix
    ./utils/undotree.nix
    ./utils/whichkey.nix
    ./utils/yaml-companion.nix
    ./utils/neocord.nix
  ];

}
