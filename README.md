# plain.nvim

A minimalist, distraction-free colorscheme for Neovim. Perfect for those who want to focus on the code, not the colors.

**plain.nvim** is a Lua port and enhancement of [vim-colors-plain](https://github.com/andreypopp/vim-colors-plain) by [andreypopp](https://github.com/andreypopp), with extensive plugin integrations and modern Neovim features.

## Philosophy

Plain follows a minimalist approach to syntax highlighting:
- **Minimal color differentiation** - Your code doesn't need a rainbow
- **Focus on structure** - Uses subtle variations in brightness and weight
- **Distraction-free** - Lets you focus on what matters: the code
- **Eye-friendly** - Both dark and light variants designed for long coding sessions

## Features

- 🎨 **Dark and light variants** with auto-detection
- 🔌 **Extensive plugin support** - integrations for 15+ popular plugins
- 💻 **Terminal colors** - properly configured terminal colors
- ⚙️ **Configurable** - customize colors and styles to your preference
- 🌲 **Treesitter support** - modern syntax highlighting
- 🔍 **LSP integration** - proper diagnostic and reference highlighting
- 📦 **Zero dependencies** - just drop it in and go

## Screenshots

_TODO: Add screenshots of dark and light variants_

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "Synchlaire/plain.nvim",
  priority = 1000,
  config = function()
    require("plain").setup({
      -- your configuration here (optional)
    })
    vim.cmd("colorscheme plain")
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "Synchlaire/plain.nvim",
  config = function()
    require("plain").setup()
    vim.cmd("colorscheme plain")
  end
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'Synchlaire/plain.nvim'
```

Then in your `init.lua` or `init.vim`:

```lua
require("plain").setup()
vim.cmd("colorscheme plain")
```

## Usage

### Basic Usage

```lua
-- Auto variant (follows vim.o.background)
vim.cmd("colorscheme plain")

-- Force dark variant
vim.cmd("colorscheme plain-dark")

-- Force light variant
vim.cmd("colorscheme plain-light")
```

### Configuration

```lua
require("plain").setup({
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

  -- Custom color overrides (optional)
  custom_colors = {
    -- Example: override accent color
    -- accent = "#FF0000",
  },
})
```

### Lualine Integration

plain.nvim provides a custom lualine theme that matches the colorscheme:

```lua
require("lualine").setup({
  options = {
    theme = _G.plain_lualine_theme,
  },
})
```

Make sure to set up lualine **after** loading the plain colorscheme.

## Supported Plugins

plain.nvim includes custom highlight groups for:

- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [which-key](https://github.com/folke/which-key.nvim)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim) / [alpha-nvim](https://github.com/goolord/alpha-nvim)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [aerial.nvim](https://github.com/stevearc/aerial.nvim)
- [symbols-outline](https://github.com/simrat39/symbols-outline.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)

And of course:
- Treesitter
- Native LSP
- Built-in terminal

## Color Palette

### Dark Variant

| Color | Hex | Usage |
|-------|-----|-------|
| Background | `#000000` | Main background |
| Foreground | `#CCCCCC` | Main text |
| Accent | `#B6D6FD` | Highlights, strings |
| Comment | `#999999` | Comments, subtle text |
| Error | `#E32791` | Errors, deletions |
| Warning | `#F3E430` | Warnings, changes |
| Info | `#4FB8CC` | Information |
| Hint | `#5FD7A7` | Hints, additions |

### Light Variant

| Color | Hex | Usage |
|-------|-----|-------|
| Background | `#F1F1F1` | Main background |
| Foreground | `#424242` | Main text |
| Accent | `#008EC4` | Highlights, strings |
| Comment | `#999999` | Comments, subtle text |
| Error | `#C30771` | Errors, deletions |
| Warning | `#A89C14` | Warnings, changes |
| Info | `#20A5BA` | Information |
| Hint | `#10A778` | Hints, additions |

## Customization Examples

### Disable italic comments

```lua
require("plain").setup({
  styles = {
    comments = { italic = false },
  },
})
```

### Make keywords not bold

```lua
require("plain").setup({
  styles = {
    keywords = {},
  },
})
```

### Override colors

```lua
require("plain").setup({
  custom_colors = {
    accent = "#FF6B9D",
    string = "#A6E3A1",
  },
})
```

### Disable specific plugin integrations

```lua
require("plain").setup({
  integrations = {
    telescope = false,
    nvim_cmp = false,
  },
})
```

## Credits

- Original [vim-colors-plain](https://github.com/andreypopp/vim-colors-plain) by [andreypopp](https://github.com/andreypopp)
- Neovim port and enhancements by [Synchlaire](https://github.com/Synchlaire)

## License

MIT License - see LICENSE file for details

## Contributing

Contributions are welcome! Feel free to:
- Report bugs
- Suggest new plugin integrations
- Submit pull requests
- Share screenshots

## Related Projects

If you like plain.nvim, you might also enjoy:
- [vim-colors-plain](https://github.com/andreypopp/vim-colors-plain) - The original Vim version
- [vim-nofrils](https://github.com/robertmeta/nofrils) - Another minimal colorscheme
- [zenbones.nvim](https://github.com/mcchrish/zenbones.nvim) - Minimal colorschemes for Neovim
