local luasnip = require 'luasnip'
local fmt = require('luasnip.extras.fmt').fmt
local rep = require('luasnip.extras').rep

local s = luasnip.s
local i = luasnip.insert_node

luasnip.add_snippets('apex', {
  s('ld', fmt('Logger.debug(\'{} =>\', {});', { i(1, 'variable'), rep(1) })),
  s('sa', fmt('System.assert({});', { i(1, 'isTrue') })),
  s('sae', fmt('System.assertEquals({}, {});', { i(1, 'expected'), i(2, 'actual') })),
  s('sane', fmt('System.assertNotEquals({}, {});', { i(1, 'notexpected'), i(2, 'actual') })),
})
