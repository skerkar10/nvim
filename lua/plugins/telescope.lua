return {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
  dependencies = {
    'nvim-lua/plenary.nvim',
    "nvim-tree/nvim-web-devicons"
  },

  config = function()
    require("telescope").setup()
    local builtin = require("telescope.builtin")

    local function project_files()
      local ok = pcall(builtin.git_files, {})
      if not ok then
        builtin.find_files({})
      end
    end

    vim.keymap.set("n", "<leader>f", project_files, {})
    vim.keymap.set("n", "<leader>af", builtin.find_files, {})
    vim.keymap.set("n", "<leader>gf", builtin.live_grep, {})
    vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
  end
}

-- return {
--   "ibhagwan/fzf-lua",
--
--   dependencies = {
--     "nvim-tree/nvim-web-devicons"
--   },
--
--   config = function()
--     local function project_files()
--       local ok = pcall(require('fzf-lua').git_files)
--       if not ok then
--         require('fzf-lua').files()
--       end
--     end
--
--     vim.keymap.set("n", "<leader>f", project_files, {})
--     vim.keymap.set("n", "<leader>af", require('fzf-lua').files, {})
--     vim.keymap.set("n", "<leader>gf", require('fzf-lua').live_grep, {})
--   end
-- }
