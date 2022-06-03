local M = {}

-- @function load
-- @desc Loads the highlight group for misc highlights.
-- @param color - The colors table.
M.load_misc = function(colors)
  local misc = {
    IndentBlanklineChar = { fg = colors.selection, style = 'nocombine' },
    IndentBlanklineContextChar = { fg = colors.cyan, style = 'nocombine' },
  }
  return misc
end

return M
