return {
    "junegunn/vim-easy-align",

    config = function()
        vim.keymap.set('v', 'ga=', ":EasyAlign =<CR>", { noremap = true })
        vim.keymap.set('v', 'ga:', ":EasyAlign :<CR>", { noremap = true })
        vim.keymap.set('v', 'ga,', ":EasyAlign ,<CR>", { noremap = true })
    end
}
