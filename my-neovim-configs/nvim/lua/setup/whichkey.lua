local wk = require("which-key")
wk.add({
  { "<leader>f", group = "file" },
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find file", mode = "n" },
  { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find buffers", mode = "n" },
  { "<leader>fs", desc = "Search files", mode = "n" },
  { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags", mode = "n" },
  { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Git files", mode = "n" }
})
wk.add({
	{ "<leader>d", group = "explorer" },
})
wk.add({
	{ "g", group = "goto" },
	{ "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Go to definition", mode = "n" },
	{ "gD", '<cmd>lua vim.lsp.buf.declaration()<cr>', desc = "Go to declaration", mode = "n" },
	{ "gi", '<cmd>lua vim.lsp.buf.implementation()<cr>', desc = "Go to implementation", mode = "n" },
	{ "go", '<cmd>lua vim.lsp.buf.type_definition()<cr>', desc = "Go to type definition", mode = "n" },
	{ "gr", '<cmd>lua vim.lsp.buf.references()<cr>', desc = "References", mode = "n" },
	{ "gs", '<cmd>lua vim.lsp.buf.signature_help()<cr>', desc = "Signature help", mode = "n" }
})
wk.add({
	{ "<leader>h", group = "git signs" },
	{ "<leader>hs", "<cmd>Gitsigns stage_hunk<cr>", desc = "Stage hunk", mode = "n" },
	{ "<leader>hr", "<cmd>Gitsigns reset_hunk<cr>", desc = "Reset hunk", mode = "n" },
	{
		"<leader>hs",
		"<cmd>Gitsigns stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })<cr>",
		desc = "Stage selected hunk",
		mode = "v"
	},
	{
		"<leader>hr",
		"<cmd>Gitsigns reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })",
		desc = "Reset selected hunk",
		mode = "v"
	},
	{ "<leader>hS", "<cmd>Gitsigns stage_buffer<cr>", desc = "Stage buffer", mode = "n" },
	{ "<leader>hR", "<cmd>Gitsigns reset_buffer<cr>", desc = "Reset buffer", mode = "n" },
	{ "<leader>hp", "<cmd>Gitsigns preview_hunk<cr>", desc = "Preview hunk", mode = "n" },
	{ "<leader>hi", "<cmd>Gitsigns preview_hunk_inline<cr>", desc = "Preview hunk inline", mode = "n" },
	{ "<leader>hb", "<cmd>Gitsigns blame_line({ full = true })<cr>", desc = "Blame line", mode = "n" },
	{ "<leader>hd", "<cmd>Gitsigns diffthis<cr>", desc = "Diff this", mode = "n" },
	{ "<leader>hD", "<cmd>Gitsigns diffthis ~<cr>", desc = "Not sure??", mode = "n" },
	{ "<leader>hQ", "<cmd>Gitsigns setqflist all<cr>", desc = "Set qf list all", mode = "n" },
	{ "<leader>hq", "<cmd>Gitsigns setqflist<cr>", desc = "Set qf list", mode = "n" },
})
wk.add({
	{ "<leader>t", group = "gitsigns toggle" },
	{ "<leader>tb", "<cmd>Gitsigns toggle_current_line_blame<cr>", desc = "Toggle current line blame", mode = "n" },
	{ "<leader>tw", "<cmd>Gitsigns toggle_word_diff<cr>", desc = "Toggel word diff", mode = "n" },
})
wk.add({
	{ "i", group = "gitsigns" },
	{ "ih", "<cmd>Gitsigns select_hunk<cr>", desc = "Select hunk", mode = { 'o', 'x' }},
})
