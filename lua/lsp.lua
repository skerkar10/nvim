vim.lsp.enable({
    "clangd",
    "gopls",
    "typescript-language-server",
    "tinymist",
    "roslyn-language-server"
})

vim.diagnostic.config({
    virtual_text = false,
    underline = true,
    update_in_insert = true,
    severity_sort = true,
})

vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition)
vim.keymap.set('n', '<leader>n', vim.lsp.buf.rename)
