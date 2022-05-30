local M = {}

-- @function load
-- @desc Loads the highlight group for syntax colors.
-- @param colors - The colors table.
-- @param config - The configuration table.
M.load = function(color, config)
  print("and here")
  local syntax = {
    -- Example:
    -- Type = { fg = color.blue }
    Normal = { fg = color.bg , bg = color.bg },
  }
  return syntax
end

return M
