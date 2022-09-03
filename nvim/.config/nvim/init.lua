--binding vim.g.mapleader = " "
-- vim.o.relativenumber = true
-- vim.o.nsumber = true

-- vim.cmd("colorscheme gruvbox")
vim.g.mapleader = " "

-- require "settings.options"
-- require "settings.keys"

-- require "packer-plug"

require('plugins')
require('options')
require('keys')
