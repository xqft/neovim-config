local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Search escape
map('n', '<Esc>', ':noh<cr>', opts)

map('n', '<C-n>', ':NvimTreeToggle<cr>', opts)
map('n', '<C-f>', ':Files<cr>', opts)

map('n', '<C-p>', ':ToggleTerm<cr>', opts)
map('t', '<Esc>', [[<C-\><C-n>]], opts)
map('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
map('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
map('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
map('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
