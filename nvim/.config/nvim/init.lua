vim.g.mapleader = " "
vim.o.relativenumber = true
vim.o.number = true

vim.cmd("colorscheme gruvbox")

require "settings.options"
require "settings.keys"

require "packer-plug"
