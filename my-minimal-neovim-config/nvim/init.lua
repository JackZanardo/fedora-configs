local config_dir = vim.fn.stdpath('config')
package.path = config_dir .. '/?.lua;' .. package.path

require('options').setup()

require('packages').setup()

require('themeing').setup()

require('noice').setup()
require('mason').setup()

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

-- Hacky stuff to get matugen colors and transparency working nicely
local ok, matugen = pcall(require, 'matugen')
if ok then matugen.setup() end

-- require("themeing").enable_transparency()
