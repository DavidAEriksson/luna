local M = {}

-- @function load
-- @desc Loads the highlight group for GitSigns highlights.
-- @param color - The colors table.
-- @param config - The configuration table.
M.load_git = function(colors)
  local git = {
    GitSignsAdd = { fg = colors.diff_add },
    GitSignsAddNr = { fg = colors.diff_add },
    GitSignsAddLn = { fg = colors.diff_add },
    GitSignsChange = { fg = colors.diff_change }, 
    GitSignsChangeNr = { fg = colors.diff_change },
    GitSignsChangeLn = { fg = colors.diff_change },
    GitSignsDelete = { fg = colors.diff_remove },
    GitSignsDeleteNr = { fg = colors.diff_remove },
    GitSignsDeleteLn = { fg = colors.diff_remove },

    GitGutterAdd = { fg = colors.diff_add },
    GitGutterChange = { fg = colors.diff_change },
    GitGutterDelete = { fg = colors.diff_remove },

    diffAdded = { fg = colors.diff_add },
    diffRemoved = { fg = colors.diff_remove },
    diffChanged = { fg = colors.diff_change },
    diffOldFile = { fg = colors.yellow },
    diffNewFile = { fg = colors.orange },
    diffFile = { fg = colors.blue },
    diffLine = { fg = colors.light_gray },
    diffIndexLine = { fg = colors.purple }

  }
  return git
end

return M
