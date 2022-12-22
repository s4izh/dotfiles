-- local function map(m, k, v)
--     vim.keymap.set(m, k, v, { noremap = false })
-- end
local map = vim.api.nvim_set_keymap

-- map('n', "<Leader>e", "<CMD>Ex<CR>", {})

-- wrap lines
map("n", "<Leader>r", ":set wrap! linebreak!<cr>", {})
map("n", "j", "gj", {})
map("n", "k", "gk", {})

-- packer
-- map('n', '<leader>pc',"<cmd>PackerCompile<cr>", {})
-- map('n', '<leader>pi',"<cmd>PackerInstall<cr>", {})
map('n', '<leader>Ps', "<cmd>PackerSync<cr>", {})
-- map('n', '<leader>pS',"<cmd>PackerStatus<cr>", {})
-- map('n', '<leader>pu',"<cmd>PackerUpdate<cr>", {})

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

map("n", "<Leader>O", ":!xdg-open <c-r><c-p> &<cr>", {})

map("n", "<Leader>wb", ":!python3 ~/vimwiki/scripts/backlinks.py %<cr>", {})

vim.cmd [[
    nnoremap S :%s//g<Left><Left>
]]

vim.cmd [[
    vnoremap S :s//g<Left><Left>
]]

-- " Start interactive EasyAlign in visual mode (e.g. vipga)
-- xmap ga <Plug>(EasyAlign)

map("v", "ga", ":EasyAlign", {})

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- vim.keymap.set("n", "<leader>vwm", function()
--     require("vim-with-me").StartVimWithMe()
-- end)
-- vim.keymap.set("n", "<leader>svwm", function()
--     require("vim-with-me").StopVimWithMe()
-- end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
