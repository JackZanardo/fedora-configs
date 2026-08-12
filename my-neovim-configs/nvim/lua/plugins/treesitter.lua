local M = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
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
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}

return M
