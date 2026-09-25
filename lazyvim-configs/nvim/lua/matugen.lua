 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#0c2132',
    base01 = '#133853',
    base02 = '#11324b',
    base03 = '#616b71',
    base04 = '#afb3b6',
    base05 = '#f2f2f3',
    base06 = '#f2f2f3',
    base07 = '#f2f2f3',
    base08 = '#fd4663',
    base09 = '#905ad8',
    base0A = '#5a62d8',
    base0B = '#67afe4',
    base0C = '#b996e9',
    base0D = '#93c6ec',
    base0E = '#969be9',
    base0F = '#bec1f4',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#f2f2f3',          bg = '#0c2132' })
  hi('TelescopeBorder',         { fg = '#616b71',             bg = '#0c2132' })
  hi('TelescopePromptNormal',   { fg = '#f2f2f3',          bg = '#0c2132' })
  hi('TelescopePromptBorder',   { fg = '#616b71',             bg = '#0c2132' })
  hi('TelescopePromptPrefix',   { fg = '#67afe4',             bg = '#0c2132' })
  hi('TelescopePromptCounter',  { fg = '#afb3b6',  bg = '#0c2132' })
  hi('TelescopePromptTitle',    { fg = '#0c2132',             bg = '#67afe4' })
  hi('TelescopePreviewTitle',   { fg = '#0c2132',             bg = '#5a62d8' })
  hi('TelescopeResultsTitle',   { fg = '#0c2132',             bg = '#905ad8' })
  hi('TelescopeSelection',      { fg = '#f2f2f3',          bg = '#11324b' })
  hi('TelescopeSelectionCaret', { fg = '#67afe4',             bg = '#11324b' })
  hi('TelescopeMatching',       { fg = '#67afe4',             bold = true })
end

-- Register a signal handler for SIGUSR1 (matugen updates).
-- The handler re-requires this module, which re-runs the code below, so the
-- previous handle is stopped first; otherwise handlers double on every signal.
if _G.__matugen_signal then
  _G.__matugen_signal:stop()
  _G.__matugen_signal:close()
end

local signal = vim.uv.new_signal()
_G.__matugen_signal = signal
signal:start(
  'sigusr1',
  vim.schedule_wrap(function()
    package.loaded['matugen'] = nil
    require('matugen').setup()
  end)
)

return M
