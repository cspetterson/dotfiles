vim.g.mapleader = ","

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set colorcolumn=80")
vim.cmd("set textwidth=80")

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.autoindent = true
vim.opt.backup = false
vim.opt.writebackup = false

-- shift/capital helpers
vim.cmd("command! Q q")
vim.cmd("command! Qall qall")
vim.cmd("command! E e")
vim.cmd("command! W w")
vim.cmd("command! Vs vs")
vim.cmd("command! Wq wq")

-- Disable K looking stuff up
vim.keymap.set('', 'K', '<Nop>')

-- insert mode escape
vim.keymap.set('i', 'jj', '<Esc>')

-- shortcuts to open specific files
vim.keymap.set('n', '<leader>n', ':e ~/Documents/Notes/main.txt')
vim.keymap.set('n', '<leader>.', ':e ~/.dotfiles/')
vim.keymap.set('n', '<leader>db', ':e config/database.yml')

-- Pane resizing (f: full, e: equal)
vim.keymap.set('n', '<leader>f', '<C-w><bar>')
vim.keymap.set('n', '<leader>e', '<C-w>=')

-- global copy and paste
vim.api.nvim_set_option("clipboard", "unnamed")

-- remove trailing whitespace
vim.keymap.set('n', '<leader>ws', ":%s/\\s\\+$//e<CR>")

-- ctags for ctrl+]
vim.keymap.set('n', '<leader>ct', ":!ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)<CR>")

-- Run rubocop
vim.keymap.set('n', '<leader>c', ":!bin/rubocop %<CR>")
vim.keymap.set('n', '<leader>ca', ":!bin/rubocop -A %<CR>")

-- Git blame
vim.keymap.set('n', '<leader>b', ':!git blame %<CR>')

-- RSpec shortcuts (with save)
vim.keymap.set('n', '<leader>w', function()
  vim.cmd('w')
  vim.cmd('!bin/rspec %:' .. vim.fn.line('.'))
end)
vim.keymap.set('n', '<leader>ww', function()
  vim.cmd('w')
  vim.cmd('!bin/rspec %')
end)

-- Highlight trailing whitespace
vim.api.nvim_set_hl(0, 'TrailingWhitespace', { ctermbg = 'DarkGrey', bg = 'DarkGrey' })
vim.api.nvim_create_autocmd('BufWinEnter', {
  pattern = '*',
  callback = function()
    vim.cmd('match TrailingWhitespace /\\s\\+$/')
  end
})
