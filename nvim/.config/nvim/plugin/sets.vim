set exrc
set relativenumber
set nu
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
" set undofile
set incsearch
set scrolloff=8
set nohlsearch
set hidden
set background=dark
set wildignore+=**/node_modules/*
set wildignore+=**/.sfdx/*
set wildignore+=**/coverage/*
set pumheight=10

augroup syntax_apex
   autocmd!
   autocmd BufNewFile,BufRead *.cls,*.trigger set syntax=java
augroup END
