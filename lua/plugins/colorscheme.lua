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
	config = function()
    require("rose-pine").setup({
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
