-- GitSigns integration
local M = {}

M.apply = function(colors)
  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi("GitSignsAdd", { fg = colors.add })
  hi("GitSignsChange", { fg = colors.change })
  hi("GitSignsDelete", { fg = colors.delete })
  hi("GitSignsAddNr", { fg = colors.add })
  hi("GitSignsChangeNr", { fg = colors.change })
  hi("GitSignsDeleteNr", { fg = colors.delete })
  hi("GitSignsAddLn", { fg = colors.add, bg = colors.bg_alt })
  hi("GitSignsChangeLn", { fg = colors.change, bg = colors.bg_alt })
  hi("GitSignsDeleteLn", { fg = colors.delete, bg = colors.bg_alt })
  hi("GitSignsCurrentLineBlame", { fg = colors.fg_dim, italic = true })
end

return M
