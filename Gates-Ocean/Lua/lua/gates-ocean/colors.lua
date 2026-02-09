local M = {}

-- Paleta de colores extraída del XML Gates-Ocean
M.palette = {
  -- Colores de fondo
  bg = "#0A1E2E",           -- Background principal
  bg_alt = "#061520",       -- Background alternativo (line numbers, fold margin)
  bg_highlight = "#0F2838", -- Current line background
  bg_visual = "#1E5A7A",    -- Selected text background
  
  -- Colores de primer plano
  fg = "#E0E0E0",           -- Foreground principal
  fg_alt = "#4DB6AC",       -- Foreground alternativo (comentarios, fold)
  
  -- Colores de sintaxis
  cyan = "#00E5FF",         -- Operadores, caret
  cyan_dark = "#00D9FF",    -- Preprocessor
  blue = "#4FC3F7",         -- Instruction words (keywords)
  blue_light = "#26C6DA",   -- Type words
  teal = "#00BFA5",         -- Regex
  teal_light = "#4DB6AC",   -- Comentarios
  teal_bright = "#80CBC4",  -- Comment doc keywords
  green = "#66FFA6",        -- Números, find marks
  chartreuse = "#7FFF00",   -- Strings, characters
  
  -- Colores de UI
  border = "#1E3A4C",       -- Bordes, indent guides, whitespace
  error = "#FF6B6B",        -- Errores
  warning = "#FF8000",      -- Warnings
  
  -- Colores especiales
  match_paren = "#0000FF",  -- Brace highlight
  selection = "#1E5A7A",    -- Selection
  search = "#66FFA6",       -- Find mark
  
  none = "NONE",
}

-- Función para convertir hex a RGB
function M.hex_to_rgb(hex)
  hex = hex:gsub("#", "")
  return {
    r = tonumber(hex:sub(1, 2), 16),
    g = tonumber(hex:sub(3, 4), 16),
    b = tonumber(hex:sub(5, 6), 16),
  }
end

-- Función para mezclar colores (darken/lighten)
function M.blend(color, percent)
  local rgb = M.hex_to_rgb(color)
  local factor = percent / 100
  
  local r = math.floor(rgb.r * factor)
  local g = math.floor(rgb.g * factor)
  local b = math.floor(rgb.b * factor)
  
  return string.format("#%02x%02x%02x", r, g, b)
end

return M
