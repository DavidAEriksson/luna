local M = {}

-- @function load
-- @desc Loads the highlight group for LSP highlights.
-- @param color - The colors table.
-- @param config - The configuration table.
M.load_lsp = function(colors, config)
  local lsp = {
    -- used for "Error" diagnostic virtual text
    LspDiagnosticsDefaultError = { fg = colors.error },
    -- used for "Error" diagnostic signs in sign column
    LspDiagnosticsSignError = { fg = colors.error },
    -- used for "Error" diagnostic messages in the diagnostics float
    LspDiagnosticsFloatingError = { fg = colors.error },
    -- Virtual text "Error"
    LspDiagnosticsVirtualTextError = { fg = colors.error },
    -- used to underline "Error" diagnostics.
    LspDiagnosticsUnderlineError = { style = config.styles.diagnostics, sp = colors.error },
    -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsDefaultWarning = { fg = colors.warn },
    -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsSignWarning = { fg = colors.warn },
    -- used for "Warning" diagnostic messages in the diagnostics float
    LspDiagnosticsFloatingWarning = { fg = colors.warn },
    -- Virtual text "Warning"
    LspDiagnosticsVirtualTextWarning = { fg = colors.warn },
    -- used to underline "Warning" diagnostics.
    LspDiagnosticsUnderlineWarning = { style = config.styles.diagnostics, sp = colors.warn },
    -- used for "Information" diagnostic virtual text
    LspDiagnosticsDefaultInformation = { fg = colors.info },
    -- used for "Information" diagnostic signs in sign column
    LspDiagnosticsSignInformation = { fg = colors.info },
    -- used for "Information" diagnostic messages in the diagnostics float
    LspDiagnosticsFloatingInformation = { fg = colors.info },
    -- Virtual text "Information"
    LspDiagnosticsVirtualTextInformation = { fg = colors.info },
    -- used to underline "Information" diagnostics.
    LspDiagnosticsUnderlineInformation = { style = config.styles.diagnostics, sp = colors.info },
    -- used for "Hint" diagnostic virtual text
    LspDiagnosticsDefaultHint = { fg = colors.hint },
    -- used for "Hint" diagnostic signs in sign column
    LspDiagnosticsSignHint = { fg = colors.hint },
    -- used for "Hint" diagnostic messages in the diagnostics float
    LspDiagnosticsFloatingHint = { fg = colors.hint },
    -- Virtual text "Hint"
    LspDiagnosticsVirtualTextHint = { fg = colors.hint },
    -- used to underline "Hint" diagnostics.
    LspDiagnosticsUnderlineHint = { style = config.styles.diagnostics, sp = colors.hint },
    -- used for highlighting "text" references
    LspReferenceText = { style = 'underline', sp = colors.yellow },
    -- used for highlighting "read" references
    LspReferenceRead = { style = 'underline', sp = colors.yellow },
    -- used for highlighting "write" references
    LspReferenceWrite = { style = 'underline', sp = colors.yellow },

    LspSignatureActiveParameter = { fg = colors.none, bg = colors.highlight_dark, style = 'bold' },
    LspCodeLens = { fg = colors.light_gray },

    DiagnosticError = { link = 'LspDiagnosticsDefaultError' },
    DiagnosticWarn = { link = 'LspDiagnosticsDefaultWarning' },
    DiagnosticInfo = { link = 'LspDiagnosticsDefaultInformation' },
    DiagnosticHint = { link = 'LspDiagnosticsDefaultHint' },
    DiagnosticVirtualTextWarn = { link = 'LspDiagnosticsVirtualTextWarning' },
    DiagnosticUnderlineWarn = { link = 'LspDiagnosticsUnderlineWarning' },
    DiagnosticFloatingWarn = { link = 'LspDiagnosticsFloatingWarning' },
    DiagnosticSignWarn = { link = 'LspDiagnosticsSignWarning' },
    DiagnosticVirtualTextError = { link = 'LspDiagnosticsVirtualTextError' },
    DiagnosticUnderlineError = { link = 'LspDiagnosticsUnderlineError' },
    DiagnosticFloatingError = { link = 'LspDiagnosticsFloatingError' },
    DiagnosticSignError = { link = 'LspDiagnosticsSignError' },
    DiagnosticVirtualTextInfo = { link = 'LspDiagnosticsVirtualTextInformation' },
    DiagnosticUnderlineInfo = { link = 'LspDiagnosticsUnderlineInformation' },
    DiagnosticFloatingInfo = { link = 'LspDiagnosticsFloatingInformation' },
    DiagnosticSignInfo = { link = 'LspDiagnosticsSignInformation' },
    DiagnosticVirtualTextHint = { link = 'LspDiagnosticsVirtualTextHint' },
    DiagnosticUnderlineHint = { link = 'LspDiagnosticsUnderlineHint' },
    DiagnosticFloatingHint = { link = 'LspDiagnosticsFloatingHint' },
    DiagnosticSignHint = { link = 'LspDiagnosticsSignHint' },
  }
  return lsp
end

return M
