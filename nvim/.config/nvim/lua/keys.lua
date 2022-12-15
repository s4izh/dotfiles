-- local function map(m, k, v)
--     vim.keymap.set(m, k, v, { noremap = false })
-- end
local map = vim.api.nvim_set_keymap

map('n', "<Leader>e", "<CMD>Ex<CR>", {})

-- wrap lines
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

-- compile current file
map("n", "<Leader>c", ":w | !compiler %<cr>", {})

-- goyo
map("n", "<Leader>z", "<cmd>Goyo<cr>", {})

map("n", "<Leader>ml", ":Limelight", {})

map("n", "<Leader>o", ":!zathura <c-r><c-p> &<cr>", {})

map("n", "<Leader>wb", ":!python3 ~/vimwiki/notes/backlinks.py %<cr>", {})

vim.cmd[[
    nnoremap S :%s//g<Left><Left>
]]

vim.cmd[[
    vnoremap S :s//g<Left><Left>
]]

-- " Start interactive EasyAlign in visual mode (e.g. vipga)
-- xmap ga <Plug>(EasyAlign)

map("v", "ga", ":EasyAlign", {})


-- " Start interactive EasyAlign for a motion/text object (e.g. gaip)
-- nmap ga <Plug>(EasyAlign)

