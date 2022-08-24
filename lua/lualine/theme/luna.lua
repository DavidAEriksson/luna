local colors = require('luna.colors').load()

local onenord = {}

onenord.normal = {
  a = { fg = colors.gray.void, bg = colors.blue.triton, gui = 'bold' },
  b = { fg = colors.blue.triton, bg = colors.gray.gloom },
  c = { fg = colors.white.smoke, bg = colors.gray.dark },
}

onenord.insert = {
  a = { fg = colors.gray.void, bg = colors.green.terra, gui = 'bold' },
  b = { fg = colors.green.terra, bg = colors.gray.gloom },
}

onenord.command = {
  a = { fg = colors.gray.void, bg = colors.yellow.rhea, gui = 'bold' },
  b = { fg = colors.yellow.rhea, bg = colors.gray.gloom },
}

onenord.visual = {
  a = { fg = colors.gray.void, bg = colors.purple.nebula, gui = 'bold' },
  b = { fg = colors.purple.nebula, bg = colors.gray.gloom },
}

onenord.replace = {
  a = { fg = colors.gray.void, bg = colors.red.deimos, gui = 'bold' },
  b = { fg = colors.red.deimos, bg = colors.gray.gloom },
}

onenord.inactive = {
  a = { fg = colors.gray.smoke, bg = colors.gray.deep, gui = 'bold' },
  b = { fg = colors.gray.smoke, bg = colors.gray.deep },
  c = { fg = colors.gray.smoke, bg = colors.gray.dark },
}

return onenord
