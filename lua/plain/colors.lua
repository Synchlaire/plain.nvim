-- Color palettes for Plain.nvim
-- Adapted from vim-colors-plain by andreypopp
-- https://github.com/andreypopp/vim-colors-plain

local M = {}

M.palettes = {
  dark = {
    -- Base colors
    bg = "#000000",           -- s:black
    bg_alt = "#303030",       -- s:subtle_black
    fg = "#CCCCCC",           -- s:lighter_gray (norm)
    fg_dim = "#999999",       -- s:light_gray (norm_subtle)
    fg_bright = "#E5E5E5",    -- s:lightest_gray

    -- Accent colors
    accent = "#B6D6FD",       -- s:light_blue (constant)
    accent_dim = "#008EC4",   -- s:dark_blue

    -- Semantic colors
    string = "#B6D6FD",       -- s:light_blue (constant in vim-colors-plain)
    error = "#E32791",        -- s:light_red
    warn = "#F3E430",         -- s:light_yellow
    info = "#4FB8CC",         -- s:light_cyan
    hint = "#5FD7A7",         -- s:light_green

    -- Git colors
    add = "#5FD7A7",          -- s:light_green
    change = "#F3E430",       -- s:light_yellow
    delete = "#E32791",       -- s:light_red

    -- UI colors
    selection = "#545454",    -- s:lighter_black (visual)
    comment = "#999999",      -- s:light_gray
    border = "#424242",       -- s:light_black
    cursor_line = "#303030",  -- s:subtle_black

    -- Additional accent colors
    purple = "#6855DE",       -- s:light_purple
    cyan = "#4FB8CC",         -- s:light_cyan

    -- Terminal colors
    terminal = {
      black = "#000000",
      red = "#E32791",
      green = "#5FD7A7",
      yellow = "#F3E430",
      blue = "#B6D6FD",
      magenta = "#6855DE",
      cyan = "#4FB8CC",
      white = "#CCCCCC",
      bright_black = "#424242",
      bright_red = "#FF3DB0",
      bright_green = "#7FFFC7",
      bright_yellow = "#FFFF50",
      bright_blue = "#D6F6FF",
      bright_magenta = "#8875FF",
      bright_cyan = "#6FD8EC",
      bright_white = "#E5E5E5",
    },
  },

  light = {
    -- Base colors
    bg = "#F1F1F1",           -- s:white
    bg_alt = "#E5E5E5",       -- s:lightest_gray
    fg = "#424242",           -- s:light_black (norm)
    fg_dim = "#545454",       -- s:lighter_black (norm_subtle)
    fg_bright = "#222222",    -- s:black

    -- Accent colors
    accent = "#008EC4",       -- s:dark_blue (constant)
    accent_dim = "#005f87",   -- darker variant

    -- Semantic colors
    string = "#008EC4",       -- s:dark_blue (constant in vim-colors-plain)
    error = "#C30771",        -- s:dark_red
    warn = "#A89C14",         -- s:dark_yellow
    info = "#20A5BA",         -- s:dark_cyan
    hint = "#10A778",         -- s:dark_green

    -- Git colors
    add = "#10A778",          -- s:dark_green
    change = "#A89C14",       -- s:dark_yellow
    delete = "#C30771",       -- s:dark_red

    -- UI colors
    selection = "#B6D6FD",    -- s:light_blue (visual)
    comment = "#999999",      -- s:light_gray
    border = "#CCCCCC",       -- s:lighter_gray
    cursor_line = "#E5E5E5",  -- s:lightest_gray

    -- Additional accent colors
    purple = "#523C79",       -- s:dark_purple
    cyan = "#20A5BA",         -- s:dark_cyan

    -- Terminal colors
    terminal = {
      black = "#424242",
      red = "#C30771",
      green = "#10A778",
      yellow = "#A89C14",
      blue = "#008EC4",
      magenta = "#523C79",
      cyan = "#20A5BA",
      white = "#F1F1F1",
      bright_black = "#545454",
      bright_red = "#E32791",
      bright_green = "#5FD7A7",
      bright_yellow = "#F3E430",
      bright_blue = "#B6D6FD",
      bright_magenta = "#6855DE",
      bright_cyan = "#4FB8CC",
      bright_white = "#FFFFFF",
    },
  },
}

-- Get palette with optional custom color overrides
M.get_palette = function(variant, custom_colors)
  local palette = vim.tbl_deep_extend(
    "force",
    M.palettes[variant] or M.palettes.dark,
    custom_colors or {}
  )
  return palette
end

return M
