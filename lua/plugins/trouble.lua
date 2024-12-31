return {
  "folke/trouble.nvim",
  opts = {},
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
    },
  },
}
