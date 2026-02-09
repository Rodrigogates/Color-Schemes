# 🚀 Quick Start Guide

## Installation Methods

### Method 1: Using a Plugin Manager (Recommended for LazyVim)

#### With lazy.nvim
Create a file at `~/.config/nvim/lua/plugins/gates-ocean.lua`:

```lua
return {
  {
    "your-username/gates-ocean.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gates-ocean",
    },
  },
}
```

### Method 2: Quick Install with curl

Run this one-liner in your terminal:

```bash
curl -sSL https://raw.githubusercontent.com/your-username/gates-ocean.nvim/main/install.sh | bash
```

Then add to your `~/.config/nvim/init.lua`:
```lua
vim.cmd("colorscheme gates-ocean")
```

### Method 3: Manual Installation

```bash
# Create directories
mkdir -p ~/.config/nvim/colors
mkdir -p ~/.config/nvim/lua/gates-ocean

# Clone the repository
cd /tmp
git clone https://github.com/your-username/gates-ocean.nvim.git

# Copy files
cp gates-ocean.nvim/colors/gates-ocean.lua ~/.config/nvim/colors/
cp -r gates-ocean.nvim/lua/gates-ocean/* ~/.config/nvim/lua/gates-ocean/
```

Then add to your `~/.config/nvim/init.lua`:
```lua
require("gates-ocean").setup()
vim.cmd("colorscheme gates-ocean")
```

## Basic Configuration

### Minimal Setup
```lua
vim.cmd("colorscheme gates-ocean")
```

### With Options
```lua
require("gates-ocean").setup({
  transparent = false,
  italic_comments = true,
})
vim.cmd("colorscheme gates-ocean")
```

### With Transparency
```lua
require("gates-ocean").setup({
  transparent = true,
})
vim.cmd("colorscheme gates-ocean")
```

## Verification

After installation, restart Neovim and run:
```vim
:colorscheme gates-ocean
```

You should see the ocean-themed blue-green colors applied!

## Troubleshooting

### Colors don't appear correctly
Make sure you have `termguicolors` enabled:
```lua
vim.opt.termguicolors = true
```

### Plugin not loading in LazyVim
1. Check that the plugin file is in the correct location: `~/.config/nvim/lua/plugins/`
2. Make sure the file has a `.lua` extension
3. Restart Neovim or run `:Lazy sync`

### Manual installation files missing
Ensure all four files are present:
- `~/.config/nvim/colors/gates-ocean.lua`
- `~/.config/nvim/lua/gates-ocean/init.lua`
- `~/.config/nvim/lua/gates-ocean/colors.lua`
- `~/.config/nvim/lua/gates-ocean/highlights.lua`

## Next Steps

- Check out the [README.md](README.md) for full documentation
- See [examples/](examples/) for more configuration examples
- Customize colors by forking and modifying `lua/gates-ocean/colors.lua`

Enjoy your new ocean-inspired colorscheme! 🌊
