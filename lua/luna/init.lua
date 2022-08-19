local utils = require('luna.utils')
local config = require('luna.config')

local M = {}

function M.setup(options)
  config.set_options(options)
  M.load()
end

function M.load()
  local colors = require('luna.colors').load()
  utils.load(colors)
end

return M
