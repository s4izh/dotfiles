local function map(m, k, v)
    vim.keymap.set(m, k, v, { noremap = true })
end

-- Fix * (Keep the cursor position, don't move to next match)
map('n', '*', '*N')

-- Fix n and N. Keeping cursor in center
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

-- Mimic shell movements
map('i', '<C-E>', '<ESC>A')
map('i', '<C-A>', '<ESC>I')

-- Quickly save the current buffer or all buffers
map('n', '<leader>w', '<CMD>update<CR>')
map('n', '<leader>W', '<CMD>wall<CR>')

-- Quit neovim
map('n', '<leader>Q', '<CMD>q<CR>')

-- leader-o/O inserts blank line below/above
map('n', '<leader>o', 'o<ESC>')
map('n', '<leader>O', 'O<ESC>')

map('n', '<leader>[', '<CMD>bp<CR>')
map('n', '<leader>]', '<CMD>bn<CR>')

-- Move to last buffer
map('n', "''", '<CMD>b#<CR>')

-- Copying the vscode behaviour of making tab splits
map('n', '<C-\\>', '<CMD>vsplit<CR>')
map('n', '<A-\\>', '<CMD>split<CR>')

-- Move line up and down in NORMAL and VISUAL modes
-- Reference: https://vim.fandom.com/wiki/Moving_lines_up_or_down
map('n', '<C-j>', '<CMD>move .+1<CR>')
map('n', '<C-k>', '<CMD>move .-2<CR>')
map('x', '<C-j>', ":move '>+1<CR>gv=gv")
map('x', '<C-k>', ":move '<-2<CR>gv=gv")

-- Use operator pending mode to visually select the whole buffer
-- e.g. dA = delete buffer ALL, yA = copy whole buffer ALL
map('o', 'A', ':<C-U>normal! mzggVG<CR>`z')
map('x', 'A', ':<C-U>normal! ggVG<CR>')

-- Packer
-- maps.n["<leader>pc"] = { "<cmd>PackerCompile<cr>", desc = "Packer Compile" }
-- maps.n["<leader>pi"] = { "<cmd>PackerInstall<cr>", desc = "Packer Install" }
-- maps.n["<leader>ps"] = { "<cmd>PackerSync<cr>", desc = "Packer Sync" }
-- maps.n["<leader>pS"] = { "<cmd>PackerStatus<cr>", desc = "Packer Status" }
-- maps.n["<leader>pu"] = { "<cmd>PackerUpdate<cr>", desc = "Packer Update" }
map('n', '<leader>pc',"<cmd>PackerCompile<cr>")
map('n', '<leader>pi',"<cmd>PackerInstall<cr>")
map('n', '<leader>ps',"<cmd>PackerSync<cr>")
map('n', '<leader>pS',"<cmd>PackerStatus<cr>")
map('n', '<leader>pu',"<cmd>PackerUpdate<cr>")

