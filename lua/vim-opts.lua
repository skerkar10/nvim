--Settings
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.o.number = true
vim.opt.guicursor = ""
vim.opt.showmode = true
vim.o.relativenumber = true
vim.opt.signcolumn = "yes"
-- vim.opt.cursorline = true
vim.cmd("set nohlsearch")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("autocmd FileType * set formatoptions-=r")
vim.opt.fillchars:append({ eob = " " })
vim.cmd([[
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=100}
augroup END
]])

--Quick terminal commands
vim.keymap.set("n", "<leader>e", ":wa|:! ")

--Find and replace keymaps
vim.keymap.set("n", "<leader>s", ":s/") --Replace on line
vim.keymap.set("n", "<leader>r", ":%s/") --Replace in entire file

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

vim.keymap.set('n', "-", "<CMD>Explore<CR>", {noremap = true, silent = true})
