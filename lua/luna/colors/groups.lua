local M = {}

M.load_groups = function(colors, config)
  local groups = {
    -- ####### Luna Editor Groups ####### --
    -- Editor background color
    Normal = { fg = colors.white.smoke, bg = colors.gray.void },
    -- Floating windows
    NormalFloat = { bg = colors.gray.gloom },
    -- -- floating window border
    FloatBorder = { fg = colors.gray.gloom, bg = colors.gray.gloom },
    -- -- used for the columns set with 'colorscolumn'
    ColorColumn = { fg = colors.none, bg = colors.gray.gloom },
    -- -- placeholder characters substituted for concealed text (see 'conceallevel')
    Conceal = { bg = colors.void },
    -- -- the character under the cursor
    Cursor = { fg = colors.red.phobos, bg = colors.none },
    -- -- directory names (and other special names in listings)
    Directory = { fg = colors.blue.neptune, bg = colors.none },
    -- -- diff mode: Added line
    DiffAdd = { fg = colors.none, bg = colors.gray.void },
    -- -- diff mode: Changed line
    DiffChange = { fg = colors.none, bg = colors.gray.void },
    -- -- diff mode: Deleted line
    DiffDelete = { fg = colors.none, bg = colors.red.phobos },
    -- -- diff mode: Changed text within a changed line
    DiffText = { fg = colors.none, bg = colors.blue.neptune },
    -- -- error messages
    ErrorMsg = { fg = colors.red.phobos },
    -- -- line used for closed folds
    Folded = { fg = colors.gray.dust, bg = colors.none }, -- TODO: text styling
    -- -- 'foldcolumn'
    FoldColumn = { fg = colors.gray.dust },
    -- -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    IncSearch = { fg = colors.gray.void, bg = colors.yellow.titan },
    -- -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNr = { fg = colors.gray.dust },
    -- -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    CursorLineNr = { fg = colors.white.smoke, bg = colors.gray.void },
    -- -- Like SignColumn when 'cursorline' is set for the cursor line.
    CursorLineSign = { bg = colors.gray.dark },
    -- -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    MatchParen = { fg = colors.red.deimos, bg = colors.none, italic = true },
    -- -- 'showmode' message (e.g., "-- INSERT -- ")
    ModeMsg = { fg = colors.purple.nebula, bold = true },
    -- -- |more-prompt|
    MoreMsg = { fg = colors.purple.nebula, bold = true },
    -- -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist
    -- -- in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
    -- -- See also |hl-EndOfBuffer|.
    NonText = { fg = colors.gray.void },
    -- -- normal item |hl-Pmenu|
    Pmenu = { fg = colors.white.smoke, bg = colors.gray.deep },
    -- -- selected item |hl-PmenuSel|
    PmenuSel = { bg = colors.red.deimos },
    -- -- scrollbar |hl-PmenuSbar|
    PmenuSbar = { bg = colors.gray.gloom },
    -- -- thumb of the scrollbar  |hl-PmenuThumb|
    PmenuThumb = { bg = colors.red.deimos },
    -- -- |hit-enter| prompt and yes/no questions
    Question = { fg = colors.green.terra },
    -- -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    QuickFixLine = { bg = colors.float, bold = true, italic = true },
    -- Line numbers for quickfix lists
    qfLineNr = { fg = colors.purple.nebula },
    -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    Search = { fg = colors.gray.void, bg = colors.yellow.titan, bold = true, italic = true },
    -- Unprintable characters: text displayed differently from what it really is.
    -- But not 'listchars' whitespace. |hl-Whitespace|
    SpecialKey = { fg = colors.dark_blue },
    -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellBad = { fg = colors.red.phobos, bg = colors.none, italic = true, underline = true, sp = colors.red.phobos },
    -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellCap = { fg = colors.yellow.rhea, bg = colors.none, italic = true, underline = true, sp = colors.yellow.titan },
    -- Word that is recognized by the spellchecker as one that is used in another region.
    -- |spell| Combined with the highlighting used otherwise.
    SpellLocal = { fg = colors.blue.triton, bg = colors.none, italic = true, underline = true, sp = colors.blue.triton },
    -- Word that is recognized by the spellchecker as one that is hardly ever used.
    -- |spell| Combined with the highlighting used otherwise.
    SpellRare = {
      fg = colors.purple.nebula,
      bg = colors.none,
      italic = true,
      underline = true,
      sp = colors.purple.nebula,
    },
    -- status line of current window
    StatusLine = { fg = colors.fg, bg = colors.gray.gloom },
    -- status lines of not-current windows Note: if this is equal to "StatusLine"
    -- Vim will use "^^^" in the status line of the current window.
    StatusLineNC = { fg = colors.gray.dust, bg = colors.gray.gloom },
    -- status line of current terminal window
    StatusLineTerm = { fg = colors.fg, bg = colors.gray.gloom },
    -- status lines of not-current terminal windows Note: if this is equal to "StatusLine"
    -- Vim will use "^^^" in the status line of the current window.
    StatusLineTermNC = { fg = colors.gray.dust, bg = colors.gray.gloom },
    -- tab pages line, where there are no labels
    TabLineFill = { fg = colors.gray.dust, bg = colors.gray.dark },
    -- tab pages line, active tab page label
    TablineSel = { fg = colors.blue.triton, bg = colors.gray.void },
    Tabline = { fg = colors.red.phobos.phobos, bg = colors.gray.dark },
    -- titles for output from ":set all", ":autocmd" etc.
    Title = { fg = colors.green.terra, bg = colors.none, bold = true },
    -- Visual mode selection
    Visual = { fg = colors.none, bg = colors.gray.dark },
    -- Visual mode selection when vim is "Not Owning the Selection".
    VisualNOS = { fg = colors.none, bg = colors.gray.dark },
    -- yellow.titaning messages
    WarningMsg = { fg = colors.yellow.titan },
    -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Whitespace = { fg = colors.gray.dust },
    -- current match in 'wildmenu' completion
    WildMenu = { fg = colors.yellow.rhea, bg = colors.none, bold = true },
    -- window bar of current window
    WinBar = { fg = colors.fg, bg = colors.gray.void },
    -- window bar of not-current windows
    WinBarNC = { fg = colors.gray.dust, bg = colors.gray.void },
    -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorColumn = { fg = colors.none, bg = colors.float },
    -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorLine = { fg = colors.none, bg = colors.active },
    -- Normal mode message in the cmdline
    NormalMode = { fg = colors.blue.triton, bg = colors.none, reverse = true },
    -- Insert mode message in the cmdline
    InsertMode = { fg = colors.red.phobos, bg = colors.none, reverse = true },
    -- Replace mode message in the cmdline
    ReplacelMode = { fg = colors.red.phobos, bg = colors.none, reverse = true },
    -- Visual mode message in the cmdline
    VisualMode = { fg = colors.purple.nebula, bg = colors.none, reverse = true },
    -- Command mode message in the cmdline
    CommandMode = { fg = colors.yellow.rhea, bg = colors.none, reverse = true },
    Warnings = { fg = colors.yellow.titan },
    healthError = { fg = colors.red.phobos },
    healthSuccess = { fg = colors.green.terra },
    healthWarning = { fg = colors.yellow.titan },
    -- Dashboard
    DashboardShortCut = { fg = colors.blue.triton },
    DashboardHeader = { fg = colors.blue.neptune },
    DashboardCenter = { fg = colors.purple.nebula },
    DashboardFooter = { fg = colors.green.terra, italic = true },
    -- normal text and background colors
    NormalNC = { bg = colors.gray.void },
    SignColumn = { fg = colors.white.smoke, bg = colors.none },
    -- -- the column separating vertically split windows
    VertSplit = { fg = colors.gray.dust },
    EndOfBuffer = { fg = colors.gray.void },

    -- ####### Luna Treesitter Groups ###### --

    TSAttribute = { fg = colors.purple.nebula },
    -- -- Boolean literals: `True` and `False` in Python.
    TSBoolean = { fg = colors.yellow.titan },
    -- -- Character literals: `'a'` in C.
    TSCharacter = { fg = colors.green.terra },
    -- -- Line comments and block comments.
    TSComment = { fg = colors.gray.smoke }, -- TODO: text styling
    -- -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    TSConditional = { fg = colors.blue.tidal }, -- TODO: text styling
    -- -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    TSConstant = { fg = colors.blue.triton },
    -- -- Built-in constant values: `nil` in Lua.
    TSConstBuiltin = { fg = colors.yellow.titan },
    -- -- Constants defined by macros: `NULL` in C.
    TSConstMacro = { fg = colors.red.phobos },
    -- -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    TSConstructor = { fg = colors.gray.dust },
    -- -- Syntax/parser errors. This might highlight large sections of code while the user is typing
    -- -- still incomplete code, use a sensible highlight.
    TSError = { fg = colors.red.phobos },
    -- -- Exception related keywords: `try`, `except`, `finally` in Python.
    TSException = { fg = colors.purple.nebula },
    -- -- Object and struct fields.
    TSField = { fg = colors.blue.tidal },
    -- -- Floating-point number literals.
    TSFloat = { fg = colors.yellow.rhea },
    -- -- Function calls and definitions.
    TSFunction = { fg = colors.blue.tidal }, -- TODO: text styling
    -- -- Built-in functions: `print` in Lua.
    TSFuncBuiltin = { fg = colors.purple.nebula }, -- TODO: text styling
    -- -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    TSFuncMacro = { fg = colors.blue.neptune },
    -- -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    TSInclude = { fg = colors.blue.neptune },
    -- -- Keywords that don't fit into other categories.
    TSKeyword = { fg = colors.purple.nebula }, -- TODO: text styling
    -- -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    TSKeywordFunction = { fg = colors.red.deimos }, -- TODO: text styling
    -- -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    TSKeywordOperator = { fg = colors.red.deimos },
    -- -- Keywords like `return` and `yield`.
    TSKeywordReturn = { fg = colors.red.deimos },
    -- -- GOTO labels: `label:` in C, and `::label::` in Lua.
    TSLabel = { fg = colors.red.deimos },
    -- -- Method calls and definitions.
    TSMethod = { fg = colors.blue.neptune }, -- TODO: text styling
    -- -- Identifiers referring to modules and namespaces.
    TSNamespace = { fg = colors.yellow.rhea },
    -- -- Numeric literals that don't fit into other categories.
    TSNumber = { fg = colors.yellow.rhea },
    -- -- Binary or unary operators: `+`, and also `->` and `*` in C.
    TSOperator = { fg = colors.red.deimos },
    -- -- Parameters of a function.
    TSParameter = { fg = colors.blue.tidal },
    -- -- References to parameters of a function.
    TSParameterReference = { fg = colors.blue.tidal },
    -- -- Same as `TSField`.
    TSProperty = { fg = colors.blue.tidal },
    -- -- Punctuation delimiters: Periods, commas, semicolons, etc.
    TSPunctDelimiter = { fg = colors.gray.dust },
    -- -- Brackets, braces, parentheses, etc.
    TSPunctBracket = { fg = colors.yellow.rhea },
    -- -- Special punctuation that doesn't fit into the previous categories.
    TSPunctSpecial = { fg = colors.gray.dust },
    -- -- Keywords related to loops: `for`, `while`, etc.
    TSRepeat = { fg = colors.purple.nebula }, -- TODO: text styling
    -- -- String literals.
    TSString = { fg = colors.green.terra }, -- TODO: text styling
    -- -- Regular expression literals.
    TSStringRegex = { fg = colors.yellow.titan },
    -- -- Escape characters within a string: `\n`, `\t`, etc.
    TSStringEscape = { fg = colors.red.deimos },
    -- -- Identifiers referring to symbols or atoms.
    TSSymbol = { fg = colors.purple.nebula },
    -- -- Tags like HTML tag names.
    TSTag = { fg = colors.yellow.rhea },
    -- -- HTML tag attributes.
    TSTagAttribute = { fg = colors.blue.tidal },
    -- -- Tag delimiters like `<` `>` `/`.
    TSTagDelimiter = { fg = colors.gray.dust },
    -- -- Non-structured text. Like text in a markup language.
    TSText = { fg = colors.white.smoke },
    -- -- Text to be represented in bold.
    TSStrong = { fg = colors.purple.nebula, bold = true },
    -- -- Text to be represented with emphasis.
    TSEmphasis = { fg = colors.yellow.rhea, italic = true },
    -- -- Text to be represented with an underline.
    TSUnderline = { underline = true, italic = true },
    -- -- Text that is part of a title.
    TSTitle = { fg = colors.white.smoke, bold = true },
    -- -- Literal or verbatim text.
    TSLiteral = { fg = colors.green.terra, italic = true },
    -- -- URIs like hyperlinks or email addresses.
    TSURI = { fg = colors.blue.triton, underline = true, italic = true },
    -- -- Math environments like LaTeX's `$ ... $`
    TSMath = { fg = colors.white.smoke },
    -- -- Footnotes, text references, citations, etc.
    TSTextReference = { fg = colors.purple.nebula },
    -- -- Text environments of markup languages.
    TSEnvironment = { fg = colors.white.smoke },
    -- -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    TSEnvironmentName = { fg = colors.white.smoke },
    -- -- Text representation of an informational note.
    TSNote = { fg = colors.green.terra, bold = true },
    -- -- Text representation of a warning note.
    TSWarning = { fg = colors.yellow.titan, bold = true },
    -- -- Text representation of a danger note.
    TSDanger = { fg = colors.red.phobos, bold = true },
    -- -- Type (and class) definitions and annotations.
    TSType = { fg = colors.yellow.rhea },
    -- -- Built-in types: `i32` in Rust.
    TSTypeBuiltin = { fg = colors.red.deimos },
    -- -- Variable names that don't fit into other categories.
    TSVariable = { fg = colors.white.smoke },
    -- -- Variable names defined by the language: `this` or `self` in Javascript.
    TSVariableBuiltin = { fg = colors.red.deimos },
    -- ####### Luna Syntax Groups ####### --
    -- Types
    Type = { fg = colors.yellow.rhea },
    -- static, register, volatile, etc.
    StorageClass = { fg = colors.purple.nebula },
    -- -- struct, union, enum, etc.
    Structure = { fg = colors.purple.nebula },
    -- -- any constant
    Constant = { fg = colors.blue.triton },
    -- -- any character constant: 'c', '\,'
    Character = { fg = colors.green.terra },
    -- -- a number constant: 5
    Number = { fg = colors.yellow.rhea },
    -- -- a boolean constant: TRUE, false
    Boolean = { fg = colors.yellow.titan },
    -- -- a floating point constant: 2.3e10
    Float = { fg = colors.yellow.rhea },
    -- -- any statement
    Statement = { fg = colors.purple.nebula },
    -- -- case, default, etc.
    Label = { fg = colors.blue.neptune },
    -- sizeof", "+", "*", etc.
    Operator = { fg = colors.blue.neptune },
    -- try, catch, throw
    Exception = { fg = colors.blue.neptune },
    -- generic Preprocessor
    PreProc = { fg = colors.blue.neptune },
    -- preprocessor #include
    Include = { fg = colors.red.deimos },
    -- preprocessor #define
    Define = { fg = colors.red.deimos },
    -- same as Define
    Macro = { fg = colors.red.deimos },
    -- A typedef
    Typedef = { fg = colors.blue.neptune },
    -- preprocessor #if, #else, #endif, etc.
    PreCondit = { fg = colors.blue.neptune },
    -- any special symbol
    Special = { fg = colors.red.phobos },
    -- special character in a constant
    SpecialChar = { fg = colors.red.phobos },
    -- you can use CTRL-] on this
    Tag = { fg = colors.green.terra },
    -- character that needs attention like , or .
    Delimiter = { fg = colors.blue.neptune },
    -- special things inside a comment
    SpecialComment = { fg = colors.gray.dust },
    -- debugging statements
    Debug = { fg = colors.yellow.rhea },
    -- text that stands out, HTML links
    Underlined = {
      fg = colors.green.terra, --[[ style = 'underline' ]]
    },
    -- left blank, hidden
    Ignore = {
      fg = colors.blue.neptune,
      bg = colors.gray.void, --[[ style = 'bold' ]]
    },
    -- any erroneous construct
    Error = {
      fg = colors.red.phobos,
      bg = colors.none, --[[ style = 'bold,underline' ]]
    },
    -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Todo = {
      fg = colors.yellow.rhea,
      bg = colors.none, --[[ style = 'bold,italic' ]]
    },
    -- normal comments
    Comment = {
      fg = colors.gray.dust, --[[ style = config.styles.comments ]]
    },
    -- normal if, then, else, endif, switch, etc.
    Conditional = {
      fg = colors.blue.neptune, --[[ style = config.styles.keywords ]]
    },
    -- normal for, do, while, etc.
    Keyword = {
      fg = colors.blue.neptune, --[[ style = config.styles.keywords ]]
    },
    -- normal any other keyword
    Repeat = {
      fg = colors.blue.neptune, --[[ style = config.styles.keywords ]]
    },
    -- normal function names
    Function = {
      fg = colors.blue.neptune, --[[ style = config.styles.functions ]]
    },
    -- any variable name
    Identifier = {
      fg = colors.white.smoke, --[[ style = config.styles.variables ]]
    },
    -- any string
    String = { fg = colors.green.terra },

    htmlLink = { fg = colors.green.terra, underline = true },
    htmlH1 = { fg = colors.blue.triton, bold = true },
    htmlH2 = { fg = colors.red.phobos, bold = true },
    htmlH3 = { fg = colors.green.terra, bold = true },
    htmlH4 = { fg = colors.yellow.rhea, bold = true },
    htmlH5 = { fg = colors.purple.nebula, bold = true },
    markdownBlockquote = { fg = colors.gray.dusk },
    markdownBold = { fg = colors.purple.nebula, bold = true },
    markdownCode = { fg = colors.green.terra },
    markdownCodeBlock = { fg = colors.green.terra },
    markdownCodeDelimiter = { fg = colors.green.terra },
    markdownH1 = { fg = colors.blue.neptune, bold = true },
    markdownH2 = { fg = colors.blue.tidal, bold = true },
    markdownH3 = { fg = colors.blue.triton, bold = true },
    markdownH4 = { fg = colors.green.terra },
    markdownH5 = { fg = colors.green.terra },
    markdownH6 = { fg = colors.green.terra },
    markdownH1Delimiter = { fg = colors.blue.neptune },
    markdownH2Delimiter = { fg = colors.blue.tidal },
    markdownH3Delimiter = { fg = colors.blue.triton },
    markdownH4Delimiter = { fg = colors.green.terra },
    markdownH5Delimiter = { fg = colors.green.terra },
    markdownH6Delimiter = { fg = colors.green.terra },
    markdownId = { fg = colors.yellow.rhea },
    markdownIdDeclaration = { fg = colors.purple.nebula },
    markdownIdDelimiter = { fg = colors.gray.dust },
    markdownLinkDelimiter = { fg = colors.gray.dust },
    markdownItalic = { fg = colors.yellow.rhea, italic = true },
    markdownLinkText = { fg = colors.purple.nebula },
    markdownListMarker = { fg = colors.red.phobos },
    markdownOrderedListMarker = { fg = colors.red.phobos },
    markdownRule = { fg = colors.purple.nebula },
    markdownUrl = { fg = colors.blue.triton, underline = true },

    -- ####### Luna Telescope Groups ###### --

    TelescopePromptPrefix = { bg = colors.gray.deep },
    TelescopePromptTitle = { fg = colors.gray.deep, bg = colors.yellow.titan },
    TelescopePromptNormal = { bg = colors.gray.deep },
    TelescopePromptBorder = { bg = colors.gray.deep, fg = colors.gray.deep },

    TelescopeResultsTitle = { fg = colors.gray.gloom },
    TelescopeResultsNormal = { bg = colors.gray.gloom },
    TelescopeResultsBorder = { bg = colors.gray.gloom, fg = colors.gray.gloom },

    TelescopePreviewTitle = { fg = colors.gray.dark, bg = colors.yellow.titan },
    TelescopePreviewNormal = { bg = colors.gray.dark },
    TelescopePreviewBorder = { bg = colors.gray.dark, fg = colors.gray.dark },

    TelescopeMatching = { fg = colors.yellow.titan },
    TelescopeSelectionCaret = { fg = colors.blue.triton },
    TelescopeSelection = { fg = colors.blue.triton },

    -- ###### Luna Bufferline Groups ####### --
    BufferLineIndicatorSelected = { fg = colors.green.terra, bg = colors.green.terra },
    BufferLineFill = { fg = colors.gray.void, bg = colors.gray.deep },
    BufferLineTabSelected = { fg = colors.red.deimos, bg = colors.gray.void, bold = true, italic = true },
    BufferCurrent = { fg = colors.white.smoke, bg = colors.gray.void },
    BufferCurrentIndex = { fg = colors.white.smoke, bg = colors.gray.void },
    BufferCurrentMod = { fg = colors.yellow.rhea, bg = colors.gray.void, bold = true },
    BufferCurrentSign = { fg = colors.blue.triton, bg = colors.gray.void },
    BufferCurrentTarget = { fg = colors.red.deimos, bg = colors.gray.void, bold = true },
    BufferVisible = { fg = colors.white.smoke, bg = colors.gray.void },
    BufferVisibleIndex = { fg = colors.white.smoke, bg = colors.gray.void },
    BufferVisibleMod = { fg = colors.yellow.rhea, bg = colors.gray.void, bold = true },
    BufferVisibleSign = { fg = colors.gray.dust, bg = colors.gray.void },
    BufferVisibleTarget = { fg = colors.red.phobos, bg = colors.gray.void, bold = true },
    BufferInactive = { fg = colors.gray.dust, bg = colors.gray.gloom },
    BufferInactiveIndex = { fg = colors.gray.dust, bg = colors.gray.gloom },
    BufferInactiveMod = { fg = colors.yellow.rhea, bg = colors.gray.gloom },
    BufferInactiveSign = { fg = colors.gray.dust, bg = colors.gray.gloom },
    BufferInactiveTarget = { fg = colors.red.phobos, bg = colors.gray.gloom, bold = true },

    -- ####### Luna CMP Groups ####### --
    CmpItemAbbr = { fg = colors.white.smoke },
    CmpItemAbbrDeprecated = { fg = colors.white.smoke },
    CmpItemAbbrMatch = { fg = colors.blue.neptune, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = colors.blue.neptune, underline = true },
    CmpItemMenu = { fg = colors.gray.dust },
    CmpItemKindText = { fg = colors.yellow.titan },
    CmpItemKindMethod = { fg = colors.blue.neptune },
    CmpItemKindFunction = { fg = colors.blue.neptune },
    CmpItemKindConstructor = { fg = colors.yellow.rhea },
    CmpItemKindField = { fg = colors.blue.neptune },
    CmpItemKindClass = { fg = colors.yellow.rhea },
    CmpItemKindInterface = { fg = colors.yellow.rhea },
    CmpItemKindModule = { fg = colors.blue.neptune },
    CmpItemKindProperty = { fg = colors.blue.neptune },
    CmpItemKindValue = { fg = colors.yellow.titan },
    CmpItemKindEnum = { fg = colors.yellow.rhea },
    CmpItemKindKeyword = { fg = colors.purple.nebula },
    CmpItemKindSnippet = { fg = colors.green.terra },
    CmpItemKindFile = { fg = colors.blue.neptune },
    CmpItemKindEnumMember = { fg = colors.blue.triton },
    CmpItemKindConstant = { fg = colors.yellow.titan },
    CmpItemKindStruct = { fg = colors.yellow.rhea },
    CmpItemKindTypeParameter = { fg = colors.yellow.rhea },

    -- ####### Luna Git Groups ####### --
    GitSignsAdd = { fg = colors.green.terra },
    GitSignsAddNr = { fg = colors.green.terra },
    GitSignsAddLn = { fg = colors.green.terra },
    GitSignsChange = { fg = colors.yellow.titan },
    GitSignsChangeNr = { fg = colors.yellow.titan },
    GitSignsChangeLn = { fg = colors.yellow.titan },
    GitSignsDelete = { fg = colors.red.phobos },
    GitSignsDeleteNr = { fg = colors.red.phobos },
    GitSignsDeleteLn = { fg = colors.red.phobos },

    GitGutterAdd = { fg = colors.green.terra },
    GitGutterChange = { fg = colors.yellow.titan },
    GitGutterDelete = { fg = colors.red.phobos },

    diffAdded = { fg = colors.green.terra },
    diffRemoved = { fg = colors.red.phobos },
    diffChanged = { fg = colors.yellow.titan },
    diffOldFile = { fg = colors.yellow.rhea },
    diffNewFile = { fg = colors.yellow.rhea },
    diffFile = { fg = colors.blue.tidal },
    diffLine = { fg = colors.gray.dust },
    diffIndexLine = { fg = colors.purple.nebula },

    -- ####### Luna LSP Groups ####### --
    -- used for "Error" diagnostic virtual text
    LspDiagnosticsDefaultError = { fg = colors.red.phobos },
    -- used for "Error" diagnostic signs in sign column
    LspDiagnosticsSignError = { fg = colors.red.phobos },
    -- used for "Error" diagnostic messages in the diagnostics float
    LspDiagnosticsFloatingError = { fg = colors.red.phobos },
    -- Virtual text "Error"
    LspDiagnosticsVirtualTextError = { fg = colors.red.phobos },
    -- used to underline "Error" diagnostics.
    -- LspDiagnosticsUnderlineError = { [[ style = config.styles.diagnostics ]], sp = colors.red.phobos },
    -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsDefaultWarning = { fg = colors.yellow.titan },
    -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsSignWarning = { fg = colors.yellow.titan },
    -- used for "Warning" diagnostic messages in the diagnostics float
    LspDiagnosticsFloatingWarning = { fg = colors.yellow.titan },
    -- Virtual text "Warning"
    LspDiagnosticsVirtualTextWarning = { fg = colors.yellow.titan },
    -- used to underline "Warning" diagnostics.
    -- LspDiagnosticsUnderlineWarning = { style = config.styles.diagnostics, sp = colors.yellow.titan },
    -- used for "Information" diagnostic virtual text
    LspDiagnosticsDefaultInformation = { fg = colors.yellow.rhea },
    -- used for "Information" diagnostic signs in sign column
    LspDiagnosticsSignInformation = { fg = colors.yellow.rhea },
    -- used for "Information" diagnostic messages in the diagnostics float
    LspDiagnosticsFloatingInformation = { fg = colors.yellow.rhea },
    -- Virtual text "Information"
    LspDiagnosticsVirtualTextInformation = { fg = colors.yellow.rhea },
    -- used to underline "Information" diagnostics.
    -- LspDiagnosticsUnderlineInformation = { style = config.styles.diagnostics, sp = colors.yellow.rhea },
    -- used for "Hint" diagnostic virtual text
    LspDiagnosticsDefaultHint = { fg = colors.green.terra },
    -- used for "Hint" diagnostic signs in sign column
    LspDiagnosticsSignHint = { fg = colors.green.terra },
    -- used for "Hint" diagnostic messages in the diagnostics float
    LspDiagnosticsFloatingHint = { fg = colors.green.terra },
    -- Virtual text "Hint"
    LspDiagnosticsVirtualTextHint = { fg = colors.green.terra },
    -- used to underline "Hint" diagnostics.
    LspDiagnosticsUnderlineHint = { underline = true, fg = colors.green.terra },
    -- used for highlighting "text" references
    LspReferenceText = { underline = true, fg = colors.yellow.rhea },
    -- used for highlighting "read" references
    LspReferenceRead = { underline = true, fg = colors.yellow.rhea },
    -- used for highlighting "write" references
    LspReferenceWrite = { underline = true, fg = colors.yellow.rhea },

    LspSignatureActiveParameter = { fg = colors.none, bg = colors.gray.deep, bold = true },
    LspCodeLens = { fg = colors.gray.dust },

    NvimTreeSymlink = { fg = colors.blue.triton , bold = true },
    NvimTreeRootFolder = { fg = colors.green.terra, bold = true },
    NvimTreeFolderName = { fg = colors.blue.tidal },
    NvimTreeFolderIcon = { fg = colors.blue.neptune },
    NvimTreeEmptyFolderName = { fg = colors.gray.dusk },
    NvimTreeOpenedFolderName = { fg = colors.green.terra, italic = true },
    NvimTreeIndentMarker = { fg = colors.blue.tidal },
    NvimTreeGitDirty = { fg = colors.yellow.titan },
    NvimTreeGitNew = { fg = colors.green.terra },
    NvimTreeGitStaged = { fg = colors.purple.nebula },
    NvimTreeGitDeleted = { fg = colors.red.deimos },
    NvimTreeExecFile = { fg = colors.green.terra, bold = true },
    NvimTreeOpenedFile = { fg = colors.none },
    NvimTreeSpecialFile = { fg = colors.yellow.titan, underline = true},
    NvimTreeImageFile = { fg = colors.purple.nebula, bold = true },
    NvimTreeNormal = { fg = colors.white.smoke, bg = colors.active },
    NvimTreeCursorLine = { bg = colors.gray.gloom },
    NvimTreeVertSplit = { fg = colors.gray.dusk, bg = colors.gray.dusk },
    LspDiagnosticsError = { fg = colors.red.deimos },
    LspDiagnosticsWarning = { fg = colors.yellow.titan },
    LspDiagnosticsInformation = { fg = colors.green.terra },
    LspDiagnosticsHint = { fg = colors.blue.tidal },
  }
  return groups
end

return M
