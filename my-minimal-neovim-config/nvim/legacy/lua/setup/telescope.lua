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
