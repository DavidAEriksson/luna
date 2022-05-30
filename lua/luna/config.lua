local config = {}

local defaults = {
  -- Custom options will go here
  theme = nil,
  -- and more will follow
  custom_colors = {},
  custom_highlights = {},
}

config.options = {}

function config.set_options(opts)
  config.options = vim.tbl_deep_extend("force", config.options, opts or {})
end

config.set_options(defaults)

return config
