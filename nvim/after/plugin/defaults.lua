vim.opt.relativenumber = true

vim.keymap.set('n', '<leader>x', ':Explore<CR>', { desc = 'E[X]plore local directory' })

vim.g['prettier#autoformat'] = '1'
vim.g['prettier#autoformat_require_pragma'] = '0'
