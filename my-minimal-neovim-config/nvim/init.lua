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

vim.pack.add({
    { src = 'https://github.com/martineausimon/nvim-xresources' },
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    {
        src = 'https://github.com/nvim-treesitter/nvim-treesitter',
        version = 'main',
    },
    { src = 'https://github.com/nvim-lua/plenary.nvim' },
    { src = 'https://github.com/nvim-telescope/telescope.nvim' },
    { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
    { src = 'https://github.com/nvim-lualine/lualine.nvim' },
    { src = 'https://github.com/prichrd/netrw.nvim' },
    {
        src = 'https://github.com/Saghen/blink.cmp',
        version = vim.version.range('1.*')
    },
    { src = 'https://github.com/MunifTanjim/nui.nvim' },
    { src = 'https://github.com/rcarriga/nvim-notify' },
    { src = 'https://github.com/folke/noice.nvim' },
    { src = 'https://github.com/lewis6991/gitsigns.nvim' },
    { src = 'https://github.com/lukas-reineke/indent-blankline.nvim' },
})

require('noice').setup()
require('nvim-xresources').setup({})

vim.cmd('colorscheme xresources')

vim.lsp.enable('lua_ls')
vim.lsp.enable('bashls')
vim.lsp.enable('clangd')
vim.lsp.enable('rust_analyzer')

require('nvim-treesitter').install({
    "c",
    "lua",
    "javascript",
    "cpp",
    "cmake",
    "latex",
    "regex",
    "bash",
    "vim",
    "markdown",
    "markdown_inline",
    "c_sharp",
    "css",
    "html",
    "sql",
    "rust"
})

require('blink.cmp').setup()
-- telescope settings
local actions = require("telescope.actions")
require("telescope").setup{
  defaults = {
    mappings = {
	  n = {
        ["<C-c>"] = actions.close,
		["<esc>"] = false
      },
    },
  }
}

require('lualine').setup()
require('netrw').setup()
require('gitsigns')
require('ibl').setup()
-- keybinds

-- telescope keybinds
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})

-- Netrw keybinds
-- Open in current working directory
vim.keymap.set('n', '<leader>da', ':Explore<CR>')
-- Open in directory of current file
vim.keymap.set('n', '<leader>dd', ':Explore %:p:h<CR>')
-- Open in tree view
vim.keymap.set('n', '<leader>dt', ':Ntree<CR>')

-- Working directory keybinds
-- Change working directory to current file
vim.keymap.set('n', '<leader>wc', ':cd %:h<CR>')
-- Print working directory
vim.keymap.set('n', '<leader>wp', ':pwd<CR>')

vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
