local M = {}

-- @function load
-- @desc Loads the highlight group for syntax color.
-- @param color - The color table.
-- @param config - The configuration table.
M.load_ed = function(color, config)
  local editor = {
    NormalFloat = { bg = color.float },
    -- floating window border
    FloatBorder = { fg = color.float, bg = color.float },
    -- used for the columns set with 'colorcolumn'
    ColorColumn = { fg = color.none, bg = color.float },
    -- placeholder characters substituted for concealed text (see 'conceallevel')
    Conceal = { bg = color.bg },
    -- the character under the cursor
    Cursor = { fg = color.fg, bg = color.none, style = 'reverse' },
    -- like Cursor, but used when in IME mode
    CursorIM = { fg = color.fg, bg = color.none, style = 'reverse' },
    -- directory names (and other special names in listings)
    Directory = { fg = color.blue, bg = color.none },
    -- diff mode: Added line
    DiffAdd = { fg = color.none, bg = color.diff_add_bg },
    -- diff mode: Changed line
    DiffChange = { fg = color.none, bg = color.diff_change_bg },
    -- diff mode: Deleted line
    DiffDelete = { fg = color.none, bg = color.diff_remove_bg },
    -- diff mode: Changed text within a changed line
    DiffText = { fg = color.none, bg = color.diff_text_bg },
    -- error messages
    ErrorMsg = { fg = color.error },
    -- line used for closed folds
    Folded = { fg = color.dark_blue, bg = color.none, style = 'italic' },
    -- 'foldcolumn'
    FoldColumn = { fg = color.light_gray },
    -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    IncSearch = { fg = color.orange },
    -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNr = { fg = color.light_gray },
    -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    CursorLineNr = { fg = color.fg },
    -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    MatchParen = { fg = color.yellow, bg = color.none, style = 'bold' },
    -- 'showmode' message (e.g., "-- INSERT -- ")
    ModeMsg = { fg = color.blue, style = 'bold' },
    -- |more-prompt|
    MoreMsg = { fg = color.blue, style = 'bold' },
    -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist
    -- in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
    -- See also |hl-EndOfBuffer|.
    NonText = { fg = color.bg },
    -- normal item |hl-Pmenu|
    Pmenu = { fg = color.fg, bg = color.float },
    -- selected item |hl-PmenuSel|
    PmenuSel = { bg = color.selection },
    -- scrollbar |hl-PmenuSbar|
    PmenuSbar = { bg = color.float },
    -- thumb of the scrollbar  |hl-PmenuThumb|
    PmenuThumb = { bg = color.fg },
    -- |hit-enter| prompt and yes/no questions
    Question = { fg = color.green },
    -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    QuickFixLine = { bg = color.float, style = 'bold,italic' },
    -- Line numbers for quickfix lists
    qfLineNr = { fg = color.purple },
    -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    Search = { fg = color.blue, bg = color.selection, style = 'bold' },
    -- Unprintable characters: text displayed differently from what it really is.
    -- But not 'listchars' whitespace. |hl-Whitespace|
    SpecialKey = { fg = color.dark_blue },
    -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellBad = { fg = color.red, bg = color.none, style = 'italic,underline', sp = color.red },
    -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellCap = { fg = color.yellow, bg = color.none, style = 'italic,underline', sp = color.yellow },
    -- Word that is recognized by the spellchecker as one that is used in another region.
    -- |spell| Combined with the highlighting used otherwise.
    SpellLocal = { fg = color.cyan, bg = color.none, style = 'italic,underline', sp = color.cyan },
    -- Word that is recognized by the spellchecker as one that is hardly ever used.
    -- |spell| Combined with the highlighting used otherwise.
    SpellRare = { fg = color.purple, bg = color.none, style = 'italic,underline', sp = color.purple },
    -- status line of current window
    StatusLine = { fg = color.fg, bg = color.active },
    -- status lines of not-current windows Note: if this is equal to "StatusLine"
    -- Vim will use "^^^" in the status line of the current window.
    StatusLineNC = { fg = color.light_gray, bg = color.active },
    -- status line of current terminal window
    StatusLineTerm = { fg = color.fg, bg = color.active },
    -- status lines of not-current terminal windows Note: if this is equal to "StatusLine"
    -- Vim will use "^^^" in the status line of the current window.
    StatusLineTermNC = { fg = color.light_gray, bg = color.active },
    -- tab pages line, where there are no labels
    TabLineFill = { fg = color.light_gray, bg = color.active },
    -- tab pages line, active tab page label
    TablineSel = { fg = color.cyan, bg = color.bg },
    Tabline = { fg = color.light_gray, bg = color.active },
    -- titles for output from ":set all", ":autocmd" etc.
    Title = { fg = color.green, bg = color.none, style = 'bold' },
    -- Visual mode selection
    Visual = { fg = color.none, bg = color.highlight },
    -- Visual mode selection when vim is "Not Owning the Selection".
    VisualNOS = { fg = color.none, bg = color.highlight },
    -- warning messages
    WarningMsg = { fg = color.warn },
    -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Whitespace = { fg = color.gray },
    -- current match in 'wildmenu' completion
    WildMenu = { fg = color.yellow, bg = color.none, style = 'bold' },
    -- window bar of current window
    WinBar = { fg = color.fg, bg = color.bg },
    -- window bar of not-current windows
    WinBarNC = { fg = color.light_gray, bg = color.bg },
    -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorColumn = { fg = color.none, bg = color.float },
    -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorLine = { fg = color.none, bg = color.active },
    -- Normal mode message in the cmdline
    NormalMode = { fg = color.cyan, bg = color.none, style = 'reverse' },
    -- Insert mode message in the cmdline
    InsertMode = { fg = color.green, bg = color.none, style = 'reverse' },
    -- Replace mode message in the cmdline
    ReplacelMode = { fg = color.red, bg = color.none, style = 'reverse' },
    -- Visual mode message in the cmdline
    VisualMode = { fg = color.purple, bg = color.none, style = 'reverse' },
    -- Command mode message in the cmdline
    CommandMode = { fg = color.yellow, bg = color.none, style = 'reverse' },
    Warnings = { fg = color.warn },

    healthError = { fg = color.error },
    healthSuccess = { fg = color.green },
    healthWarning = { fg = color.warn },

    -- Dashboard
    DashboardShortCut = { fg = color.cyan },
    DashboardHeader = { fg = color.blue },
    DashboardCenter = { fg = color.purple },
    DashboardFooter = { fg = color.green, style = 'italic' },

    -- normal text and background color
    Normal = { fg = color.fg, bg = color.bg },
    NormalNC = { bg = color.bg },
    SignColumn = { fg = color.fg, bg = color.none },

    -- the column separating vertically split windows
    VertSplit = { fg = color.selection },

    EndOfBuffer = { fg = color.bg },
  }

  if config.fade_nc then
    editor.NormalNC['bg'] = color.active
    editor.NormalFloat['bg'] = color.bg
    editor.FloatBorder['bg'] = color.bg
  end

  -- Options:

  return editor
end

return M
