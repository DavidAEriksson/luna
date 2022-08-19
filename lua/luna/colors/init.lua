local M = {}

local luna = require('luna.colors.luna')

M.load = function()
  local theme = require('luna.config').options.theme
  if not theme then
    theme = vim.o.background
  end

  -- This will enable theme toggling in the future
  -- when there are more sub-themes
  if theme == 'luna' then
    return luna
  end
end

return M
