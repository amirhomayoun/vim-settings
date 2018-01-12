execute pathogen#infect()

filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]

set omnifunc=syntaxcomplete#Complete

" In Makefiles DO NOT use spaces instead of tabs
" autocmd FileType make setlocal noexpandtab
" In Ruby files, use 2 spaces instead of 4 for tabs
" autocmd FileType ruby setlocal sw=2 ts=2 sts=2

" Enable omnicompletion (to use, hold Ctrl+X then Ctrl+O while in Insert mode.
" set ofu=syntaxcomplete#Complete

" Automatically fix indentations before saving
"autocmd BufWritePre *.{c,cpp,h} :normal gg=G

" Get rid of trailing white spaces before saving
"autocmd BufWritePre * :%s/\s\+$//e

" Remove extra empty lines
"autocmd BufWritePre *.{c,cpp,h} %s/\n\{3,}/\r\r/e
