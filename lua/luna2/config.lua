local config = {}

local defaults = {
  custom_colors = {},
}

config.options = {}

function config.set_options(opts)
  config.options = vim.tbl_deep_extend('force', config.options, opts or {})
end

config.set_options(defaults)

return config
