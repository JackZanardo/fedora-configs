local themeing = {}

local function keybinds()
    vim.keymap.set('n', '<leader>ut', "<cmd>TransparentToggle<cr>", { desc = "Toggle transparent background" })
end

function themeing.setup()
    keybinds()
    local transparency = require("transparent")
    -- setup transparency
      transparency.setup({
        -- table: default groups
        groups = {
          "Normal",
          "NormalNC",
          "Comment",
          "Constant",
          "Special",
          "Identifier",
          "Statement",
          "PreProc",
          "Type",
          "Underlined",
          "String",
          "Function",
          "Conditional",
          "Repeat",
          "Operator",
          "Structure",
          "LineNr",
          "NonText",
          "SignColumn",
          "EndOfBuffer",
        },
        -- table: additional groups that should be cleared
        extra_groups = {
          "NormalFloat",
          "NvimTreeNormal",
        },
        -- table: groups you don't want to clear
        exclude_groups = {
          "Todo",
          "CursorLine",
          "CursorLineNr",
          "StatusLine",
          "StatusLineNC",
        },
        -- function: code to be executed after highlight groups are cleared
        -- Also the user event "TransparentClear" will be triggered
        on_clear = function() end,
      })

end

function themeing.enable_transparency()
    require("transparent").toggle(true)
end

return themeing
