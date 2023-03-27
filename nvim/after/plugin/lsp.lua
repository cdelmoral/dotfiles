local cmp = require 'cmp'
local lspkind = require 'lspkind'

local source_mapping = {
  buffer = '[buf]',
  nvim_lsp = '[LSP]',
  nvim_lua = '[lua]',
  path = '[/]',
}

cmp.setup {
  mapping = cmp.mapping.preset.insert {
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer',  keyword_length = 5 },
  },
  formatting = {
    format = lspkind.cmp_format({
      menu = source_mapping,
    }),
  },
}
