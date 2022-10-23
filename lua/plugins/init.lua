return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- Dependencies
	use 'nvim-lua/plenary.nvim'

	-- LaTeX
	use 'lervag/vimtex'

	-- Style
	use 'tiagovla/tokyodark.nvim'
	use 'glacambre/firenvim'
	use { 'catppuccin/nvim', as='catppuccin'}
	use 'lukas-reineke/indent-blankline.nvim'

	-- Editor
	use 'editorconfig/editorconfig-vim'
	use 'windwp/nvim-autopairs'
	use 'RRethy/vim-illuminate'

	-- LSP
	use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
	}

	use 'jose-elias-alvarez/null-ls.nvim'

	use 'nvim-treesitter/nvim-treesitter'

	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	use 'hrsh7th/vim-vsnip'

	use 'folke/trouble.nvim'

	use 'onsails/lspkind.nvim'

	-- Git
	use 'mhinz/vim-signify'

	-- Files
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'
	use 'kyazdani42/nvim-web-devicons'
	use 'kyazdani42/nvim-tree.lua'
	use 'nyngwang/neoroot.lua'

	-- Terminal
	use 'akinsho/toggleterm.nvim'

	-- Other
	use {'turbio/bracey.vim', run='npm install --prefix server'}
	use 'folke/which-key.nvim'
end)
