let mapleader = " "

nnoremap <leader>ft :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <C-j> :bnext<CR>
nnoremap <C-k> :bprev<CR>
nnoremap <C-c> :bd<CR>
nnoremap <C-e> :Explore<CR>

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Custom color scheme
Plug 'morhetz/gruvbox'

" Telescope dependencies
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Fugitive
Plug 'tpope/vim-fugitive'

" Prettier
Plug 'prettier/vim-prettier'

" Airline
Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" Tree Sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Initialize plugin system
call plug#end()            " required

syntax on
colorscheme gruvbox

lua require'nvim-treesitter.configs'.setup { ensure_installed = { "java" }, sync_install = true, highlight = { enable = true } }
