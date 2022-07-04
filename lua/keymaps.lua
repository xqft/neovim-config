local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Search escape
map('n', '<Esc>', ':noh<cr>', opts)
