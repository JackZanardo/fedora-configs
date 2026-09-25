local options = {}

function options.setup()
vim.o.number = true
vim.o.relativenumber = true

vim.o.undofile = true

vim.o.splitbelow = true
vim.o.splitright = true

vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 0 
vim.o.smarttab = true 
vim.o.wrap = false

vim.o.termguicolors = true

vim.o.updatetime = 50

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.diagnostic.config({ virtual_text = true })

vim.api.nvim_set_option_value("clipboard", "unnamedplus", {})
end


return options
