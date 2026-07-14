return {
    "dmtrKovalenko/fff.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    enabled = true,
    build = function()
        require("fff.download").download_or_build_binary()
    end,
    lazy = false,
    config = function()
        require("fff").setup({
            install = {
                timeout = 1200,
            },
            title = 'Find Files',
            max_results = 100,
            max_threads = 4,
            lazy_sync = true,

            prompt = "➜ ",
            layout = {
                width = 0.75,
                height = 0.85,
                prompt_position = 'bottom',
                preview_position = 'right',
                preview_size = 0.5,
                flex = false,
            },
            preview = {
                enabled = true,
                max_lines = 100,
                max_size = 10 * 1024 * 1024, -- 1MB
                chunk_size = 8192,
                binary_file_threshold = 1024,
                line_numbers = false,
                wrap_lines = false,
                show_file_info = true,
                history = {
                    enabled = true,
                    db_path = vim.fn.stdpath('data') .. '/fff_queries',
                    min_combo_count = 3,
                    combo_boost_score_multiplier = 100,
                },
            },
            keymaps = {
                close = {'<Esc>'},
                select = '<CR>',
                move_up = { '<D-k>', '<F14>' },
                move_down = { '<D-j>', '<F13>' },
                preview_scroll_up = '<C-u>',
                preview_scroll_down = '<C-d>',
            },
            git = {
                status_text_color = true,
            },
            hl = {
                border = 'FloatBorder',
                normal = 'Normal',
                cursor = 'CursorLine',
                matched = 'IncSearch',
                title = 'Title',
                prompt = 'Question',
                active_file = 'Visual',
                frecency = 'Number',
                debug = 'Comment',
                git_staged = 'FFFGitStaged',
                git_modified = 'FFFGitModified',
                git_deleted = 'FFFGitDeleted',
                git_renamed = 'FFFGitRenamed',
                git_untracked = 'FFFGitUntracked',
                git_ignored = 'FFFGitIgnored',
            },
            frecency = {
                enabled = true,
                db_path = vim.fn.stdpath('cache') .. '/fff_nvim',
            },
            history = {
                enabled = true,
                db_path = vim.fn.stdpath('data') .. '/fff_queries',
                min_combo_count = 3,
                combo_boost_score_multiplier = 100,
            },
            debug = {
                show_scores = false,
            },
        })
    end,
    keys = {
        {
            "<leader>f",
            function()
                require("fff").find_files()
            end,
            desc = "Open file picker",
        },
        {
            "<leader>gf",
            function() require('fff').live_grep({
                grep = {
                  modes = { 'fuzzy', 'plain' }
                }
            }) end,
            desc = 'Open live grep',
        },
    },
}
