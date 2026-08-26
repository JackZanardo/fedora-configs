local oil = require("oil")


vim.keymap.set('n', '<leader>fo', '<CMD>Oil<CR>', { desc = "Open parent directory" })

vim.keymap.set('n', '<leader>f-', oil.toggle_float, { desc = "Open parent directory in floating window" })
