local M = {
	"catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = { -- set to setup table
    },
	config = function()
		require("colorizer").setup({
  			filetypes = {
    		"*", -- Highlight all files, but customize some others.
    		cmp_docs = { always_update = true },
  			},
		})
	end
}

return M

