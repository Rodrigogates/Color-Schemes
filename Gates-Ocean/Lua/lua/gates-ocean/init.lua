local M = {}

M.config = {
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
  }
}

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  
  vim.o.termguicolors = true
  vim.g.colors_name = "gates-ocean"
  
  local colors = require("gates-ocean.colors").palette
  local highlights = require("gates-ocean.highlights")
  
  -- Aplicar transparencia si está habilitada
  if M.config.transparent then
    colors.bg = "NONE"
    colors.bg_alt = "NONE"
  end
  
  -- Aplicar estilos personalizados
  local hl_groups = highlights.setup(colors)
  
  -- Aplicar configuración de estilos
  if M.config.styles then
    for group, style in pairs(M.config.styles) do
      if style == "italic" then
        if group == "comments" then
          hl_groups.Comment = vim.tbl_extend("force", hl_groups.Comment or {}, { italic = true })
          hl_groups["@comment"] = vim.tbl_extend("force", hl_groups["@comment"] or {}, { italic = true })
        end
      end
    end
  end
  
  -- Aplicar todos los grupos de highlight
  for group, settings in pairs(hl_groups) do
    vim.api.nvim_set_hl(0, group, settings)
  end
  
  -- Colores de terminal
  if M.config.options.terminal_colors then
    vim.g.terminal_color_0 = colors.bg
    vim.g.terminal_color_1 = colors.error
    vim.g.terminal_color_2 = colors.green
    vim.g.terminal_color_3 = colors.warning
    vim.g.terminal_color_4 = colors.blue
    vim.g.terminal_color_5 = colors.teal
    vim.g.terminal_color_6 = colors.cyan
    vim.g.terminal_color_7 = colors.fg
    vim.g.terminal_color_8 = colors.border
    vim.g.terminal_color_9 = colors.error
    vim.g.terminal_color_10 = colors.green
    vim.g.terminal_color_11 = colors.chartreuse
    vim.g.terminal_color_12 = colors.blue_light
    vim.g.terminal_color_13 = colors.teal_bright
    vim.g.terminal_color_14 = colors.cyan_dark
    vim.g.terminal_color_15 = colors.fg
  end
end

return M
