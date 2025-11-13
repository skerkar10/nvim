return {
  "chomosuke/typst-preview.nvim",
  lazy = true,
  cmd = "TypstPreview",
  opts = {},

  config = function()
    require('typst-preview').setup({
      follow_cursor = false
    })
  end
}
