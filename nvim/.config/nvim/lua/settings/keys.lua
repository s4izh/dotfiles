local function map(m, k, v)
    vim.keymap.set(m, k, v, { noremap = false })
end
-- basic navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

map('n', '<leader>v', '<C-w>v')
map('n', '<leader>c', '<C-w>c')

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

-- Packer
map('n', '<leader>pc',"<cmd>PackerCompile<cr>")
map('n', '<leader>pi',"<cmd>PackerInstall<cr>")
map('n', '<leader>ps',"<cmd>PackerSync<cr>")
map('n', '<leader>pS',"<cmd>PackerStatus<cr>")
map('n', '<leader>pu',"<cmd>PackerUpdate<cr>")

-- tree
map('n', '<leader>e',"<cmd>NeoTreeFocusToggle<cr>")

-- goyo (zen mode)
map('n', '<leader>z',"<cmd>Goyo<cr>")
