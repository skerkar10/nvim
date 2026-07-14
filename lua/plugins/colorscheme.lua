-- return {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     lazy = false;
--     priority = 1000,
--
--     config = function()
--         require("catppuccin").setup({
--             flavour = "mocha",
--             color_overrides = {
--                 all = {
--                     base = "#191C26"
--                 }
--             },
--             default_integrations = false,
--             styles = {
--                 -- conditionals = { "bold" },
--                 conditionals = {},
--                 -- keywords = { "bold" },
--                 -- loops = { "bold" },
--             },
--             lsp_styles = {
--                 virtual_text = {
--                     errors = { "bold" },
--                     warnings = { "bold" }
--                 }
--             },
--             integrations = {
--                 blink_cmp = true,
--                 telescope = true,
--                 gitsigns = true,
--             },
--             custom_highlights = function(colors)
--                 return {
--                     ['@type.builtin'] = { link = "Type" },
--                     ['@function.builtin'] = { link = "Function" },
--                     ['@keyword.import.c'] = { link = "PreProc" },
--                     ['@keyword.import.cpp'] = { link = "PreProc" },
--                     ['@constant.builtin'] = { link = "Type" },
--                     MatchParen = { fg = colors.peach, bg = "NONE", style = {} },
--                     Visual = { style = {} },
--                     DiagnosticUnnecessary = {}
--                 }
--             end
--         })
--         vim.cmd.colorscheme("catppuccin-mocha")
--     end
-- }


return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,

    config = function()
        require("tokyonight").setup({
            style = "night",
            styles = {
                functions = {},
            },

            on_highlights = function(highlights, colors)
                highlights.MatchParen = {
                    fg = "#ff9e64",
                    bold = false
                }
                highlights.Visual.bold = true

                -- Make built-in funtions look like defined ones
                highlights["@function.builtin"] = {
                    fg = "#7aa2f7"
                }
                -- Fix difference in type coloring
                highlights["@type"] = {
                    fg = "#27a1b9"
                }

                highlights["@keyword"] = {
                    fg = "#bb9af7"
                }
            end
        })

        vim.cmd.colorscheme("tokyonight-night")
    end
}
