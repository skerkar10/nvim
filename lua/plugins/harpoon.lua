return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },

  vim.keymap.set("n", "<leader>h", "<cmd>Harpoon<CR>"),

  config = function()
    local harpoon = require "harpoon"
    harpoon:setup()

    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
    vim.keymap.set("n", "<leader>m", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    vim.keymap.set("n", "<LEFT>", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<RIGHT>", function() harpoon:list():select(2) end)
  end
}
