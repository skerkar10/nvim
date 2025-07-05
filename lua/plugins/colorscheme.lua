return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,

  config = function()
    require("tokyonight").setup({
      style = "moon",
      styles = {
        functions = {},
        comments = { italic = true }
      },

      on_highlights = function(highlights)
        highlights.MatchParen = {
          -- fg = "#ff9e64",
          fg = "#ff966c",
          bold = false
        }

        -- Make built-in funtions look like defined ones
        highlights["@function.builtin"] = {
          -- fg = "#7aa2f7"
          fg = "#82aaff"
        }
        -- Fix difference in type coloring
        highlights["@type"] = {
          -- fg = "#27a1b9"
          fg = "#589ed7"
        }
      end
    })

    vim.cmd.colorscheme("tokyonight-moon")
  end
}
