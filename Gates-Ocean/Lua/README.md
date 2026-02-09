# 🌊 Gates Ocean

A deep ocean-inspired Neovim colorscheme with beautiful blue-green tones.

![License](https://img.shields.io/badge/license-MIT-blue.svg)

## ✨ Features

- 🎨 Beautiful blue-green ocean palette
- 🌙 Deep dark background for reduced eye strain
- 💡 Excellent syntax highlighting for multiple languages
- 🔌 Support for popular plugins (Telescope, LSP, Git signs, etc.)
- ⚡ TreeSitter support
- 🎯 LSP diagnostics integration
- 🔧 Customizable styles and transparency

## 📸 Screenshots

*(Add your screenshots here)*

## 🎨 Color Palette

| Color | Hex | Usage |
|-------|-----|-------|
| Background | `#0A1E2E` | Main background |
| Foreground | `#E0E0E0` | Main text |
| Cyan | `#00E5FF` | Operators, cursor |
| Blue | `#4FC3F7` | Keywords |
| Light Blue | `#26C6DA` | Types |
| Green | `#66FFA6` | Numbers |
| Chartreuse | `#7FFF00` | Strings |
| Teal | `#4DB6AC` | Comments |
| Error | `#FF6B6B` | Errors |

## 📦 Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "your-username/gates-ocean.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("gates-ocean").setup({
      -- your configuration here
    })
    vim.cmd("colorscheme gates-ocean")
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "your-username/gates-ocean.nvim",
  config = function()
    require("gates-ocean").setup()
    vim.cmd("colorscheme gates-ocean")
  end
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'your-username/gates-ocean.nvim'
```

Then in your `init.lua`:
```lua
require("gates-ocean").setup()
vim.cmd("colorscheme gates-ocean")
```

### Manual Installation with curl

You can install the colorscheme directly using curl:

```bash
# Create the colors directory if it doesn't exist
mkdir -p ~/.config/nvim/colors

# Download the colorscheme
curl -o ~/.config/nvim/colors/gates-ocean.lua \
  https://raw.githubusercontent.com/your-username/gates-ocean.nvim/main/colors/gates-ocean.lua

# Download the lua modules
mkdir -p ~/.config/nvim/lua/gates-ocean
curl -o ~/.config/nvim/lua/gates-ocean/init.lua \
  https://raw.githubusercontent.com/your-username/gates-ocean.nvim/main/lua/gates-ocean/init.lua
curl -o ~/.config/nvim/lua/gates-ocean/colors.lua \
  https://raw.githubusercontent.com/your-username/gates-ocean.nvim/main/lua/gates-ocean/colors.lua
curl -o ~/.config/nvim/lua/gates-ocean/highlights.lua \
  https://raw.githubusercontent.com/your-username/gates-ocean.nvim/main/lua/gates-ocean/highlights.lua
```

Then activate it in your `init.lua`:
```lua
vim.cmd("colorscheme gates-ocean")
```

## ⚙️ Configuration

### Default configuration

```lua
require("gates-ocean").setup({
  transparent = false,          -- Enable transparent background
  italic_comments = true,       -- Enable italic for comments
  styles = {
    comments = "italic",        -- Style for comments
    keywords = "bold",          -- Style for keywords
    functions = "NONE",         -- Style for functions
    strings = "NONE",           -- Style for strings
    variables = "NONE",         -- Style for variables
  },
  options = {
    terminal_colors = true,     -- Enable terminal colors
    cursorline = true,          -- Highlight the cursor line
  }
})
```

### Example configurations

#### Minimal setup
```lua
require("gates-ocean").setup()
vim.cmd("colorscheme gates-ocean")
```

#### With transparency
```lua
require("gates-ocean").setup({
  transparent = true,
})
vim.cmd("colorscheme gates-ocean")
```

#### Custom styles
```lua
require("gates-ocean").setup({
  italic_comments = false,
  styles = {
    comments = "NONE",
    keywords = "bold,italic",
  },
})
vim.cmd("colorscheme gates-ocean")
```

## 🔌 Plugin Support

Gates Ocean includes custom highlighting for:

- TreeSitter
- LSP (Native Neovim LSP)
- Telescope
- NvimTree / Neo-tree
- Git Signs
- Which-key
- And more!

## 🤝 Contributing

Contributions are welcome! Feel free to open issues or pull requests.

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details

## 🙏 Acknowledgments

- Inspired by ocean depths and underwater themes
- Color palette based on the Gates-Ocean theme originally for Notepad++
- Built with reference to [onedarkpro.nvim](https://github.com/olimorris/onedarkpro.nvim)

## 🎯 Related Projects

- [onedarkpro.nvim](https://github.com/olimorris/onedarkpro.nvim)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [catppuccin](https://github.com/catppuccin/nvim)
