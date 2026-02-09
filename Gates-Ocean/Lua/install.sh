#!/bin/bash

# Gates Ocean Neovim Colorscheme Installer
# Usage: curl -sSL https://raw.githubusercontent.com/your-username/gates-ocean.nvim/main/install.sh | bash

set -e

REPO_URL="https://raw.githubusercontent.com/your-username/gates-ocean.nvim/main"
NVIM_CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"
COLORS_DIR="$NVIM_CONFIG_DIR/colors"
LUA_DIR="$NVIM_CONFIG_DIR/lua/gates-ocean"

echo "🌊 Installing Gates Ocean colorscheme for Neovim..."

# Create directories
echo "📁 Creating directories..."
mkdir -p "$COLORS_DIR"
mkdir -p "$LUA_DIR"

# Download files
echo "⬇️  Downloading colorscheme files..."

# Download main colorscheme file
curl -fsSL "$REPO_URL/colors/gates-ocean.lua" -o "$COLORS_DIR/gates-ocean.lua"
echo "  ✓ Downloaded colors/gates-ocean.lua"

# Download lua modules
curl -fsSL "$REPO_URL/lua/gates-ocean/init.lua" -o "$LUA_DIR/init.lua"
echo "  ✓ Downloaded lua/gates-ocean/init.lua"

curl -fsSL "$REPO_URL/lua/gates-ocean/colors.lua" -o "$LUA_DIR/colors.lua"
echo "  ✓ Downloaded lua/gates-ocean/colors.lua"

curl -fsSL "$REPO_URL/lua/gates-ocean/highlights.lua" -o "$LUA_DIR/highlights.lua"
echo "  ✓ Downloaded lua/gates-ocean/highlights.lua"

echo ""
echo "✅ Gates Ocean has been installed successfully!"
echo ""
echo "📝 To activate the colorscheme, add this to your init.lua:"
echo ""
echo "    vim.cmd('colorscheme gates-ocean')"
echo ""
echo "Or with configuration:"
echo ""
echo "    require('gates-ocean').setup({"
echo "      transparent = false,"
echo "      italic_comments = true,"
echo "    })"
echo "    vim.cmd('colorscheme gates-ocean')"
echo ""
echo "🎨 Enjoy your new colorscheme!"
