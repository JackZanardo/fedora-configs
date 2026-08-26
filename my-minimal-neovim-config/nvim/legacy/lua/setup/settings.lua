vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.background = "dark"

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.expandtab = false

vim.o.smartindent = true
vim.o.wrap = false

vim.o.nu = true
vim.o.relativenumber = false

vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.scrolloff = 8
vim.o.signcolumn = "yes"
vim.o.cursorline = true

vim.o.termguicolors = true

vim.o.updatetime = 50

vim.api.nvim_set_option_value("clipboard", "unnamedplus", {})

-- Basic clipboard interaction
-- if vim.fn.has('clipboard') == 1 then
--  vim.keymap.set('v', '<leader>y', '"*y')
--  vim.keymap.set('v', '<leader>p', '"*p')
-- end
