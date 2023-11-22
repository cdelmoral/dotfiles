local augroup = vim.api.nvim_create_augroup

local apex_group = augroup("apex", {})
local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWritePost", {
	group = apex_group,
	pattern = { "*.cls", "*.trigger" },
	command = "PrettierAsync",
})
