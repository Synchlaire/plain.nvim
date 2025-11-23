-- nvim-tree integration
local M = {}

M.apply = function(colors)
  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi("NvimTreeNormal", { fg = colors.fg, bg = colors.bg })
  hi("NvimTreeNormalNC", { fg = colors.fg, bg = colors.bg })
  hi("NvimTreeRootFolder", { fg = colors.accent, bold = true })
  hi("NvimTreeFolderName", { fg = colors.fg })
  hi("NvimTreeFolderIcon", { fg = colors.accent })
  hi("NvimTreeEmptyFolderName", { fg = colors.fg_dim })
  hi("NvimTreeOpenedFolderName", { fg = colors.fg_bright })
  hi("NvimTreeSymlink", { fg = colors.cyan })
  hi("NvimTreeExecFile", { fg = colors.hint })
  hi("NvimTreeImageFile", { fg = colors.purple })
  hi("NvimTreeSpecialFile", { fg = colors.warn })
  hi("NvimTreeGitDirty", { fg = colors.change })
  hi("NvimTreeGitStaged", { fg = colors.add })
  hi("NvimTreeGitMerge", { fg = colors.warn })
  hi("NvimTreeGitRenamed", { fg = colors.purple })
  hi("NvimTreeGitNew", { fg = colors.add })
  hi("NvimTreeGitDeleted", { fg = colors.delete })
  hi("NvimTreeIndentMarker", { fg = colors.border })
  hi("NvimTreeWinSeparator", { fg = colors.border })
end

return M
