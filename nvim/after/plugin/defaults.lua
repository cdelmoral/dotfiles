vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.hidden = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>x', ':Explore<CR>', { desc = 'E[X]plore local directory' })
vim.keymap.set('n', '<leader>sk', require('telescope.builtin').keymaps, { desc = '[S]earch [K]eymaps' })

vim.g['prettier#autoformat'] = '1'
vim.g['prettier#autoformat_require_pragma'] = '0'
