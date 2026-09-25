-- Declare a global function to retrieve the current directory
function _G.get_oil_winbar()
  local bufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid)
  local dir = require("oil").get_current_dir(bufnr)
  if dir then
    return vim.fn.fnamemodify(dir, ":~")
  else
    -- If there is no current directory (e.g. over ssh), just show the buffer name
    return vim.api.nvim_buf_get_name(0)
  end
end

return {
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    -- dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
    config = function()
      local showDetailedView = false
      require("oil").setup {
        default_file_explorer = true,
        win_options = {
          winbar = "%!v:lua.get_oil_winbar()",
        },
        keymaps = {
          ["gd"] = {
            desc = "Toggle file detailed view",
            callback = function()
              showDetailedView = not showDetailedView
              if showDetailedView then
                require("oil").set_columns { "icon", "permissions", "size", "mtime" }
              else
                require("oil").set_columns { "icon" }
              end
            end,
          },
        },
        view_options = {
          show_hidden = true,
        },
      }
      vim.keymap.set("n", "<leader>fo", "<cmd>Oil<cr>", { desc = "Open oil in parent directory" })
      local cwd = vim.fn.getcwd()
      vim.keymap.set(
        "n",
        "<leader>fO",
        "<cmd>Oil " .. cwd .. "<cr>",
        { desc = "Open oil in current working directory" }
      )
    end,
  },
}
