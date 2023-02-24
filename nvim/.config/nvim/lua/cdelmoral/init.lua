require('cdelmoral.lsp')
require('cdelmoral.snippets')
require('cdelmoral.harpoon')

local custom_gruvbox = require'lualine.themes.gruvbox'
require('lualine').setup {
    options = { theme = custom_gruvbox },
}
