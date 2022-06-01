package.loaded['luna'] = nil
package.loaded['luna.utils'] = nil
package.loaded['luna.colors'] = nil
package.loaded['luna.colors.luna'] = nil
package.loaded['luna.theme'] = nil

vim.api.nvim_set_keymap('n', ',r', ':luafile dev/luna.lua<CR>', {})
vim.api.nvim_set_keymap('n', ',s', ':colorscheme onenord<CR>', {})

local luna = require('luna')

luna.setup({ theme = 'luna' })
luna.load(false)
