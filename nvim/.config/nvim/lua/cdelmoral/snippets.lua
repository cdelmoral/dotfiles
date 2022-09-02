local luasnip = require('luasnip');

local snippets_paths = function()
	local plugins = { 'friendly-snippets' }
	local paths = {}
	local path
	local root_path = vim.env.HOME .. '/.vim/plugged/'
	for _, plug in ipairs(plugins) do
		path = root_path .. plug
		if vim.fn.isdirectory(path) ~= 0 then
			table.insert(paths, path)
		end
	end
	return paths
end

require('luasnip.loaders.from_vscode').lazy_load({
	paths = snippets_paths(),
	include = nil, -- Load all languages
	exclude = {},
})

luasnip.config.set_config {
    updateevents = 'TextChanged,TextChangedI',
}

vim.keymap.set({'i', 's'}, '<c-k>', function()
    if luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
    end
end, { silent = true })

vim.keymap.set({'i', 's'}, '<c-j>', function()
    if luasnip.jumpable(-1) then
        luasnip.jump(-1)
    end
end, { silent = true })

local s = luasnip.s
local fmt = require('luasnip.extras.fmt').fmt
local i = luasnip.insert_node
local rep = require('luasnip.extras').rep

luasnip.add_snippets('apexcode', {
        s('ld', fmt('Logger.debug(\'{} =>\', {});', { i(1, 'variable'), rep(1) })),
        s('sa', fmt('System.assert({});', { i(1, 'isTrue') })),
        s('sae', fmt('System.assertEquals({}, {});', { i(1, 'expected'), i(2, 'actual') })),
        s('sane', fmt('System.assertNotEquals({}, {});', { i(1, 'notexpected'), i(2, 'actual') })),
})

