vim.opt.relativenumber = true

vim.keymap.set('n', '<leader>x', ':Explore', { desc = 'Open the local-directory browser' })

local augroup = vim.api.nvim_create_augroup

local apexcode_group = augroup('apexcode', {})
local autocmd = vim.api.nvim_create_autocmd
autocmd({ 'BufNewFile', 'BufRead' }, {
	group = apexcode_group,
	pattern = { '*.cls', '*.trigger' },
	callback = function()
		vim.opt.filetype = 'apexcode'
		vim.opt.syntax = 'java'
	end
})