set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).
color molokai             " set colorscheme
set t_ut=
if &term =~ '256color'
      " disable Background Color Erase (BCE) so that color schemes
      " render properly when inside 256-color tmux and GNU screen.
      " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
      set t_ut=
endif
"
" Prettify JSON files
"autocmd BufRead,BufNewFile *.json set filetype=json
"autocmd Syntax json sou ~/.vim/syntax/json.vim

" Prettify Vagrantfile
" :autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby

" Highlight characters that go over 80 columns
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

" Show a warning color for columns 77-80 and error color for over 80 chars.
"au BufWinEnter * let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
"au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

"set background=dark
"colorscheme solarized

"color schema for visual mode
hi Visual term=reverse cterm=reverse


"set syntax=cpp.doxygen
let g:load_doxygen_syntax=1

"let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
"let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
"let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Amir H. Sadoughi"
