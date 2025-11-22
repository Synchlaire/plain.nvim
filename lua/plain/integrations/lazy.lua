-- lazy.nvim integration
local M = {}

M.apply = function(colors)
  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi("LazyNormal", { fg = colors.fg, bg = colors.bg })
  hi("LazyButton", { bg = colors.bg_alt })
  hi("LazyButtonActive", { bg = colors.selection })
  hi("LazyH1", { fg = colors.accent, bold = true })
  hi("LazyH2", { fg = colors.fg_bright, bold = true })
  hi("LazyReasonStart", { fg = colors.add })
  hi("LazyReasonPlugin", { fg = colors.purple })
  hi("LazyReasonEvent", { fg = colors.warn })
  hi("LazyReasonKeys", { fg = colors.cyan })
  hi("LazyReasonCmd", { fg = colors.info })
  hi("LazyReasonSource", { fg = colors.hint })
  hi("LazyReasonFt", { fg = colors.accent })
  hi("LazyReasonRuntime", { fg = colors.fg_dim })
  hi("LazyProgressDone", { fg = colors.add })
  hi("LazyProgressTodo", { fg = colors.fg_dim })
  hi("LazyCommit", { fg = colors.accent })
  hi("LazyCommitType", { fg = colors.fg_bright })
  hi("LazyUrl", { fg = colors.accent, underline = true })
  hi("LazyDir", { fg = colors.fg_dim })
  hi("LazySpecial", { fg = colors.accent })
  hi("LazyProp", { fg = colors.fg_dim })
  hi("LazyValue", { fg = colors.fg })
end

return M
