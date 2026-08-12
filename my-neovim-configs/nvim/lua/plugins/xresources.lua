local M = {
  'martineausimon/nvim-xresources',
  lazy = false,
  priority = 1000,
  config = function()
    require('nvim-xresources').setup({
    --  Optional config:
    --  xresources_path = os.getenv("HOME") .. '/.Xresources',
    --  auto_light = {
    --    enable = true,
    --    value = 0.5,
    --    exclude = {},
    --  },
    --  contrast = 1,
    --  bold = true,
    --  palette_overrides = {},
    --  fallback_theme = "nord"
    })
    --local C = require('nvim-xresources.colors')
    --require('nvim-xresources').custom_highlight_groups({ })

    --vim.cmd('colorscheme xresources')
  end
}

return M
