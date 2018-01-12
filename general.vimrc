set nocompatible         " get rid of Vi compatibility mode. SET FIRST!
set so=10                " number of scrolloff lines
set term=xterm-256color  " set term
"set relativenumber
set visualbell
set noerrorbells
set novisualbell
"Slow start up of vim because of accessing X clipboard
"set clipboard=autoselect,exclude:cons\\\|linux\\\|screen
"if $DISPLAY =~ '\(\(cos\|scs\)\d\+nai\d\+\)\|\(spkpc\d\+\)\|\(tc-garyjohn\)'
"    set clipboard=autoselect,exclude:.*
"endif
set clipboard=exclude:*
set lazyredraw
set ttyfast

if has('mouse')
    set mouse=a
endif
"For tmux 2.2
"set ttymouse=xterm2

"For omnicppcomplete
"set nocp

set backspace=indent,eol,start
"set t_kb=
"fixdel
"let g:pymode_paths=['/home/asadough/bin/Python-2.6.2']

source /bbsrc/princeton/skunk/vim/cursor.vim
