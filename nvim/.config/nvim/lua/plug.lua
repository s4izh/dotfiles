-- # Plugins

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- colorscheme
    -- use 'ellisonleao/gruvbox.nvim'
    use 'morhetz/gruvbox'
    use 'folke/tokyonight.nvim'
    use 'tanvirtin/monokai.nvim'
    use 'sainnhe/everforest'
    use 'dylanaraps/wal.vim'
    use 'Mofiqul/dracula.nvim'
    use 'navarasu/onedark.nvim'
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use 'shaunsingh/nord.nvim'
    -------------------------------------------
    -- nerd tree
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }
    -- autopairs
    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    }
    -------------------------------------------
    -- lsp
    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    }
    -- rust
    use 'simrat39/rust-tools.nvim'
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    -------------------------------------------
    -- completions
    use 'hrsh7th/nvim-cmp'
    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'
    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use "saadparwaiz1/cmp_luasnip" -- luasnip completion source for nvim-cmp
    use {
        'L3MON4D3/LuaSnip',
        after = 'nvim-cmp',
        -- config = function() require('config.snippets') end,
    }
    use 'onsails/lspkind.nvim'
    use 'rafamadriz/friendly-snippets'
    -------------------------------------------

    -- treesitter
    use 'nvim-treesitter/nvim-treesitter'

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- tagbar
    -- use { 'majutsushi/tagbar'}

    -- commentaries
    use { 'tpope/vim-commentary' }

    -- gitsigns
    use {
        'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
        config = function() require('gitsigns').setup() end
    }
    -- lightline
    -- use 'itchyny/lightline.vim'

    use 'norcalli/nvim-colorizer.lua'

    -- vimwiki
    use 'vimwiki/vimwiki'
    -- use 'tools-life/taskwiki'
    use 'preservim/vim-markdown'
    use 'junegunn/goyo.vim'
    use 'junegunn/limelight.vim'
    -- no va :(
    -- use 'fwalch/zathura.vim'
    -- use 'arp242/xdg_open.vim'

    -- table mode
    use 'dhruvasagar/vim-table-mode'

    -- easy align
    use 'junegunn/vim-easy-align'

    -- org mode
    use 'nvim-orgmode/orgmode'
    use 'akinsho/org-bullets.nvim'

    use 'tpope/vim-fugitive'
end)
