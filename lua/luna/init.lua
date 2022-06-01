local config = require('luna.config')
local utils = require('luna.utils')

local luna = {}

function luna.setup(options)
  config.set_options(options)
  luna.load(true)
end

function luna.load(exec_autocmd)
  local colors = require('luna.colors').load()
  utils.load(colors, exec_autocmd)
end

return luna
