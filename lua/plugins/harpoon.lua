return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },

  config = function()
    local harpoon = require "harpoon"
    harpoon:setup()

    vim.keymap.set("n", "<leader>h", function() harpoon:list():add() end)
    vim.keymap.set("n", "<leader>m", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    vim.keymap.set("n", "<D-i>", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<D-o>", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<D-p>", function() harpoon:list():select(3) end)
  end
}
