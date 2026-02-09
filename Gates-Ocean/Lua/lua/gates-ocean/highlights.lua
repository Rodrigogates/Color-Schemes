local M = {}

function M.setup(colors)
  local c = colors
  
  return {
    -- Editor base
    Normal = { fg = c.fg, bg = c.bg },
    NormalFloat = { fg = c.fg, bg = c.bg },
    NormalNC = { fg = c.fg, bg = c.bg },
    
    -- Cursor y selección
    Cursor = { fg = c.bg, bg = c.cyan },
    CursorLine = { bg = c.bg_highlight },
    CursorColumn = { bg = c.bg_highlight },
    ColorColumn = { bg = c.bg_highlight },
    CursorLineNr = { fg = c.cyan, bold = true },
    
    Visual = { bg = c.bg_visual },
    VisualNOS = { bg = c.bg_visual },
    
    -- Números de línea y signos
    LineNr = { fg = c.teal_light, bg = c.bg_alt },
    SignColumn = { fg = c.fg, bg = c.bg },
    FoldColumn = { fg = c.teal_light, bg = c.bg_alt },
    Folded = { fg = c.teal_light, bg = c.bg },
    
    -- Búsqueda
    Search = { fg = c.bg, bg = c.search },
    IncSearch = { fg = c.bg, bg = c.cyan },
    CurSearch = { fg = c.bg, bg = c.cyan },
    
    -- Matching
    MatchParen = { fg = c.match_paren, bold = true },
    
    -- Mensajes y prompts
    ErrorMsg = { fg = c.error },
    WarningMsg = { fg = c.warning },
    ModeMsg = { fg = c.fg },
    MoreMsg = { fg = c.blue },
    Question = { fg = c.blue },
    
    -- Diff
    DiffAdd = { fg = c.green, bg = c.bg },
    DiffChange = { fg = c.warning, bg = c.bg },
    DiffDelete = { fg = c.error, bg = c.bg },
    DiffText = { fg = c.blue, bg = c.bg },
    
    -- Spelling
    SpellBad = { sp = c.error, undercurl = true },
    SpellCap = { sp = c.warning, undercurl = true },
    SpellLocal = { sp = c.blue, undercurl = true },
    SpellRare = { sp = c.teal, undercurl = true },
    
    -- Popup menu
    Pmenu = { fg = c.fg, bg = c.bg_alt },
    PmenuSel = { fg = c.bg, bg = c.blue },
    PmenuSbar = { bg = c.border },
    PmenuThumb = { bg = c.teal_light },
    
    -- Statusline y tabline
    StatusLine = { fg = c.fg, bg = c.bg_alt },
    StatusLineNC = { fg = c.teal_light, bg = c.bg_alt },
    TabLine = { fg = c.teal_light, bg = c.bg_alt },
    TabLineFill = { bg = c.bg_alt },
    TabLineSel = { fg = c.fg, bg = c.bg, bold = true },
    
    -- Bordes y separadores
    VertSplit = { fg = c.border },
    WinSeparator = { fg = c.border },
    
    -- Whitespace
    Whitespace = { fg = c.border },
    NonText = { fg = c.border },
    SpecialKey = { fg = c.border },
    
    -- Sintaxis base
    Comment = { fg = c.teal_light, italic = true },
    
    Constant = { fg = c.green },
    String = { fg = c.chartreuse },
    Character = { fg = c.chartreuse },
    Number = { fg = c.green },
    Boolean = { fg = c.green },
    Float = { fg = c.green },
    
    Identifier = { fg = c.fg },
    Function = { fg = c.blue },
    
    Statement = { fg = c.blue, bold = true },
    Conditional = { fg = c.blue, bold = true },
    Repeat = { fg = c.blue, bold = true },
    Label = { fg = c.blue },
    Operator = { fg = c.cyan, bold = true },
    Keyword = { fg = c.blue, bold = true },
    Exception = { fg = c.blue, bold = true },
    
    PreProc = { fg = c.cyan_dark, bold = true },
    Include = { fg = c.cyan_dark, bold = true },
    Define = { fg = c.cyan_dark, bold = true },
    Macro = { fg = c.cyan_dark, bold = true },
    PreCondit = { fg = c.cyan_dark, bold = true },
    
    Type = { fg = c.blue_light, bold = true },
    StorageClass = { fg = c.blue_light, bold = true },
    Structure = { fg = c.blue_light, bold = true },
    Typedef = { fg = c.blue_light, bold = true },
    
    Special = { fg = c.cyan },
    SpecialChar = { fg = c.teal },
    Tag = { fg = c.cyan },
    Delimiter = { fg = c.fg },
    SpecialComment = { fg = c.teal_bright },
    Debug = { fg = c.error },
    
    Underlined = { underline = true },
    Ignore = { fg = c.border },
    Error = { fg = c.error },
    Todo = { fg = c.bg, bg = c.cyan },
    
    -- Treesitter
    ["@variable"] = { fg = c.fg },
    ["@variable.builtin"] = { fg = c.blue_light },
    ["@variable.parameter"] = { fg = c.fg },
    ["@variable.member"] = { fg = c.fg },
    
    ["@constant"] = { fg = c.green },
    ["@constant.builtin"] = { fg = c.green },
    ["@constant.macro"] = { fg = c.cyan_dark },
    
    ["@string"] = { fg = c.chartreuse },
    ["@string.regex"] = { fg = c.teal },
    ["@string.escape"] = { fg = c.teal },
    ["@character"] = { fg = c.chartreuse },
    ["@number"] = { fg = c.green },
    ["@boolean"] = { fg = c.green },
    ["@float"] = { fg = c.green },
    
    ["@function"] = { fg = c.blue },
    ["@function.builtin"] = { fg = c.blue },
    ["@function.macro"] = { fg = c.cyan_dark },
    ["@function.method"] = { fg = c.blue },
    
    ["@constructor"] = { fg = c.blue_light },
    ["@operator"] = { fg = c.cyan },
    ["@keyword"] = { fg = c.blue, bold = true },
    ["@keyword.function"] = { fg = c.blue, bold = true },
    ["@keyword.operator"] = { fg = c.cyan, bold = true },
    ["@keyword.return"] = { fg = c.blue, bold = true },
    
    ["@conditional"] = { fg = c.blue, bold = true },
    ["@repeat"] = { fg = c.blue, bold = true },
    ["@exception"] = { fg = c.blue, bold = true },
    
    ["@type"] = { fg = c.blue_light, bold = true },
    ["@type.builtin"] = { fg = c.blue_light, bold = true },
    ["@type.qualifier"] = { fg = c.blue, bold = true },
    
    ["@include"] = { fg = c.cyan_dark, bold = true },
    ["@preproc"] = { fg = c.cyan_dark, bold = true },
    
    ["@comment"] = { fg = c.teal_light, italic = true },
    ["@comment.documentation"] = { fg = c.teal_light },
    
    ["@punctuation.delimiter"] = { fg = c.fg },
    ["@punctuation.bracket"] = { fg = c.fg },
    ["@punctuation.special"] = { fg = c.cyan },
    
    ["@tag"] = { fg = c.cyan },
    ["@tag.attribute"] = { fg = c.green },
    ["@tag.delimiter"] = { fg = c.fg },
    
    -- LSP
    LspReferenceText = { bg = c.bg_visual },
    LspReferenceRead = { bg = c.bg_visual },
    LspReferenceWrite = { bg = c.bg_visual },
    
    DiagnosticError = { fg = c.error },
    DiagnosticWarn = { fg = c.warning },
    DiagnosticInfo = { fg = c.blue },
    DiagnosticHint = { fg = c.teal },
    
    DiagnosticUnderlineError = { sp = c.error, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.warning, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.blue, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.teal, undercurl = true },
    
    -- Git signs
    GitSignsAdd = { fg = c.green },
    GitSignsChange = { fg = c.warning },
    GitSignsDelete = { fg = c.error },
    
    -- Telescope
    TelescopeBorder = { fg = c.border },
    TelescopeSelection = { fg = c.fg, bg = c.bg_highlight },
    TelescopeMatching = { fg = c.cyan, bold = true },
    
    -- NvimTree / Neo-tree
    NvimTreeNormal = { fg = c.fg, bg = c.bg },
    NvimTreeFolderName = { fg = c.blue },
    NvimTreeRootFolder = { fg = c.cyan, bold = true },
    NvimTreeSpecialFile = { fg = c.chartreuse },
    NvimTreeGitDirty = { fg = c.warning },
    NvimTreeGitNew = { fg = c.green },
    NvimTreeGitDeleted = { fg = c.error },
    
    -- Which-key
    WhichKey = { fg = c.blue },
    WhichKeyGroup = { fg = c.cyan },
    WhichKeyDesc = { fg = c.fg },
    WhichKeySeparator = { fg = c.teal_light },
  }
end

return M
