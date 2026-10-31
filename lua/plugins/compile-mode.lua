return {
    "ej-shafran/compile-mode.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    config = function()
        vim.g.compile_mode = {
            default_command = "make -b",
            ask_to_interrupt = true,
            ask_about_save = false,
            recompile_no_fail = true,
            focus_compilation_buffer = true,
            auto_scroll = false,
            use_pseudo_terminal = true,
        }
        vim.keymap.set("n", "<leader>r", "<CMD>below Compile<CR>", {})
    end
}
