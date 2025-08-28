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
