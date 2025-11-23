-- mason.nvim integration
local M = {}

M.apply = function(colors)
  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi("MasonNormal", { fg = colors.fg, bg = colors.bg })
  hi("MasonHeader", { fg = colors.bg, bg = colors.accent, bold = true })
  hi("MasonHeaderSecondary", { fg = colors.bg, bg = colors.fg_bright, bold = true })
  hi("MasonHighlight", { fg = colors.accent })
  hi("MasonHighlightBlock", { fg = colors.bg, bg = colors.accent })
  hi("MasonHighlightBlockBold", { fg = colors.bg, bg = colors.accent, bold = true })
  hi("MasonHighlightSecondary", { fg = colors.fg_bright })
  hi("MasonHighlightBlockSecondary", { fg = colors.bg, bg = colors.fg_bright })
  hi("MasonHighlightBlockBoldSecondary", { fg = colors.bg, bg = colors.fg_bright, bold = true })
  hi("MasonMuted", { fg = colors.fg_dim })
  hi("MasonMutedBlock", { fg = colors.fg, bg = colors.bg_alt })
  hi("MasonMutedBlockBold", { fg = colors.fg, bg = colors.bg_alt, bold = true })
  hi("MasonError", { fg = colors.error })
  hi("MasonWarning", { fg = colors.warn })
  hi("MasonHeading", { fg = colors.fg_bright, bold = true })
end

return M
