return require('packer').startup(function()
	-- packer can manage itself
	use 'wbthomason/packer.nvim'

	-- colorscheme
	-- use 'gruvbox-community/gruvbox'
	use {
		"ellisonleao/gruvbox.nvim",
		config = [[require('plugins/gruvbox')]]
	}
	use 'folke/tokyonight.nvim'

	use 'chriskempson/base16-vim'

	use "EdenEast/nightfox.nvim"

	use 'shaunsingh/nord.nvim'
	use 'dylanaraps/wal.vim'
	-- telescope
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")
	use("nvim-telescope/telescope.nvim")
	-- colors
	use("ap/vim-css-color")
	-- coments
	use("tpope/vim-commentary")
	-- bar
	-- use("vim-airline/vim-airline")
	-- use("vim-airline/vim-airline-themes")
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
	-- colorizer
	use {
		"norcalli/nvim-colorizer.lua",
		config = [[require('plugins/colorizer')]],
	}
	-- wimwiki

	use {
		'vimwiki/vimwiki',
		setup = function() require "plugins.vimwiki" end
	}

	use {
		'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
		config = function() require('gitsigns').setup() end
	}

    use {
      -- A collection of common configurations for Neovim's built-in language server client
      "neovim/nvim-lspconfig",
      config = [[ require('plugins/lspconfig') ]]
    }

    use {
      "williamboman/nvim-lsp-installer",
      config = [[ require('plugins/lsp_installer_nvim') ]],
      requires = {
        "neovim/nvim-lspconfig"
      }
    }

    use {
      -- vscode-like pictograms for neovim lsp completion items Topics
      "onsails/lspkind-nvim",
      config = [[ require('plugins/lspkind') ]]
    }
     --

    use {
      -- Utility functions for getting diagnostic status and progress messages from LSP servers, for use in the Neovim statusline
      "nvim-lua/lsp-status.nvim",
      config = [[ require('plugins/lspstatus') ]]
    }

    use {
      -- A completion plugin for neovim coded in Lua.
      "hrsh7th/nvim-cmp",
      requires = {
        "hrsh7th/cmp-nvim-lsp", -- nvim-cmp source for neovim builtin LSP client
        "hrsh7th/cmp-nvim-lua", -- nvim-cmp source for nvim lua
        "hrsh7th/cmp-buffer", -- nvim-cmp source for buffer words.
        "hrsh7th/cmp-path", -- nvim-cmp source for filesystem paths.
        "hrsh7th/cmp-calc", -- nvim-cmp source for math calculation.
        "saadparwaiz1/cmp_luasnip" -- luasnip completion source for nvim-cmp
      },
      config = [[ require('plugins/cmp') ]]
    }

    use {
      -- Snippet Engine for Neovim written in Lua.
      "L3MON4D3/LuaSnip",
      requires = {
        "rafamadriz/friendly-snippets" -- Snippets collection for a set of different programming languages for faster development.
      },
      config = [[ require('plugins/luasnip') ]]
    }

    use {
      -- Nvim Treesitter configurations and abstraction layer
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
      requires = {
        "windwp/nvim-ts-autotag",
        "p00f/nvim-ts-rainbow"
      },
      config = [[ require('plugins/treesitter') ]]
    }

    use {
      "nvim-lualine/lualine.nvim",
      requires = {"kyazdani42/nvim-web-devicons", opt = true},
      config = [[ require('plugins/lualine') ]]
    }

    use {
      "mhartington/formatter.nvim",
      config = [[ require('plugins/formatter') ]]
    }

    -- use {
    --   "nvim-telescope/telescope-project.nvim"
    -- }

    -- use {
    --   "nvim-telescope/telescope-fzf-native.nvim",
    --   run = "make"
    -- }

    -- use {
    --   "nvim-telescope/telescope.nvim",
    --   requires = {
    --     "nvim-lua/plenary.nvim",
    --     "BurntSushi/ripgrep"
    --   },
    --   config = [[ require('plugins/telescope') ]]
    -- }

    -- use {
    --   "nvim-telescope/telescope-bibtex.nvim",
    --   requires = {
    --     {"nvim-telescope/telescope.nvim"}
    --   },
    --   config = function()
    --     require "telescope".load_extension("bibtex")
    --   end
    -- }


    -- use {
    --   --  colorscheme for (neo)vim
    --   "shaunsingh/nord.nvim"
    -- }


    -- use {
    --   "lukas-reineke/indent-blankline.nvim",
    --   config = [[ require('plugins/blankline') ]]
    -- }

    -- use {
    --   "tpope/vim-eunuch"
    -- }


    -- use {
    --   "TimUntersberger/neogit",
    --   requires = {"nvim-lua/plenary.nvim"},
    --   config = [[ require('plugins/neogit') ]]
    -- }
	--
	-- use("hrsh7th/cmp-nvim-lsp")
	-- use("hrsh7th/cmp-buffer")
	-- use("hrsh7th/cmp-path")
	-- use("hrsh7th/nvim-cmp")
	-- use("hrsh7th/cmp-cmdline")
	-- use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
	-- use("onsails/lspkind-nvim")
	-- use("nvim-lua/lsp_extensions.nvim")
	-- use("glepnir/lspsaga.nvim")
	-- use("simrat39/symbols-outline.nvim")
	-- use("L3MON4D3/LuaSnip")
	-- use("saadparwaiz1/cmp_luasnip")
end)
