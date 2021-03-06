local M = {}

local luna = require('luna.colors.luna')
-- local titan = require("luna.colors.titan")

M.load = function()
  local theme = require('luna.config').options.theme
  if not theme then
    theme = vim.o.background
  end

  if theme == 'luna' then
    return luna
  end
end

return M
