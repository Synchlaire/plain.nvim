-- Theme application for Plain.nvim
local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

local function apply_terminal_colors(colors)
  local t = colors.terminal
  vim.g.terminal_color_0 = t.black
  vim.g.terminal_color_1 = t.red
  vim.g.terminal_color_2 = t.green
  vim.g.terminal_color_3 = t.yellow
  vim.g.terminal_color_4 = t.blue
  vim.g.terminal_color_5 = t.magenta
  vim.g.terminal_color_6 = t.cyan
  vim.g.terminal_color_7 = t.white
  vim.g.terminal_color_8 = t.bright_black
  vim.g.terminal_color_9 = t.bright_red
  vim.g.terminal_color_10 = t.bright_green
  vim.g.terminal_color_11 = t.bright_yellow
  vim.g.terminal_color_12 = t.bright_blue
  vim.g.terminal_color_13 = t.bright_magenta
  vim.g.terminal_color_14 = t.bright_cyan
  vim.g.terminal_color_15 = t.bright_white
end

M.apply = function(colors, config)
  local p = colors

  -- Apply terminal colors
  apply_terminal_colors(colors)

  -- Editor UI
  hi("Normal", { fg = p.fg, bg = p.bg })
  hi("NormalNC", { fg = p.fg_dim, bg = p.bg })
  hi("NormalFloat", { fg = p.fg, bg = p.bg_alt })
  hi("FloatBorder", { fg = p.border, bg = p.bg_alt })
  hi("FloatTitle", { fg = p.accent, bg = p.bg_alt, bold = true })

  hi("Cursor", { fg = p.bg, bg = p.fg })
  hi("CursorLine", { bg = p.cursor_line })
  hi("CursorLineNr", { fg = p.fg_bright, bold = true })
  hi("LineNr", { fg = p.fg_dim })
  hi("SignColumn", { bg = p.bg })
  hi("FoldColumn", { fg = p.fg_dim, bg = p.bg })
  hi("Folded", { fg = p.comment, bg = p.bg_alt })
  hi("ColorColumn", { bg = p.bg_alt })

  hi("StatusLine", { fg = p.fg, bg = p.bg_alt })
  hi("StatusLineNC", { fg = p.fg_dim, bg = p.bg_alt })
  hi("TabLine", { fg = p.fg_dim, bg = p.bg_alt })
  hi("TabLineFill", { bg = p.bg_alt })
  hi("TabLineSel", { fg = p.fg_bright, bg = p.bg, bold = true })
  hi("WinSeparator", { fg = p.border })
  hi("VertSplit", { fg = p.border })
  hi("WinBar", { fg = p.fg_bright, bold = true })
  hi("WinBarNC", { fg = p.fg_dim })

  hi("Pmenu", { fg = p.fg, bg = p.bg_alt })
  hi("PmenuSel", { fg = p.fg_bright, bg = p.selection })
  hi("PmenuSbar", { bg = p.bg_alt })
  hi("PmenuThumb", { bg = p.border })

  hi("Visual", { bg = p.selection })
  hi("VisualNOS", { bg = p.selection })
  hi("Search", { fg = p.bg, bg = p.accent })
  hi("IncSearch", { fg = p.bg, bg = p.accent, bold = true })
  hi("CurSearch", { fg = p.bg, bg = p.accent, bold = true })
  hi("Substitute", { fg = p.bg, bg = p.warn })

  hi("MatchParen", { fg = p.accent, bold = true, underline = true })
  hi("NonText", { fg = p.fg_dim })
  hi("SpecialKey", { fg = p.fg_dim })
  hi("Whitespace", { fg = p.fg_dim })
  hi("EndOfBuffer", { fg = p.bg })
  hi("Conceal", { fg = p.fg_dim })

  hi("Directory", { fg = p.accent })
  hi("Title", { fg = p.fg_bright, bold = true })
  hi("ErrorMsg", { fg = p.error, bold = true })
  hi("WarningMsg", { fg = p.warn, bold = true })
  hi("MoreMsg", { fg = p.info })
  hi("ModeMsg", { fg = p.fg_bright, bold = true })
  hi("Question", { fg = p.info })

  hi("DiffAdd", { fg = p.add, bg = p.bg_alt })
  hi("DiffChange", { fg = p.change, bg = p.bg_alt })
  hi("DiffDelete", { fg = p.delete, bg = p.bg_alt })
  hi("DiffText", { fg = p.warn, bg = p.bg_alt, bold = true })

  hi("SpellBad", { undercurl = true, sp = p.error })
  hi("SpellCap", { undercurl = true, sp = p.warn })
  hi("SpellLocal", { undercurl = true, sp = p.info })
  hi("SpellRare", { undercurl = true, sp = p.hint })

  hi("QuickFixLine", { bg = p.selection })
  hi("qfLineNr", { fg = p.fg_dim })
  hi("qfFileName", { fg = p.accent })

  -- Syntax (minimal differentiation - that's the point)
  local comment_style = vim.tbl_extend("force", { fg = p.comment }, config.styles.comments)
  local keyword_style = vim.tbl_extend("force", { fg = p.fg_bright }, config.styles.keywords)
  local function_style = vim.tbl_extend("force", { fg = p.fg_bright }, config.styles.functions)
  local variable_style = vim.tbl_extend("force", { fg = p.fg }, config.styles.variables)

  hi("Comment", comment_style)
  hi("Constant", { fg = p.fg })
  hi("String", { fg = p.string })
  hi("Character", { fg = p.string })
  hi("Number", { fg = p.fg })
  hi("Boolean", { fg = p.fg, bold = true })
  hi("Float", { fg = p.fg })

  hi("Identifier", variable_style)
  hi("Function", function_style)

  hi("Statement", { fg = p.fg_bright })
  hi("Conditional", keyword_style)
  hi("Repeat", keyword_style)
  hi("Label", { fg = p.fg_bright })
  hi("Operator", { fg = p.fg })
  hi("Keyword", keyword_style)
  hi("Exception", keyword_style)

  hi("PreProc", { fg = p.fg_dim })
  hi("Include", { fg = p.fg_dim })
  hi("Define", { fg = p.fg_dim })
  hi("Macro", { fg = p.fg_dim })
  hi("PreCondit", { fg = p.fg_dim })

  hi("Type", { fg = p.fg })
  hi("StorageClass", { fg = p.fg })
  hi("Structure", { fg = p.fg })
  hi("Typedef", { fg = p.fg })

  hi("Special", { fg = p.fg })
  hi("SpecialChar", { fg = p.string })
  hi("Tag", { fg = p.accent })
  hi("Delimiter", { fg = p.fg })
  hi("SpecialComment", { fg = p.comment, bold = true })
  hi("Debug", { fg = p.warn })

  hi("Underlined", { underline = true })
  hi("Ignore", { fg = p.fg_dim })
  hi("Error", { fg = p.error, bold = true })
  hi("Todo", { fg = p.warn, bold = true })

  -- Diagnostics
  hi("DiagnosticError", { fg = p.error })
  hi("DiagnosticWarn", { fg = p.warn })
  hi("DiagnosticInfo", { fg = p.info })
  hi("DiagnosticHint", { fg = p.hint })
  hi("DiagnosticOk", { fg = p.add })

  hi("DiagnosticUnderlineError", { undercurl = true, sp = p.error })
  hi("DiagnosticUnderlineWarn", { undercurl = true, sp = p.warn })
  hi("DiagnosticUnderlineInfo", { undercurl = true, sp = p.info })
  hi("DiagnosticUnderlineHint", { undercurl = true, sp = p.hint })

  hi("DiagnosticVirtualTextError", { fg = p.error, italic = true })
  hi("DiagnosticVirtualTextWarn", { fg = p.warn, italic = true })
  hi("DiagnosticVirtualTextInfo", { fg = p.info, italic = true })
  hi("DiagnosticVirtualTextHint", { fg = p.hint, italic = true })

  hi("DiagnosticFloatingError", { fg = p.error })
  hi("DiagnosticFloatingWarn", { fg = p.warn })
  hi("DiagnosticFloatingInfo", { fg = p.info })
  hi("DiagnosticFloatingHint", { fg = p.hint })

  hi("DiagnosticSignError", { fg = p.error })
  hi("DiagnosticSignWarn", { fg = p.warn })
  hi("DiagnosticSignInfo", { fg = p.info })
  hi("DiagnosticSignHint", { fg = p.hint })

  -- LSP
  if config.integrations.native_lsp then
    hi("LspReferenceText", { bg = p.selection })
    hi("LspReferenceRead", { bg = p.selection })
    hi("LspReferenceWrite", { bg = p.selection })
    hi("LspSignatureActiveParameter", { fg = p.accent, bold = true })
    hi("LspCodeLens", { fg = p.fg_dim, italic = true })
    hi("LspCodeLensSeparator", { fg = p.fg_dim })
    hi("LspInlayHint", { fg = p.fg_dim, italic = true })
  end

  -- Treesitter
  if config.integrations.treesitter then
    hi("@comment", { link = "Comment" })
    hi("@punctuation", { fg = p.fg_dim })
    hi("@punctuation.bracket", { fg = p.fg_dim })
    hi("@punctuation.delimiter", { fg = p.fg_dim })
    hi("@constant", { link = "Constant" })
    hi("@constant.builtin", { fg = p.fg, bold = true })
    hi("@string", { link = "String" })
    hi("@character", { link = "Character" })
    hi("@number", { link = "Number" })
    hi("@boolean", { link = "Boolean" })
    hi("@float", { link = "Float" })
    hi("@function", { link = "Function" })
    hi("@function.builtin", function_style)
    hi("@function.call", function_style)
    hi("@function.macro", { fg = p.fg_dim })
    hi("@parameter", variable_style)
    hi("@keyword", { link = "Keyword" })
    hi("@keyword.function", keyword_style)
    hi("@keyword.operator", keyword_style)
    hi("@keyword.return", keyword_style)
    hi("@conditional", { link = "Conditional" })
    hi("@repeat", { link = "Repeat" })
    hi("@label", { link = "Label" })
    hi("@operator", { link = "Operator" })
    hi("@exception", { link = "Exception" })
    hi("@type", { link = "Type" })
    hi("@type.builtin", { fg = p.fg })
    hi("@namespace", { fg = p.fg_dim })
    hi("@variable", variable_style)
    hi("@variable.builtin", vim.tbl_extend("force", variable_style, { italic = true }))
    hi("@text", { fg = p.fg })
    hi("@text.strong", { bold = true })
    hi("@text.emphasis", { italic = true })
    hi("@text.underline", { underline = true })
    hi("@text.strike", { strikethrough = true })
    hi("@text.title", { fg = p.fg_bright, bold = true })
    hi("@text.uri", { fg = p.accent, underline = true })
    hi("@text.literal", { fg = p.string })
    hi("@text.math", { fg = p.fg })
    hi("@text.reference", { fg = p.accent })
    hi("@tag", { fg = p.fg_bright })
    hi("@tag.attribute", { fg = p.fg })
    hi("@tag.delimiter", { fg = p.fg_dim })
    hi("@property", { fg = p.fg })
    hi("@attribute", { fg = p.fg_dim })
    hi("@constructor", function_style)
  end

  -- Markdown
  hi("markdownHeadingDelimiter", { fg = p.accent, bold = true })
  hi("markdownH1", { fg = p.fg_bright, bold = true })
  hi("markdownH2", { fg = p.fg_bright, bold = true })
  hi("markdownH3", { fg = p.fg_bright, bold = true })
  hi("markdownH4", { fg = p.fg_bright })
  hi("markdownH5", { fg = p.fg_bright })
  hi("markdownH6", { fg = p.fg_bright })
  hi("markdownBold", { bold = true })
  hi("markdownItalic", { italic = true })
  hi("markdownCode", { fg = p.string, bg = p.bg_alt })
  hi("markdownCodeBlock", { fg = p.string })
  hi("markdownLinkText", { fg = p.accent, underline = true })
  hi("markdownUrl", { fg = p.fg_dim, underline = true })

  -- Load plugin integrations
  if config.integrations.gitsigns then
    require("plain.integrations.gitsigns").apply(p)
  end

  if config.integrations.telescope then
    require("plain.integrations.telescope").apply(p)
  end

  if config.integrations.which_key then
    require("plain.integrations.whichkey").apply(p)
  end

  if config.integrations.nvim_cmp then
    require("plain.integrations.nvim_cmp").apply(p)
  end

  if config.integrations.nvim_tree then
    require("plain.integrations.nvim_tree").apply(p)
  end

  if config.integrations.neo_tree then
    require("plain.integrations.neo_tree").apply(p)
  end

  if config.integrations.lualine then
    require("plain.integrations.lualine").apply(p)
  end

  if config.integrations.indent_blankline then
    require("plain.integrations.indent_blankline").apply(p)
  end

  if config.integrations.dashboard then
    require("plain.integrations.dashboard").apply(p)
  end

  if config.integrations.notify then
    require("plain.integrations.notify").apply(p)
  end

  if config.integrations.aerial then
    require("plain.integrations.aerial").apply(p)
  end

  if config.integrations.symbols_outline then
    require("plain.integrations.symbols_outline").apply(p)
  end

  if config.integrations.trouble then
    require("plain.integrations.trouble").apply(p)
  end

  if config.integrations.lazy then
    require("plain.integrations.lazy").apply(p)
  end

  if config.integrations.mason then
    require("plain.integrations.mason").apply(p)
  end
end

return M
