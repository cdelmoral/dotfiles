let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

augroup prettier_apex
    autocmd!
    autocmd BufWritePost *.cls PrettierAsync
augroup END

