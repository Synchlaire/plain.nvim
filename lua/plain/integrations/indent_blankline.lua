-- indent-blankline integration
local M = {}

M.apply = function(colors)
  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- For indent-blankline v2
  hi("IndentBlanklineChar", { fg = colors.border })
  hi("IndentBlanklineContextChar", { fg = colors.fg_dim })
  hi("IndentBlanklineContextStart", { underline = true, sp = colors.fg_dim })
  hi("IndentBlanklineSpaceChar", { fg = colors.border })
  hi("IndentBlanklineSpaceCharBlankline", { fg = colors.border })

  -- For indent-blankline v3 (ibl.nvim)
  hi("IblIndent", { fg = colors.border })
  hi("IblScope", { fg = colors.fg_dim })
  hi("IblWhitespace", { fg = colors.border })
end

return M
