-- nvim-cmp integration
local M = {}

M.apply = function(colors)
  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi("CmpItemAbbrDeprecated", { fg = colors.fg_dim, strikethrough = true })
  hi("CmpItemAbbrMatch", { fg = colors.accent, bold = true })
  hi("CmpItemAbbrMatchFuzzy", { fg = colors.accent })
  hi("CmpItemKindText", { fg = colors.fg })
  hi("CmpItemKindMethod", { fg = colors.fg_bright })
  hi("CmpItemKindFunction", { fg = colors.fg_bright })
  hi("CmpItemKindConstructor", { fg = colors.fg_bright })
  hi("CmpItemKindField", { fg = colors.fg })
  hi("CmpItemKindVariable", { fg = colors.fg })
  hi("CmpItemKindClass", { fg = colors.fg })
  hi("CmpItemKindInterface", { fg = colors.fg })
  hi("CmpItemKindModule", { fg = colors.fg_dim })
  hi("CmpItemKindProperty", { fg = colors.fg })
  hi("CmpItemKindUnit", { fg = colors.fg })
  hi("CmpItemKindValue", { fg = colors.string })
  hi("CmpItemKindEnum", { fg = colors.fg })
  hi("CmpItemKindKeyword", { fg = colors.fg_bright })
  hi("CmpItemKindSnippet", { fg = colors.hint })
  hi("CmpItemKindColor", { fg = colors.accent })
  hi("CmpItemKindFile", { fg = colors.fg })
  hi("CmpItemKindReference", { fg = colors.accent })
  hi("CmpItemKindFolder", { fg = colors.accent })
  hi("CmpItemKindEnumMember", { fg = colors.fg })
  hi("CmpItemKindConstant", { fg = colors.fg })
  hi("CmpItemKindStruct", { fg = colors.fg })
  hi("CmpItemKindEvent", { fg = colors.fg })
  hi("CmpItemKindOperator", { fg = colors.fg })
  hi("CmpItemKindTypeParameter", { fg = colors.fg })
  hi("CmpItemMenu", { fg = colors.fg_dim, italic = true })
end

return M
