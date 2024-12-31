return {
  "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
  lazy = false,
  priority = 1000,
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
