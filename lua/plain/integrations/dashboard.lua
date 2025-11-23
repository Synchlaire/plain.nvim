-- Dashboard integration (dashboard-nvim, alpha-nvim)
local M = {}

M.apply = function(colors)
  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- dashboard-nvim
  hi("DashboardShortCut", { fg = colors.accent })
  hi("DashboardHeader", { fg = colors.accent })
  hi("DashboardCenter", { fg = colors.fg })
  hi("DashboardFooter", { fg = colors.fg_dim, italic = true })
  hi("DashboardKey", { fg = colors.accent })
  hi("DashboardDesc", { fg = colors.fg })
  hi("DashboardIcon", { fg = colors.accent })

  -- alpha-nvim
  hi("AlphaShortcut", { fg = colors.accent })
  hi("AlphaHeader", { fg = colors.accent })
  hi("AlphaHeaderLabel", { fg = colors.accent })
  hi("AlphaFooter", { fg = colors.fg_dim, italic = true })
  hi("AlphaButtons", { fg = colors.fg })
end

return M
