""""""""""""""""""""""""""""""""""""""""""""""
" Set leader to space key
""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = " "

""""""""""""""""""""""""""""""""""""""""""""""
" Vim re-maps
""""""""""""""""""""""""""""""""""""""""""""""

" Resize vertical to 30%
nnoremap <leader>ft :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

" Close buffer
nnoremap <leader>c :bd<CR>

" Open newtr
nnoremap <leader>e :Explore<CR>

""""""""""""""""""""""""""""""""""""""""""""""
" Telesecope re-maps
""""""""""""""""""""""""""""""""""""""""""""""

" Find Files
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files({layout_strategy='vertical'})<CR>

" Find Global
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep({layout_strategy='vertical'})<CR>

" Find Buffers
nnoremap <leader>fb <cmd>Telescope buffers<CR>

""""""""""""""""""""""""""""""""""""""""""""""
" Harpoon re-maps
""""""""""""""""""""""""""""""""""""""""""""""

" Harpoon!
nnoremap <leader>hh <cmd>lua require('harpoon.mark').add_file()<CR>

" Harpoon List
nnoremap <leader>hl <cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>

" Harpoon Next
nnoremap <leader>hj <cmd>lua require('harpoon.ui').nav_next()<CR>

" Harpoon Previous
nnoremap <leader>hk <cmd>lua require('harpoon.ui').nav_prev()<CR>

""""""""""""""""""""""""""""""""""""""""""""""
" Fugitive
""""""""""""""""""""""""""""""""""""""""""""""

" Git Log

nnoremap <leader>gl :Git log %<CR>

