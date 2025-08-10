-- return {
--   "rose-pine/neovim",
--   name = "rose-pine",
--   lazy = false,
--   priority = 1000,
--
--   config = function()
--     require("rose-pine").setup({
--       variant = "moon",
--       palette = {
--         moon = {
--           base = "#000000"
--         }
--       }
--
--     })
--     vim.cmd.colorscheme('rose-pine-moon')
--   end
-- }

return {
  "wtfox/jellybeans.nvim",

  config = function()
    local Util = require("jellybeans.util")
    require("jellybeans").setup({
      on_colors = function(c)
        c.background = "#000000"
      end,
      on_highlights = function(hl, c)
        hl.Special = { fg = Util.lighten(c.goldenrod, 0.9) }
        hl.Type = { fg = Util.blend_bg(c.morning_glory, 0.8) }
      end
    })
    vim.cmd.colorscheme("jellybeans")
  end
}
