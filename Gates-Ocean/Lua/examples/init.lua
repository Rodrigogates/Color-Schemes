-- Example configuration for standard Neovim init.lua
-- Add this to your init.lua file

-- Option 1: Basic setup (recommended)
require("gates-ocean").setup()
vim.cmd("colorscheme gates-ocean")

-- Option 2: With custom configuration
require("gates-ocean").setup({
  transparent = false,          -- Set to true for transparent background
  italic_comments = true,       -- Italicize comments
  styles = {
    comments = "italic",        -- Style for comments
    keywords = "bold",          -- Style for keywords
    functions = "NONE",         -- Style for functions
    strings = "NONE",           -- Style for strings
    variables = "NONE",         -- Style for variables
  },
  options = {
    terminal_colors = true,     -- Enable terminal colors
    cursorline = true,          -- Highlight cursor line
  },
})
vim.cmd("colorscheme gates-ocean")

-- Option 3: Minimal (just load the colorscheme)
-- vim.cmd("colorscheme gates-ocean")
