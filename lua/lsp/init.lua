-- null-ls
require('null-ls').setup()
-- cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
-- keymaps
local lsp_keymaps = require("../keymaps")
-- trouble
require("trouble").setup{
	auto_close = true,
	use_diagnostic_signs = true,
}

require('mason').setup()
require('mason-lspconfig').setup()

-- webdev
require('lspconfig').html.setup{} -- html
require('lspconfig').cssls.setup{ capabilities = capabilities } -- css
require('lspconfig').tsserver.setup{ 
	capabilities = capabilities,
	on_attach = lsp_keymaps.on_attach,
}
-- emmet
capabilities.textDocument.completion.completionItem.snippetSupport = true
require('lspconfig').emmet_ls.setup({
    -- on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
})

-- python
require'lspconfig'.pylsp.setup{}
