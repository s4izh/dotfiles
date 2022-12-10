-- local function map(m, k, v)
--     vim.keymap.set(m, k, v, { noremap = false })
-- end

-- # keys.lua

local map = vim.api.nvim_set_keymap

--map('n', '<leader>w', '<CMD>update<CR>', {})
-- map('n', '<leader>W', '<CMD>wall<CR>', {})
-- map('n', '<leader>q', '<CMD>q<CR>', {})

-- nvim-tree
map('n', "<Leader>e", "<CMD>Ex<CR>", {})
-- map('n', '<leader>e',"<cmd>NeoTreeFocusToggle<cr>", {})

-- wrap
map("n", "<Leader>r", ":set wrap! linebreak!<cr>", {})
map("n", "j", "gj", {})
map("n", "k", "gk", {})

-- packer
map('n', '<leader>pc',"<cmd>PackerCompile<cr>", {})
map('n', '<leader>pi',"<cmd>PackerInstall<cr>", {})
map('n', '<leader>ps',"<cmd>PackerSync<cr>", {})
map('n', '<leader>pS',"<cmd>PackerStatus<cr>", {})
map('n', '<leader>pu',"<cmd>PackerUpdate<cr>", {})

-- telescope
map("n", "<Leader>ff", "<cmd>Telescope find_files<cr>", {})
map("n", "<Leader>fg", "<cmd>Telescope live_grep<cr>", {})
map("n", "<Leader>fb", "<cmd>Telescope buffers<cr>", {})
map("n", "<Leader>fr", "<cmd>Telescope bibtex<cr>", {})

-- reload config
map("n", "<Leader><Leader>r", "<cmd>luafile %<cr>", {})

-- toggle gitsigns
-- map("n", "<Leader>gs", "<cmd>Gitsigns toggle_signs<cr>")

-- lsp
-- map("n", "<Leader>la", "<cmd>LspStop<cr>")
-- map("n", "<Leader>le", "<cmd>LspStart<cr>")

-- compile current file
-- map("n", "<Leader>c", "<cmd>!compiler %<cr>")
