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
return {
  "sainnhe/sonokai",

  config = function()
    vim.cmd("let g:sonokai_diagnostic_virtual_text = 'colored'")
    vim.cmd("let g:sonokai_style = 'andromeda'")
    vim.cmd.colorscheme("sonokai")
  end
}
