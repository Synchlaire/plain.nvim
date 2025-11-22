-- trouble.nvim integration
local M = {}

M.apply = function(colors)
  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi("TroubleText", { fg = colors.fg })
  hi("TroubleCount", { fg = colors.purple, bg = colors.bg_alt })
  hi("TroubleNormal", { fg = colors.fg, bg = colors.bg })
  hi("TroubleFile", { fg = colors.fg_bright })
  hi("TroubleIndent", { fg = colors.border })
  hi("TroubleLocation", { fg = colors.fg_dim })
  hi("TroubleFoldIcon", { fg = colors.accent })
  hi("TroubleSignError", { fg = colors.error })
  hi("TroubleSignWarning", { fg = colors.warn })
  hi("TroubleSignInformation", { fg = colors.info })
  hi("TroubleSignHint", { fg = colors.hint })
  hi("TroubleTextError", { fg = colors.fg })
  hi("TroubleTextWarning", { fg = colors.fg })
  hi("TroubleTextInformation", { fg = colors.fg })
  hi("TroubleTextHint", { fg = colors.fg })
end

return M
