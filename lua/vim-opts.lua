--Settings
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.o.number = true
-- vim.opt.guicursor = ""
vim.opt.showmode = false
vim.o.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = true
vim.opt.fixeol = true
-- vim.opt.cursorline = true
vim.cmd("set nohlsearch")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("autocmd FileType * set formatoptions-=r")
vim.cmd("autocmd FileType * setlocal tabstop=4 softtabstop=4 shiftwidth=4")
vim.opt.fillchars:append({ eob = " " })
vim.cmd([[
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=100}
augroup END
]])

--Find and replace keymaps
vim.keymap.set("n", "<leader>s", ":s/") --Replace on line
vim.keymap.set("n", "<leader>S", ":%s/") --Replace in entire file

--Move lines easier
vim.keymap.set("x", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("x", "K", ":m '<-2<CR>gv=gv")

--Sync to system register
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

--Turn off LSP logs by default
-- vim.lsp.set_log_level("off")

vim.keymap.set("i", "<S-CR>", "<CR><Esc>O", {noremap = true, silent=true})

--Quick Fix Lists
vim.keymap.set("n", "<C-n>", function()
    vim.diagnostic.goto_next({float=false})
end)
vim.keymap.set("n", "<C-S-n>", function()
    vim.diagnostic.goto_prev({float=false})
end)

-- Close Split
vim.keymap.set("n", "<leader>wd", "<CMD>close<CR>", {})

-- Alternate files
vim.keymap.set("n", "<C-i>", "<CMD>edit #<CR>", {})

-- Copy contents of file to system clipboard
vim.keymap.set("n", "<leader>e", "<CMD>%y+<CR>", {})

vim.keymap.set("n", "<leader>d", function()
    vim.diagnostic.open_float(nil, {focus=false})
end)

vim.api.nvim_set_hl(0, 'SnippetTabstop', {})
vim.api.nvim_set_hl(0, 'SnippetTabstopActive', {})

vim.deprecate = function() end

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*" },
  callback = function()
    local save_cursor = vim.fn.getpos(".")
    pcall(function()
      vim.cmd [[%s/\s\+$//e]]
    end)
    vim.fn.setpos(".", save_cursor)
  end,
  desc = "Trim trailing whitespaces on save"
})
