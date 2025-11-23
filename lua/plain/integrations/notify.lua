-- nvim-notify integration
local M = {}

M.apply = function(colors)
  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi("NotifyERRORBorder", { fg = colors.error })
  hi("NotifyWARNBorder", { fg = colors.warn })
  hi("NotifyINFOBorder", { fg = colors.info })
  hi("NotifyDEBUGBorder", { fg = colors.hint })
  hi("NotifyTRACEBorder", { fg = colors.purple })
  hi("NotifyERRORIcon", { fg = colors.error })
  hi("NotifyWARNIcon", { fg = colors.warn })
  hi("NotifyINFOIcon", { fg = colors.info })
  hi("NotifyDEBUGIcon", { fg = colors.hint })
  hi("NotifyTRACEIcon", { fg = colors.purple })
  hi("NotifyERRORTitle", { fg = colors.error })
  hi("NotifyWARNTitle", { fg = colors.warn })
  hi("NotifyINFOTitle", { fg = colors.info })
  hi("NotifyDEBUGTitle", { fg = colors.hint })
  hi("NotifyTRACETitle", { fg = colors.purple })
  hi("NotifyERRORBody", { fg = colors.fg, bg = colors.bg })
  hi("NotifyWARNBody", { fg = colors.fg, bg = colors.bg })
  hi("NotifyINFOBody", { fg = colors.fg, bg = colors.bg })
  hi("NotifyDEBUGBody", { fg = colors.fg, bg = colors.bg })
  hi("NotifyTRACEBody", { fg = colors.fg, bg = colors.bg })
end

return M
