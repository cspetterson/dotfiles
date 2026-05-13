return {
  "vim-test/vim-test",
  config = function()
    vim.g["test#strategy"] = "dispatch"

    vim.keymap.set('n', '<leader>r', ':TestNearest')
    vim.keymap.set('n', '<leader>rr', ':TestFile')
    vim.keymap.set('n', '<leader>rt', ':TestLast')
    vim.keymap.set('n', '<leader>rs', ':TestSuite')
  end
}
