require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
		use_treesitter = true,
    show_current_context = true,
}

local highlight = vim.api.nvim_set_hl  
highlight(0, 'IndentBlanklineChar', { ctermfg = 'black'})
