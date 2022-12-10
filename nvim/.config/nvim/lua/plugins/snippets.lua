-- if vim.g.snippets == "luasnip" then
--     return
-- end

local ls = require("luasnip")
-- local types = require "luasnip.utils.types"

ls.config.set_config {
    history = true,
    updateevents = "TextChanged,TextChangedI",
    enable_autosnippets = true,
}

-- saltar / expandir snippet
vim.keymap.set({ "i", "s" }, "<C-k>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

-- ir hacia atrás
vim.keymap.set({ "i", "s" }, "<C-j>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })


-- seleccionar opción para un mismo nodo
vim.keymap.set("i", "<C-l>", function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end)

-- source new snippets
vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/lua/plugins/snippets.lua<CR>")

ls.snippets = {
    all = {
        ls.parser.parse_snippet("expand", "-- this is what is expanded"),
    },

    lua = {
    }
}
