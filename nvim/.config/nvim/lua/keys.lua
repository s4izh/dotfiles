local function map(m, k, v)
    vim.keymap.set(m, k, v, { noremap = false })
end
-- basic navigation
-- map('n', '<C-h>', '<C-w>h')
-- map('n', '<C-j>', '<C-w>j')
-- map('n', '<C-k>', '<C-w>k')
-- map('n', '<C-l>', '<C-w>l')

-- map('n', '<leader>v', '<C-w>v')
-- map('n', '<leader>c', '<C-w>c')

-- behave like other capitals
map("n", "Y", "y$")

-- save, save all, quite
map('n', '<leader>w', '<CMD>update<CR>')
map('n', '<leader>W', '<CMD>wall<CR>')
map('n', '<leader>q', '<CMD>q<CR>')

-- leader-o/O inserts blank line below/above
map('n', '<leader>o', 'o<ESC>')
map('n', '<leader>O', 'O<ESC>')

-- move to the previous/next buffer
map('n', '<leader>b', '<CMD>bp<CR>')
map('n', '<leader>n', '<CMD>bn<CR>')

-- wrap
map("n", "<Leader>r", ":set wrap! linebreak!<cr>")
map("n", "j", "gj")
map("n", "k", "gk")

-- packer
map('n', '<leader>pc',"<cmd>PackerCompile<cr>")
map('n', '<leader>pi',"<cmd>PackerInstall<cr>")
map('n', '<leader>ps',"<cmd>PackerSync<cr>")
map('n', '<leader>pS',"<cmd>PackerStatus<cr>")
map('n', '<leader>pu',"<cmd>PackerUpdate<cr>")

-- tree
map('n', '<leader>e',"<cmd>NeoTreeFocusToggle<cr>")

-- goyo (zen mode)
map('n', '<leader>z',"<cmd>Goyo<cr>")

-- telescope
map("n", "<Leader>ff", "<cmd>Telescope find_files<cr>")
map("n", "<Leader>fg", "<cmd>Telescope live_grep<cr>")
map("n", "<Leader>fb", "<cmd>Telescope buffers<cr>")
map("n", "<Leader>fr", "<cmd>Telescope bibtex<cr>")

-- toggle gitsigns
map("n", "<Leader>gs", "<cmd>Gitsigns toggle_signs<cr>")

-- lsp
map("n", "<Leader>la", "<cmd>LspStop<cr>")
map("n", "<Leader>le", "<cmd>LspStart<cr>")

-- compile current file
map("n", "<Leader>c", "<cmd>!compiler %<cr>")

-- set colors
map("n", "<Leader>xt", "<cmd>colo tokyonight-night<cr>")

-- copy and paste to/from clipboard
-- map("v", "<Leader>y", '<cmd>"+y<cr>')
-- map("n", "<Leader>c", "<cmd>!compiler %<cr>")
--
-- rust formatting
map("n", "<Leader>lf", "<cmd>!rustfmt %<cr>")
