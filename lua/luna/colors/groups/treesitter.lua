local M = {}

-- @function load
-- @desc Loads the highlight group for treesitter highlights.
-- @param color - The colors table.
-- @param config - The configuration table.
M.load_ts = function(colors, config)
  local treesitter = {
    TSAttribute = { fg = colors.purple },
    -- Boolean literals: `True` and `False` in Python.
    TSBoolean = { fg = colors.orange },
    -- Character literals: `'a'` in C.
    TSCharacter = { fg = colors.green },
    -- Line comments and block comments.
    TSComment = { fg = colors.light_gray, style = config.styles.comments },
    -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    TSConditional = { fg = colors.purple, style = config.styles.keywords },
    -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    TSConstant = { fg = colors.cyan },
    -- Built-in constant values: `nil` in Lua.
    TSConstBuiltin = { fg = colors.orange },
    -- Constants defined by macros: `NULL` in C.
    TSConstMacro = { fg = colors.red },
    -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    TSConstructor = { fg = colors.yellow },
    -- Syntax/parser errors. This might highlight large sections of code while the user is typing
    -- still incomplete code, use a sensible highlight.
    TSError = { fg = colors.error },
    -- Exception related keywords: `try`, `except`, `finally` in Python.
    TSException = { fg = colors.purple },
    -- Object and struct fields.
    TSField = { fg = colors.blue },
    -- Floating-point number literals.
    TSFloat = { fg = colors.orange },
    -- Function calls and definitions.
    TSFunction = { fg = colors.blue, style = config.styles.functions },
    -- Built-in functions: `print` in Lua.
    TSFuncBuiltin = { fg = colors.cyan, style = config.styles.functions },
    -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    TSFuncMacro = { fg = colors.blue },
    -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    TSInclude = { fg = colors.blue },
    -- Keywords that don't fit into other categories.
    TSKeyword = { fg = colors.purple, style = config.styles.keywords },
    -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    TSKeywordFunction = { fg = colors.purple, style = config.styles.keywords },
    -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    TSKeywordOperator = { fg = colors.purple },
    -- Keywords like `return` and `yield`.
    TSKeywordReturn = { fg = colors.purple },
    -- GOTO labels: `label:` in C, and `::label::` in Lua.
    TSLabel = { fg = colors.purple },
    -- Method calls and definitions.
    TSMethod = { fg = colors.blue, style = config.styles.functions },
    -- Identifiers referring to modules and namespaces.
    TSNamespace = { fg = colors.yellow },
    -- Numeric literals that don't fit into other categories.
    TSNumber = { fg = colors.orange },
    -- Binary or unary operators: `+`, and also `->` and `*` in C.
    TSOperator = { fg = colors.purple },
    -- Parameters of a function.
    TSParameter = { fg = colors.red },
    -- References to parameters of a function.
    TSParameterReference = { fg = colors.red },
    -- Same as `TSField`.
    TSProperty = { fg = colors.blue },
    -- Punctuation delimiters: Periods, commas, semicolons, etc.
    TSPunctDelimiter = { fg = colors.dark_blue },
    -- Brackets, braces, parentheses, etc.
    TSPunctBracket = { fg = colors.dark_blue },
    -- Special punctuation that doesn't fit into the previous categories.
    TSPunctSpecial = { fg = colors.dark_blue },
    -- Keywords related to loops: `for`, `while`, etc.
    TSRepeat = { fg = colors.purple, style = config.styles.keywords },
    -- String literals.
    TSString = { fg = colors.green, style = config.styles.strings },
    -- Regular expression literals.
    TSStringRegex = { fg = colors.orange },
    -- Escape characters within a string: `\n`, `\t`, etc.
    TSStringEscape = { fg = colors.orange },
    -- Identifiers referring to symbols or atoms.
    TSSymbol = { fg = colors.cyan },
    -- Tags like HTML tag names.
    TSTag = { fg = colors.yellow },
    -- HTML tag attributes.
    TSTagAttribute = { fg = colors.blue },
    -- Tag delimiters like `<` `>` `/`.
    TSTagDelimiter = { fg = colors.dark_blue },
    -- Non-structured text. Like text in a markup language.
    TSText = { fg = colors.fg },
    -- Text to be represented in bold.
    TSStrong = { fg = colors.purple, style = "bold" },
    -- Text to be represented with emphasis.
    TSEmphasis = { fg = colors.yellow, style = "italic" },
    -- Text to be represented with an underline.
    TSUnderline = { style = "underline" },
    -- Text that is part of a title.
    TSTitle = { fg = colors.blue, style = "bold" },
    -- Literal or verbatim text.
    TSLiteral = { fg = colors.green },
    -- URIs like hyperlinks or email addresses.
    TSURI = { fg = colors.cyan, style = "underline" },
    -- Math environments like LaTeX's `$ ... $`
    TSMath = { fg = colors.fg },
    -- Footnotes, text references, citations, etc.
    TSTextReference = { fg = colors.purple },
    -- Text environments of markup languages.
    TSEnvironment = { fg = colors.fg },
    -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    TSEnvironmentName = { fg = colors.fg },
    -- Text representation of an informational note.
    TSNote = { fg = colors.info, style = "bold" },
    -- Text representation of a warning note.
    TSWarning = { fg = colors.warn, style = "bold" },
    -- Text representation of a danger note.
    TSDanger = { fg = colors.error, style = "bold" },
    -- Type (and class) definitions and annotations.
    TSType = { fg = colors.yellow },
    -- Built-in types: `i32` in Rust.
    TSTypeBuiltin = { fg = colors.orange },
    -- Variable names that don't fit into other categories.
    TSVariable = { fg = colors.fg, style = config.styles.variables },
    -- Variable names defined by the language: `this` or `self` in Javascript.
    TSVariableBuiltin = { fg = colors.red, style = config.styles.variables },
  }
  return treesitter
end

return M
