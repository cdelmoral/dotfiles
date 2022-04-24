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

" LSP
Plug 'neovim/nvim-lspconfig'

" Auto Complete
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind-nvim'

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

" Cooklang
Plug 'luizribeiro/vim-cooklang', { 'for': 'cook' }

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" Harpoon
Plug 'ThePrimeagen/harpoon'

" Initialize plugin system
call plug#end()            " required

syntax on
colorscheme gruvbox

set completeopt=menu,menuone,noselect

lua require'nvim-treesitter.configs'.setup { ensure_installed = { "java" }, sync_install = true, highlight = { enable = true } }
lua require('cdelmoral')

