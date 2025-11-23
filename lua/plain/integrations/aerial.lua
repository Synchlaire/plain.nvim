-- aerial.nvim integration
local M = {}

M.apply = function(colors)
  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi("AerialNormal", { fg = colors.fg, bg = colors.bg })
  hi("AerialLine", { bg = colors.selection })
  hi("AerialGuide", { fg = colors.border })
  hi("AerialTextIcon", { fg = colors.fg })
  hi("AerialMethodIcon", { fg = colors.fg_bright })
  hi("AerialFunctionIcon", { fg = colors.fg_bright })
  hi("AerialConstructorIcon", { fg = colors.fg_bright })
  hi("AerialClassIcon", { fg = colors.fg })
  hi("AerialInterfaceIcon", { fg = colors.fg })
  hi("AerialStructIcon", { fg = colors.fg })
  hi("AerialEnumIcon", { fg = colors.fg })
  hi("AerialVariableIcon", { fg = colors.fg })
  hi("AerialConstantIcon", { fg = colors.fg })
  hi("AerialFieldIcon", { fg = colors.fg })
  hi("AerialPropertyIcon", { fg = colors.fg })
  hi("AerialModuleIcon", { fg = colors.fg_dim })
  hi("AerialNamespaceIcon", { fg = colors.fg_dim })
end

return M
