-- Example configuration for LazyVim
-- Place this file in: ~/.config/nvim/lua/plugins/gates-ocean.lua

return {
  {
    "your-username/gates-ocean.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
      italic_comments = true,
      styles = {
        comments = "italic",
        keywords = "bold",
        functions = "NONE",
        strings = "NONE",
        variables = "NONE",
      },
      options = {
        terminal_colors = true,
        cursorline = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gates-ocean",
    },
  },
}
