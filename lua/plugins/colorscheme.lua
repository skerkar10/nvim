-- return {
--     'sainnhe/gruvbox-material',
--     lazy = false,
--     priority = 1000,
--     config = function()
--         vim.g.gruvbox_material_background = "hard"
--         vim.g.gruvbox_material_foreground = "mix"
--         vim.g.gruvbox_material_float_style = "dim"
--         vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
--         vim.g.gruvbox_material_transparent_background = 1
--
--
--         vim.cmd.colorscheme('gruvbox-material')
--     end
-- }

-- return {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     lazy = false,
--     priority = 1000,
--
--     config = function()
--         require("catppuccin").setup({
--             flavour = "mocha",
--             -- color_overrides = {
--             --     all = {
--             --         base = "#191C26"
--             --     }
--             -- },
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
            transparent = true,
            styles = {
                functions = {},
            },

            on_highlights = function(highlights, colors)
                highlights.MatchParen = {
                    fg = "#ff9e64", -- Night
                    -- fg = "#ff966c", -- Moon
                    bold = false
                }
                -- highlights.Visual.bold = true

                -- Make built-in funtions look like defined ones
                highlights["@function.builtin"] = {
                    fg = "#7aa2f7" -- Night
                    -- fg = "#82aaff" -- Moon
                }
                -- Fix difference in type coloring
                highlights["@type"] = {
                    fg = "#27a1b9" -- Night
                    -- fg = "#589ed7" -- Moon
                }

                highlights["@keyword"] = {
                   fg = "#bb9af7" -- Night
                }
            end
        })

        vim.cmd.colorscheme("tokyonight-night")
    end
}
