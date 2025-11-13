--Settings
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.o.number = true
-- vim.opt.guicursor = ""
-- vim.cmd("set guicursor=n-v-c-i:block")
vim.opt.showmode = true
vim.o.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
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
vim.keymap.set("n", "<D-n>", "<CMD>cnext<CR>", {noremap = true})
vim.keymap.set("n", "<D-S-n>", "<CMD>cprev<CR>", {noremap = true})

-- Alternate files
vim.keymap.set("n", "<C-i>", "<CMD>edit #<CR>", {})

-- Copy contents of file to system clipboard
vim.keymap.set("n", "<leader>e", "<CMD>%y+<CR>", {})

-- Quick command
vim.keymap.set("n", "<leader>t", "<CMD>wa<CR>:! ", {})

-- Run previous build command
vim.keymap.set("n", "<leader>r", "<CMD>wa<CR><CMD>! !<CR>")

vim.api.nvim_set_hl(0, 'SnippetTabstop', {})
vim.api.nvim_set_hl(0, 'SnippetTabstopActive', {})
