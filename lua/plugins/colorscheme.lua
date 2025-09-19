-- return {
--   "wtfox/jellybeans.nvim",
--
--   config = function()
--     local Util = require("jellybeans.util")
--     require("jellybeans").setup({
--       on_colors = function(c)
--         c.background = "#000000"
--       end,
--       on_highlights = function(hl, c)
--         hl.Special = { fg = Util.lighten(c.goldenrod, 0.9) }
--         hl.Type = { fg = Util.blend_bg(c.morning_glory, 0.8) }
--       end
--     })
--     vim.cmd.colorscheme("jellybeans")
--   end
-- }

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,

  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      styles = {
        conditionals = {}
      },
      custom_highlights = function(colors)
        return {
          ['@type.builtin'] = { link = "Type" },
          ['@function.builtin'] = { link = "Function" },
          ['@keyword.import.c'] = { link = "PreProc" },
          ['@keyword.import.cpp'] = { link = "PreProc" },
          -- Macro = { fg = colors.blue },
          ['@constant.builtin'] = { link = "Type" },
          MatchParen = { fg = colors.peach, bg = "NONE" }
        }
      end
    })
    vim.cmd.colorscheme("catppuccin-mocha")
  end
}
