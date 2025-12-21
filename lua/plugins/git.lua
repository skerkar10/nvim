return {
    {
        "lewis6991/gitsigns.nvim",

        config = function ()
            require("gitsigns").setup()
            vim.keymap.set("n", "<leader>lb", "<CMD>Gitsigns toggle_current_line_blame<CR>", {})
            vim.keymap.set("n", "<leader>p", "<CMD>Gitsigns preview_hunk<CR>", {})
            vim.keymap.set("n", "<C-;>", "<CMD>Gitsigns next_hunk<CR>", {})
            vim.keymap.set("n", "<C-S-;>", "<CMD>Gitsigns prev_hunk<CR>", {})
            vim.keymap.set("n", "<leader>u", "<CMD>Gitsigns reset_hunk<CR>", {})
        end
    }
}
