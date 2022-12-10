-- # opts.lua

local o = vim.o
local opt = vim.opt
local cmd = vim.cmd

-- # Context

-- opt.colorcolumn = '80'
opt.number = true
opt.relativenumber = true
opt.scrolloff = 4
opt.signcolumn = "yes"

-- # Filetypes

-- opt.encoding = 'utf8'     -- String encoding to use
-- opt.fileencoding = 'utf8' -- File encoding to use


-- # Theme

opt.syntax = "ON"
opt.termguicolors = true -- disable to use pywal

-- # Search

opt.ignorecase = true -- Ignore case in search patterns
opt.smartcase = true  -- Override ignorecase if search contains capitals
opt.incsearch = true  -- Use incremental search
opt.hlsearch = false  -- Highlight search matches


-- # Whitespace

opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 4   -- Size of an indent
opt.softtabstop = 4  -- Number of spaces tabs count for in insert mode
opt.tabstop = 4      -- Number of spaces tabs count for

-- # Splits
 
opt.splitright = true -- Place new window to right of current one
opt.splitbelow = true -- Place new window below the current one


-- wrap lines
o.wrap = false
-- mouse mode on
o.mouse = "a"

-- # Completion

--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300) 

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently 
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

-- # Treesitter folding

-- vim.wo.foldmethod = 'expr'
-- vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
