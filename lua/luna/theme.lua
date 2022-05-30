local M = {}

-- Loads all highlight groups
M.highlights = function(colors, config)
  print("here")
  local syntax = require('luna.colors.groups.syntax').load(colors, config)

  return syntax
end

return M
