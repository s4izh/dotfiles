-- [[ init.lua ]] --
vim.opt.termguicolors = true -- disable to use pywal

vim.g.mapleader = " "

require('vars')
require('opts')
require('keys')
require('plug')

-- general plugin conf
require('plugins/conf')

-- specific plugin conf
require('plugins/lsp')
require('plugins/cmp')
require('plugins/treesitter')
require('plugins/vimwiki')
-- require('plugins/snippets')

vim.cmd("set signcolumn=no")

require('colorscheme')
-- vim.cmd("set background=light")

-- vim.cmd[[
--     let g:gruvbox_contrast_dark='soft'
-- ]]
-- vim.cmd("set formatoptions-=cro")

