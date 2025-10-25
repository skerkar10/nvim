-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--
--   config = function()
--     require("catppuccin").setup({
--       flavour = "mocha",
--       styles = {
--         conditionals = {}
--       },
--       custom_highlights = function(colors)
--         return {
--           ['@type.builtin'] = { link = "Type" },
--           ['@function.builtin'] = { link = "Function" },
--           ['@keyword.import.c'] = { link = "PreProc" },
--           ['@keyword.import.cpp'] = { link = "PreProc" },
--           ['@constant.builtin'] = { link = "Type" },
--           MatchParen = { fg = colors.peach, bg = "NONE" }
--         }
--       end
--     })
--     vim.cmd.colorscheme("catppuccin-mocha")
--   end
-- }

return {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,

    config = function()
        vim.cmd("let g:gruvbox_material_diagnostic_virtual_text = 'colored'")
        vim.cmd.colorscheme("gruvbox-material")
    end
}
