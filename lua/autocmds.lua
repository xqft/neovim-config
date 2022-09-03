local api = vim.api

api.nvim_create_autocmd(
	"BufEnter",
	{ pattern = "*", command = "NeoRoot" }
)
