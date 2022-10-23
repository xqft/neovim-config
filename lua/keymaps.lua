local map = vim.api.nvim_set_keymap
local opts = function(desc)
	return { noremap = true, silent = true, desc = desc }
end
local wk = require("which-key")

keys = {
	-- Search escape
	map('n', '<Esc>', ':noh<cr>', opts("Escape search")),

	-- Fuzzy finding
	map('n', '<C-n>', ':NvimTreeToggle<cr>', opts("Toggle file tree")),
	map('n', '<C-f>', ':Files<cr>', opts("Fuzzy find files")),

	-- Integrated terminal
	map('n', '<C-p>', ':ToggleTerm<cr>', opts("Open integrated terminal")),
	map('t', '<Esc>', [[<Esc><C-\><C-n>]], opts("Escape terminal")),
	map('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts("")),
	map('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts("")),
	map('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts("")),
	map('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts("")),
}

-- LSP, copied from nvim-lspconfig github
local lsp = { }
lsp.on_attach = function(client, bufnr)
  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

return lsp
