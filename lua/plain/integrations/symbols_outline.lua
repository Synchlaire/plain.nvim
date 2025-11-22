-- symbols-outline.nvim integration
local M = {}

M.apply = function(colors)
  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi("SymbolsOutlineConnector", { fg = colors.border })
  hi("FocusedSymbol", { bg = colors.selection })
end

return M
