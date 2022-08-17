require'nvim-treesitter.configs'.setup {
	ensure_installed = {'lua', 'c'},
	sync_install = false,
	auto_install = true,
	highlight = { -- enable highlighting
  enable = true, 
	},
	indent = {
		enable = false, -- default is disabled anyways
	}
}

local opt = vim.opt

opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'
opt.foldenable = false
