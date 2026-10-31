return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons"
    },
    lazy = false,

    config = function()
        require("neo-tree").setup({
            close_if_last_window = true,
            -- enable_cursor_hijack = true,
            window = {
                width = 33
            },
            filesystem = {
                follow_current_file = {
                    enabled = true,
                    leave_dirs_open = true,
                },
                use_libuv_file_watcher = true,
            },
        })
        vim.keymap.set({"n", "i", "v"}, "<D-e>", function()
            if vim.bo.filetype == "neo-tree" then
                vim.cmd("wincmd p")
            else
                vim.cmd("Neotree filesystem reveal right")
            end
        end, {})
        if vim.fn.argc() == 0 then
            local events = require("neo-tree.events")
            local read_stdin, entered, rendered = false, false, false
            local function open_picker()
                if entered and rendered and not read_stdin then
                    vim.schedule(function() require("fff").find_files() end)
                end
            end
            local handler = { event = events.AFTER_RENDER, id = "fff_on_startup" }
            handler.handler = function()
                events.unsubscribe(handler)
                rendered = true
                open_picker()
            end
            events.subscribe(handler)
            vim.api.nvim_create_autocmd("StdinReadPre", {
                once = true,
                callback = function() read_stdin = true end,
            })
            vim.api.nvim_create_autocmd("VimEnter", {
                once = true,
                callback = function()
                    entered = true
                    open_picker()
                end,
            })
        end

        vim.cmd("Neotree filesystem show right")
    end
}
