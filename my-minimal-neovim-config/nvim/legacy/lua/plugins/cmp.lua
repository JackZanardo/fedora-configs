local M = {
    'hrsh7th/nvim-cmp',
    keys = { ':', '/', '?' },
    event = { 'InsertEnter', 'CmdLineEnter' },
    dependencies = {
      "hrsh7th/cmp-cmdline",
      "dmitmel/cmp-cmdline-history",
      "hrsh7th/cmp-buffer"
    }
}

return M
