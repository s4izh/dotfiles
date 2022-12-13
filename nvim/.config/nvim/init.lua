-- [[ init.lua ]] --

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

vim.opt.termguicolors = false -- disable to use pywal
require('colorscheme')
-- vim.cmd("set background=light")
-- vim.cmd("set formatoptions-=cro")

