return {
    "saghen/blink.cmp",
    version = '1.*',

    opts = {
        completion = {
            menu = {
                scrollbar = false,
                draw = {
                    columns = {
                        {"label", "label_description", gap = 0 }
                    }
                }
            },
            accept = {
                auto_brackets = {
                    enabled = false
                }
            },
            list = {
                max_items = 6,
                selection = {
                    auto_insert = false
                },
            },
        },
        keymap = {
            preset = "default",

            ["<D-k>"] = { 'select_prev', 'fallback' },
            ["<D-j>"] = { 'select_next', 'fallback' },
            ["<TAB>"] = { 'accept', 'fallback' },
            ["<C-k>"] = { 'snippet_backward', 'fallback' },
            ["<C-j>"] = { 'snippet_forward', 'fallback' },
        }
    }
}
