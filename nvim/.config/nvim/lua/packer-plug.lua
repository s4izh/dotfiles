return require('packer').startup(function()
	-- packer can manage itself
	use 'wbthomason/packer.nvim'

	-- colorscheme
	use 'gruvbox-community/gruvbox'
	use 'shaunsingh/nord.nvim'
	-- telescope
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")
	use("nvim-telescope/telescope.nvim")
	-- colors
	use("ap/vim-css-color")
	-- coments
	use("tpope/vim-commentary")
	-- bar
	use("vim-airline/vim-airline")
	use("vim-airline/vim-airline-themes")
	-- git
	use("jreybert/vimagit")
	-- distraction free
	use("junegunn/goyo.vim")
	-- file tree
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = { 
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		}
	}
	-- change surroundings (cs"')
	use("tpope/vim-surround")
	-- cursor line
	use("yamatsum/nvim-cursorline")
	-- auto-pair
	use("jiangmiao/auto-pairs")
	-- rainbow
	use("luochen1990/rainbow")
	-- wimwiki
	use("wimwiki/wimwiki")

	-- use {
	-- 	'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
	-- 	config = function() require('gitsigns').setup() end
	-- }
	use("nvim-treesitter/nvim-treesitter")
	use("williamboman/nvim-lsp-installer")
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-cmdline")
	use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
	use("onsails/lspkind-nvim")
	use("nvim-lua/lsp_extensions.nvim")
	use("glepnir/lspsaga.nvim")
	use("simrat39/symbols-outline.nvim")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
end)
