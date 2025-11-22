-- Plain.nvim - A minimalist, distraction-free colorscheme for Neovim
-- Inspired by vim-colors-plain by andreypopp
-- https://github.com/andreypopp/vim-colors-plain

local M = {}

-- Default configuration
M.config = {
  -- Variant: "auto", "dark", or "light"
  variant = "auto",

  -- Enable/disable specific integrations
  integrations = {
    telescope = true,
    nvim_cmp = true,
    nvim_tree = true,
    neo_tree = true,
    gitsigns = true,
    which_key = true,
    lualine = true,
    indent_blankline = true,
    treesitter = true,
    native_lsp = true,
    dashboard = true,
    notify = true,
    aerial = true,
    symbols_outline = true,
    trouble = true,
    lazy = true,
    mason = true,
  },

  -- Style options
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
  },

  -- Allow custom palette overrides
  custom_colors = {},
}

-- Setup function
M.setup = function(opts)
  -- Merge user config with defaults
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

-- Load the colorscheme
M.load = function()
  -- Clear existing highlights
  if vim.g.colors_name then
    vim.cmd("highlight clear")
  end

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "plain"

  -- Determine variant
  local variant = M.config.variant
  if variant == "auto" then
    variant = vim.o.background == "dark" and "dark" or "light"
  end

  -- Load colors and apply theme
  local colors = require("plain.colors").get_palette(variant, M.config.custom_colors)
  local theme = require("plain.theme")

  theme.apply(colors, M.config)
end

return M
