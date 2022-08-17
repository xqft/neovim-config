local opt = vim.opt

-- Line number
opt.number = true
opt.relativenumber = true
opt.numberwidth = 4

-- Text
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 0

opt.wrap = false

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Editor
opt.cursorline = true

-- Other
opt.backspace = 'indent,eol,start'
opt.completeopt = 'menu,menuone,noselect'

-- Highlights
local highight = vim.api.nvim_set_hl
