" Telesecope re-maps
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files({layout_strategy='vertical'})<CR>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep({layout_strategy='vertical'})<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>

