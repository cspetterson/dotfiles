return {
  "tpope/vim-rails",
  {
    "tpope/vim-dispatch",
    config = function()
      vim.g.dispatch_quickfix_height = 20
      vim.g.dispatch_tmux_height = 20
    end
  },
  {
    "tpope/vim-fugitive",
    config = function()
      vim.keymap.set('n', '<leader>b', ":Git blame<CR>")
    end
  }
}
