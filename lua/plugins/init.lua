require 'paq'
{
	'savq/paq-nvim';

	-- Dependencies
	'nvim-lua/plenary.nvim';

	-- LaTeX
	'lervag/vimtex';

	-- Style
	'tiagovla/tokyodark.nvim';
	'glacambre/firenvim';
	{'catppuccin/nvim', as='catppuccin'};
	'lukas-reineke/indent-blankline.nvim';

	-- Editor
	'editorconfig/editorconfig-vim';
	'windwp/nvim-autopairs';
	'RRethy/vim-illuminate';

	-- LSP
	'nvim-treesitter/nvim-treesitter';
	'neovim/nvim-lspconfig';
	'hrsh7th/cmp-nvim-lsp';
	'hrsh7th/cmp-buffer';
	'hrsh7th/cmp-path';
	'hrsh7th/cmp-cmdline';
	'hrsh7th/nvim-cmp';
	'hrsh7th/vim-vsnip';
	'folke/trouble.nvim';
	'onsails/lspkind.nvim';

	-- Git
	'mhinz/vim-signify';

	-- Files
	'junegunn/fzf';
	'junegunn/fzf.vim';
	'kyazdani42/nvim-web-devicons';
	'kyazdani42/nvim-tree.lua';
	'nyngwang/neoroot.lua';

	-- Terminal
	'akinsho/toggleterm.nvim';

	-- Other
	{'turbio/bracey.vim', run='npm install --prefix server'};
}
