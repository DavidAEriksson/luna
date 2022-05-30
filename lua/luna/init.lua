-- local utils = require('luna.utils')
-- local theme = require('luna.theme')

local config = require("luna.config")
local utils = require("luna.utils")

local M = {}

M.setup = function(options)
  config.set_options(options)
  M.load(true)
end

M.load = function(exec_autocmd)
  local colors = require("luna.colors").load()
  utils.load(colors, exec_autocmd)
end

return M
