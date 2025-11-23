-- WhichKey integration
local M = {}

M.apply = function(colors)
  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi("WhichKey", { fg = colors.accent })
  hi("WhichKeyGroup", { fg = colors.fg_bright })
  hi("WhichKeyDesc", { fg = colors.fg })
  hi("WhichKeySeperator", { fg = colors.fg_dim })
  hi("WhichKeySeparator", { fg = colors.fg_dim })
  hi("WhichKeyFloat", { bg = colors.bg_alt })
  hi("WhichKeyValue", { fg = colors.fg_dim })
  hi("WhichKeyBorder", { fg = colors.border })
end

return M
