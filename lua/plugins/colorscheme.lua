-- One to rule them all

-- Gruber-Darker
-- return {
--   "skerkar10/gruber-darker.nvim",
--
--   config = function()
--     vim.cmd.colorscheme("gruber-darker")
--   end
-- }

-- Sonokai
-- return {
--   "sainnhe/sonokai",
--
--   config = function()
--     vim.cmd("let g:sonokai_diagnostic_virtual_text = 'colored'")
--     vim.cmd("let g:sonokai_style = 'andromeda'")
--     vim.cmd.colorscheme("sonokai")
--   end
-- }

--Rose-Pine Black

return {
  "rose-pine/neovim",
  name = "rose-pine",
  priority = 1000,
  lazy = false,
  config = function()
    require("rose-pine").setup({
      --Ensures that we don't have undercurls
      highlight_groups = {
        DiagnosticUnderlineError = { underline = true, undercurl = false },
        DiagnosticUnderlineHint = { underline = true, undercurl = false },
        DiagnosticUnderlineInfo = { underline = true, undercurl = false },
        DiagnosticUnderlineWarn = { underline = true, undercurl = false },
        SpellBad = { underline = true, undercurl = false },
        SpellCap = { underline = true, undercurl = false },
        SpellLocal = { underline = true, undercurl = false },
        SpellRare = { underline = true, undercurl = false },
      },

      styles = {
        bold = false,
        italic = false,
        transparency = false
      },

      variant = "moon",
      dark_variant = "moon",

      palette = {
        moon = {
          base = "#000000",
        }
      }

    })
    vim.cmd("colorscheme rose-pine")
  end
}
