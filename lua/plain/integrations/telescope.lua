-- Telescope integration
local M = {}

M.apply = function(colors)
  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi("TelescopeNormal", { fg = colors.fg, bg = colors.bg })
  hi("TelescopeBorder", { fg = colors.border, bg = colors.bg })
  hi("TelescopePromptNormal", { fg = colors.fg, bg = colors.bg_alt })
  hi("TelescopePromptBorder", { fg = colors.border, bg = colors.bg_alt })
  hi("TelescopePromptTitle", { fg = colors.accent, bg = colors.bg_alt, bold = true })
  hi("TelescopePromptPrefix", { fg = colors.accent })
  hi("TelescopePreviewTitle", { fg = colors.accent, bold = true })
  hi("TelescopeResultsTitle", { fg = colors.accent, bold = true })
  hi("TelescopeSelection", { bg = colors.selection })
  hi("TelescopeSelectionCaret", { fg = colors.accent, bg = colors.selection })
  hi("TelescopeMultiSelection", { fg = colors.purple, bg = colors.selection })
  hi("TelescopeMatching", { fg = colors.accent, bold = true })
end

return M
