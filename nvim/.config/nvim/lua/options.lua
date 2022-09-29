local o = vim.o
local opt = vim.opt

-- vim.g.gruvbox_disable_background = true
-- require('gruvbox').set()
-- vim.cmd("colorscheme gruvbox")
o.termguicolors = true

o.relativenumber = true  -- relative number in gutter
o.nu = true  -- Indent current line number

o.hlsearch = false  -- Don't highlight search
o.incsearch = true  -- jump incrementally to search results
o.hidden = true -- allow hidden buffers
o.cursorline = true -- cursor line
o.errorbells = false -- ding ding!
o.wrap = false -- don't wrap long lines
o.swapfile = false -- don't need no swap files!
o.backup = false  -- ... or a backup!
o.undodir = "~/.nvim/undodir"  -- sets where undo files land
o.scrolloff = 8  -- scroll offwidth so it's not the very bottom
-- o.colorcolumn = "80"  -- bar at 80 chars width
-- o.signcolumn = "yes" -- always set the far left bar/column
-- o.nocompatible = true
o.mouse = "a"  -- always enable mouse mode

-- 4 spaces tab
o.tabstop = 4  -- Tabs are 4 spaces: Reference - https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
o.softtabstop = 0
o.shiftwidth = 4
o.expandtab = false
o.smartindent = true

o.clipboard = unnamedplus

o.ignorecase = true  -- ignore case when searching
o.smartcase = true  -- Unless we explicitly use cases in search

o.list = false
o.updatetime = 50

-- o.splitbelow = true  -- automagically h split going down
-- o.splitright = true -- automagically v split going right

-- opt.listchars = {  -- see hidden chars and their colors
-- 	tab = "| ",
-- 	eol = '¬',
-- 	trail = '·'
-- }
