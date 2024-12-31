return {
  {
    "lewis6991/gitsigns.nvim",

    config = function ()
      require("gitsigns").setup()
      vim.keymap.set("n", "<leader>lb", "<CMD>Gitsigns toggle_current_line_blame<CR>", {})
    end
  }
}
