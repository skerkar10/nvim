-- return {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     lazy = false;
--     priority = 1000,
--
--     config = function()
--         require("catppuccin").setup({
--             flavour = "mocha",
--             -- no_italic = true,
--             color_overrides = {
--                 mocha = {
--                     base = "#141415",
--                     mantle = "#1c1c24"
--                 }
--             },
--             styles = {
--                 conditionals = {}
--             },
--             lsp_styles = {
--                 virtual_text = {
--                     errors = { "bold" },
--                     warnings = { "bold" }
--                 }
--             },
--             custom_highlights = function(colors)
--                 return {
--                     ['@type.builtin'] = { link = "Type" },
--                     ['@function.builtin'] = { link = "Function" },
--                     ['@keyword.import.c'] = { link = "PreProc" },
--                     ['@keyword.import.cpp'] = { link = "PreProc" },
--                     ['@constant.builtin'] = { link = "Type" },
--                     MatchParen = { fg = colors.peach, bg = "NONE", style = {} },
--                     Visual = { style = {} }
--                 }
--             end
--         })
--         vim.cmd.colorscheme("catppuccin-mocha")
--         vim.cmd(":hi statusline guibg=NONE")
--     end
-- }

return {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,

    config = function()
        require("nightfox").setup({
            groups = {
                duskfox = {
                    MatchParen = { style = "" },
                    ["@function.builtin"] = { link = "Function" },
                    ["@keyword"] = { link = "@keyword.return" },
                    ["@keyword.function"] = { link = "@keyword.return" },
                    ["@keyword.operator"] = { link = "@keyword.import" },
                    ["@keyword.storage"] = { link = "@keyword.return" },
                    ["@keyword.repeat"] = { link = "@keyword.return" },
                    ["@keyword.exception"] = { link = "@keyword.return" },
                    ["@keyword.conditional"] = { link = "@keyword.return" },
                    ["@keyword.conditional.ternary"] = { link = "@keyword.return" },
                    ["@type.builtin"] = { link = "@type" },
                    ["@string.escape"] = { link = "@keyword.import" },
                    ["@markup.strong"] = { fg = "#e0def4", style = "bold" },
                    Title = { fg = "#f6c177", style = "bold" }
                },
            },
        })

        vim.cmd.colorscheme("duskfox")
    end
}
