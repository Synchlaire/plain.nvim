-- Lualine integration
-- Provides a minimal lualine theme
local M = {}

M.apply = function(colors)
  -- Store the theme for use in lualine setup
  _G.plain_lualine_theme = {
    normal = {
      a = { bg = colors.accent, fg = colors.bg, gui = "bold" },
      b = { bg = colors.bg_alt, fg = colors.fg },
      c = { bg = colors.bg, fg = colors.fg_dim },
    },
    insert = {
      a = { bg = colors.add, fg = colors.bg, gui = "bold" },
      b = { bg = colors.bg_alt, fg = colors.fg },
      c = { bg = colors.bg, fg = colors.fg_dim },
    },
    visual = {
      a = { bg = colors.purple, fg = colors.bg, gui = "bold" },
      b = { bg = colors.bg_alt, fg = colors.fg },
      c = { bg = colors.bg, fg = colors.fg_dim },
    },
    replace = {
      a = { bg = colors.error, fg = colors.bg, gui = "bold" },
      b = { bg = colors.bg_alt, fg = colors.fg },
      c = { bg = colors.bg, fg = colors.fg_dim },
    },
    command = {
      a = { bg = colors.warn, fg = colors.bg, gui = "bold" },
      b = { bg = colors.bg_alt, fg = colors.fg },
      c = { bg = colors.bg, fg = colors.fg_dim },
    },
    inactive = {
      a = { bg = colors.bg_alt, fg = colors.fg_dim },
      b = { bg = colors.bg_alt, fg = colors.fg_dim },
      c = { bg = colors.bg, fg = colors.fg_dim },
    },
  }
end

return M
