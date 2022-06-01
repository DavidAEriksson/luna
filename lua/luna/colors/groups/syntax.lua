local M = {}

-- @function load
-- @desc Loads the highlight group for syntax color.
-- @param color - The colors table.
-- @param config - The configuration table.
M.load_syn = function(colors, config)
  local syntax = {
    Type = { fg = colors.yellow },
    -- static, register, volatile, etc.
    StorageClass = { fg = colors.purple },
    -- struct, union, enum, etc.
    Structure = { fg = colors.purple },
    -- any constant
    Constant = { fg = colors.blue },
    -- any character constant: 'c', '\n'
    Character = { fg = colors.green },
    -- a number constant: 5
    Number = { fg = colors.orange },
    -- a boolean constant: TRUE, false
    Boolean = { fg = colors.orange },
    -- a floating point constant: 2.3e10
    Float = { fg = colors.orange },
    -- any statement
    Statement = { fg = colors.purple },
    -- case, default, etc.
    Label = { fg = colors.purple },
    -- sizeof", "+", "*", etc.
    Operator = { fg = colors.purple },
    -- try, catch, throw
    Exception = { fg = colors.purple },
    -- generic Preprocessor
    PreProc = { fg = colors.purple },
    -- preprocessor #include
    Include = { fg = colors.blue },
    -- preprocessor #define
    Define = { fg = colors.red },
    -- same as Define
    Macro = { fg = colors.red },
    -- A typedef
    Typedef = { fg = colors.purple },
    -- preprocessor #if, #else, #endif, etc.
    PreCondit = { fg = colors.purple },
    -- any special symbol
    Special = { fg = colors.light_red },
    -- special character in a constant
    SpecialChar = { fg = colors.light_red },
    -- you can use CTRL-] on this
    Tag = { fg = colors.green },
    -- character that needs attention like , or .
    Delimiter = { fg = colors.dark_blue },
    -- special things inside a comment
    SpecialComment = { fg = colors.light_gray },
    -- debugging statements
    Debug = { fg = colors.yellow },
    -- text that stands out, HTML links
    Underlined = { fg = colors.green, style = 'underline' },
    -- left blank, hidden
    Ignore = { fg = colors.cyan, bg = colors.bg, style = 'bold' },
    -- any erroneous construct
    Error = { fg = colors.error, bg = colors.none, style = 'bold,underline' },
    -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Todo = { fg = colors.yellow, bg = colors.none, style = 'bold,italic' },
    Comment = { fg = colors.light_gray, style = config.styles.comments }, -- normal comments
    -- normal if, then, else, endif, switch, etc.
    Conditional = { fg = colors.purple, style = config.styles.keywords },
    -- normal for, do, while, etc.
    Keyword = { fg = colors.purple, style = config.styles.keywords },
    -- normal any other keyword
    Repeat = { fg = colors.purple, style = config.styles.keywords },
    -- normal function names
    Function = { fg = colors.blue, style = config.styles.functions },
    -- any variable name
    Identifier = { fg = colors.fg, style = config.styles.variables },
    -- any string
    String = { fg = colors.green, config.styles.strings },

    htmlLink = { fg = colors.green, style = 'underline' },
    htmlH1 = { fg = colors.cyan, style = 'bold' },
    htmlH2 = { fg = colors.red, style = 'bold' },
    htmlH3 = { fg = colors.green, style = 'bold' },
    htmlH4 = { fg = colors.yellow, style = 'bold' },
    htmlH5 = { fg = colors.purple, style = 'bold' },

    markdownBlockquote = { fg = colors.light_gray },
    markdownBold = { fg = colors.purple, style = 'bold' },
    markdownCode = { fg = colors.green },
    markdownCodeBlock = { fg = colors.green },
    markdownCodeDelimiter = { fg = colors.green },
    markdownH1 = { fg = colors.dark_blue, style = 'bold' },
    markdownH2 = { fg = colors.blue, style = 'bold' },
    markdownH3 = { fg = colors.cyan, style = 'bold' },
    markdownH4 = { fg = colors.light_green },
    markdownH5 = { fg = colors.light_green },
    markdownH6 = { fg = colors.light_green },
    markdownH1Delimiter = { fg = colors.dark_blue },
    markdownH2Delimiter = { fg = colors.blue },
    markdownH3Delimiter = { fg = colors.cyan },
    markdownH4Delimiter = { fg = colors.light_green },
    markdownH5Delimiter = { fg = colors.light_green },
    markdownH6Delimiter = { fg = colors.light_green },
    markdownId = { fg = colors.yellow },
    markdownIdDeclaration = { fg = colors.purple },
    markdownIdDelimiter = { fg = colors.light_gray },
    markdownLinkDelimiter = { fg = colors.light_gray },
    markdownItalic = { fg = colors.yellow, style = 'italic' },
    markdownLinkText = { fg = colors.purple },
    markdownListMarker = { fg = colors.red },
    markdownOrderedListMarker = { fg = colors.red },
    markdownRule = { fg = colors.purple },
    markdownUrl = { fg = colors.cyan, style = 'underline' },
  }
  return syntax
end

return M
