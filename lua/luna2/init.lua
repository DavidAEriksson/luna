local utils = require('luna2.utils')
local config = require('luna2.config')

local M = {}

function M.setup(options)
  config.set_options(options)
  M.load()
end

function M.load()
  local colors = require('luna2.colors').load()
  utils.load(colors)
end

return M
