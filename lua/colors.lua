local catppuccin = require('catppuccin')

settings =
{
	transparent_background = false,
	term_colors = false,
	styles = {
		comments = "italic",
		conditionals = "italic",
		loops = "NONE",
		functions = "NONE",
		keywords = "NONE",
		strings = "NONE",
		variables = "NONE",
		numbers = "NONE",
		booleans = "NONE",
		properties = "NONE",
		types = "NONE",
		operators = "NONE",
	},
	integrations = {
		treesitter = true,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = "italic",
				hints = "italic",
				warnings = "italic",
				information = "italic",
			},
			underlines = {
				errors = "underline",
				hints = "underline",
				warnings = "underline",
				information = "underline",
			},
		},
		cmp = true,
		nvimtree = {
			enabled = true,
			show_root = false,
			transparent_panel = false,
		},
		indent_blankline = {
			enabled = true,
			colored_indent_levels = false,
		},
		dashboard = true,
		markdown = true,
	}
}

vim.g.catppuccin_flavour = 'mocha'
catppuccin.setup()
vim.cmd[[colorscheme catppuccin]]
