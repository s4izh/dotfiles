vim.cmd [[
    let g:vimwiki_list = [{'path':'~/notes', 'syntax':'markdown', 'ext': '.md'}]
]]

vim.cmd [[
    let g:vimwiki_ext2syntax = {'.md':'markdown', '.markdown':'markdown', '.mdown': 'markdown'}
]]

-- makes links as [file](file.md) instead of [file](file)
vim.cmd [[
    let g:vimwiki_markdown_link_ext = 1
]]

-- vim.cmd [[
-- let g:taskwiki_markup_syntax = 'markdown'
-- ]]

vim.cmd [[
    let g:markdown_folding = 0
]]

vim.cmd [[
    let g:vim_markdown_folding_disabled = 1
]]
