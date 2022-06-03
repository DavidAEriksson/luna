local M = {}

-- @function load
-- @desc Loads the highlight group for LSP highlights.
-- @param color - The colors table.
-- @param config - The configuration table.
M.load_nvim_tree = function(colors, config)
  local nvim_tree = {
    NvimTreeSymlink = { fg = colors.cyan, style = 'bold' },
    NvimTreeRootFolder = { fg = colors.green, style = 'bold' },
    NvimTreeFolderName = { fg = colors.blue },
    NvimTreeFolderIcon = { fg = colors.dark_blue },
    NvimTreeEmptyFolderName = { fg = colors.light_gray },
    NvimTreeOpenedFolderName = { fg = colors.yellow, style = 'italic' },
    NvimTreeIndentMarker = { fg = colors.blue },
    NvimTreeGitDirty = { fg = colors.yellow },
    NvimTreeGitNew = { fg = colors.diff_add },
    NvimTreeGitStaged = { fg = colors.purple },
    NvimTreeGitDeleted = { fg = colors.diff_remove },
    NvimTreeExecFile = { fg = colors.green, style = 'bold' },
    NvimTreeOpenedFile = { fg = colors.none },
    NvimTreeSpecialFile = { fg = colors.orange, style = 'underline' },
    NvimTreeImageFile = { fg = colors.purple, style = 'bold' },
    NvimTreeNormal = { fg = colors.fg, bg = colors.active },
    NvimTreeCursorLine = { bg = colors.float },
    NvimTreeVertSplit = { fg = colors.float , bg = colors.float },
    LspDiagnosticsError = { fg = colors.error },
    LspDiagnosticsWarning = { fg = colors.warn },
    LspDiagnosticsInformation = { fg = colors.info },
    LspDiagnosticsHint = { fg = colors.hint },
  }

  if config.disable.background then
    NvimTreeNormal = { fg = colors.fg, bg = colors.none }
  end
  return nvim_tree
end

return M
