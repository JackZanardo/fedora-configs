local packages = {}

function packages.setup()
vim.pack.add({
    { src = 'https://github.com/RRethy/base16-nvim' },
    { src = 'https://github.com/xiyaowong/transparent.nvim' },
    { src = 'https://github.com/folke/which-key.nvim' },
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
    { src = 'https://github.com/mason-org/mason.nvim' },
    { src = 'https://github.com/stevearc/conform.nvim' },
})
end

return packages
