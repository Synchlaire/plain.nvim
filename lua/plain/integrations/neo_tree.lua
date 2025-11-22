-- neo-tree integration
local M = {}

M.apply = function(colors)
  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi("NeoTreeNormal", { fg = colors.fg, bg = colors.bg })
  hi("NeoTreeNormalNC", { fg = colors.fg, bg = colors.bg })
  hi("NeoTreeRootName", { fg = colors.accent, bold = true })
  hi("NeoTreeFileName", { fg = colors.fg })
  hi("NeoTreeFileIcon", { fg = colors.fg })
  hi("NeoTreeDirectoryIcon", { fg = colors.accent })
  hi("NeoTreeDirectoryName", { fg = colors.fg })
  hi("NeoTreeSymbolicLinkTarget", { fg = colors.cyan })
  hi("NeoTreeGitAdded", { fg = colors.add })
  hi("NeoTreeGitDeleted", { fg = colors.delete })
  hi("NeoTreeGitModified", { fg = colors.change })
  hi("NeoTreeGitConflict", { fg = colors.error })
  hi("NeoTreeGitUntracked", { fg = colors.fg_dim })
  hi("NeoTreeIndentMarker", { fg = colors.border })
  hi("NeoTreeExpander", { fg = colors.fg_dim })
  hi("NeoTreeDimText", { fg = colors.fg_dim })
  hi("NeoTreeFilterTerm", { fg = colors.accent, bold = true })
  hi("NeoTreeFloatBorder", { fg = colors.border })
  hi("NeoTreeFloatTitle", { fg = colors.accent, bold = true })
  hi("NeoTreeTitleBar", { fg = colors.bg, bg = colors.accent })
  hi("NeoTreeWinSeparator", { fg = colors.border })
end

return M
