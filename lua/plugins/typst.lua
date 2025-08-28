return {
  "chomosuke/typst-preview.nvim",
  lazy = false,
  opts = {},

  config = function()
    require('typst-preview').setup({
      follow_cursor = false
    })
    vim.keymap.set("n", "<leader>v", "<CMD>TypstPreview<CR>")
  end
}
