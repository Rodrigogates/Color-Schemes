-- Gates Ocean Colorscheme Test File
-- Save this as test.lua and open it with Neovim to see the colorscheme in action

-- Comments should be teal and italic
-- This is a single line comment

--[[
  This is a multi-line comment
  It should also be teal
]]

-- Preprocessor and macros (cyan-dark, bold)
local M = {}

-- Numbers (green)
local number = 42
local float = 3.14159
local hex = 0xFF00FF

-- Strings (chartreuse/lime green)
local string1 = "Hello, Ocean!"
local string2 = 'Single quoted string'
local multiline = [[
  This is a multiline
  string literal
]]

-- Booleans (green)
local bool_true = true
local bool_false = false

-- Keywords (blue, bold)
if bool_true then
  print("Keywords are blue")
elseif bool_false then
  print("This won't execute")
else
  print("Else clause")
end

-- Loops (blue, bold)
for i = 1, 10 do
  print(i)
end

while number > 0 do
  number = number - 1
end

repeat
  number = number + 1
until number > 10

-- Functions (blue)
function M.example_function(param1, param2)
  -- Function body
  return param1 + param2
end

local anonymous = function()
  return "Anonymous function"
end

-- Operators (cyan, bold)
local sum = 10 + 20
local difference = 50 - 30
local product = 5 * 6
local division = 100 / 2
local modulo = 17 % 5
local power = 2 ^ 8

-- Logical operators
local and_result = true and false
local or_result = true or false
local not_result = not true

-- Comparison operators
local equal = 10 == 10
local not_equal = 10 ~= 20
local greater = 30 > 20
local less = 10 < 20
local gte = 30 >= 30
local lte = 10 <= 20

-- Tables
local table1 = {
  key1 = "value1",
  key2 = "value2",
  nested = {
    inner_key = "inner_value"
  }
}

local array = { 1, 2, 3, 4, 5 }

-- Type definitions (light blue, bold)
local my_table = {}
local my_string = ""
local my_number = 0

-- Special characters and regex patterns
local pattern = "%d+%.%d+"  -- Regex should be teal
local escaped = "Quote: \" Backslash: \\ Newline: \n"

-- Error handling (blue, bold for keywords)
local success, result = pcall(function()
  error("This is an error message")
end)

-- Metatables
local mt = {
  __index = function(table, key)
    return "default value"
  end,
  __newindex = function(table, key, value)
    rawset(table, key, value)
  end,
  __call = function(table, ...)
    print("Table called as function")
  end
}

setmetatable(table1, mt)

-- Module pattern
M.config = {
  option1 = true,
  option2 = false,
  nested_config = {
    sub_option = "value"
  }
}

function M.setup(opts)
  M.config = vim.tbl_extend("force", M.config, opts or {})
end

function M.get_color(name)
  local colors = {
    red = "#FF0000",
    green = "#00FF00",
    blue = "#0000FF",
  }
  return colors[name] or "#FFFFFF"
end

-- Return the module
return M

--[[
  Color Reference from Gates Ocean:
  - Background: #0A1E2E (deep ocean blue)
  - Foreground: #E0E0E0 (light gray)
  - Comments: #4DB6AC (teal, italic)
  - Keywords: #4FC3F7 (blue, bold)
  - Types: #26C6DA (light blue, bold)
  - Strings: #7FFF00 (chartreuse)
  - Numbers: #66FFA6 (green)
  - Operators: #00E5FF (cyan, bold)
  - Preprocessor: #00D9FF (cyan-dark, bold)
  - Functions: #4FC3F7 (blue)
  - Errors: #FF6B6B (red)
]]
