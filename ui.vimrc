set number                " show line numbers
set nocul                 " highlight current line
set laststatus=2          " last window always has a statusline
set hlsearch              " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
"set ignorecase            " Make searches case-insensitive.
set smartcase
set ruler                 " Always show info along bottom.
set showmatch
"set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
"set statusline=
"set statusline +=%1*\ %n\ %*            "buffer number
"set statusline +=%5*%{&ff}%*            "file format
"set statusline +=%3*%y%*                "file type
"set statusline +=%4*\ %<%F%*            "full path
"set statusline +=%2*%m%*                "modified flag
"set statusline +=%1*%=%5l%*             "current line
"set statusline +=%2*/%L%*               "total lines
"set statusline +=%1*%4v\ %*             "virtual column number
"set statusline +=%2*0x%04B\ %*          "character under cursor

" default the statusline to green when entering Vim
" hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

hi User1 guifg=#eea040 guibg=#222222
hi User2 guifg=#dd3333 guibg=#222222
hi User3 guifg=#ff66ff guibg=#222222
hi User4 guifg=#a0ee40 guibg=#222222
hi User5 guifg=#eeee40 guibg=#222222

"set cul                                           " highlight current line
"hi CursorLine term=none cterm=none ctermbg=3      " adjust color
set modeline
set ls=2
set cindent
:ab #b /****************************************
:ab #e ^V^H*****************************************/
" set clipboard=unnamed " It is apparently for Window$
set clipboard=unnamedplus
set nu

" Resize the current split to at least (90,25) but no more than (140,260)
" or 2/3 of the available space otherwise.
function Splitresize()
    let hmax = max([winwidth(0), float2nr(&columns*0.66), 160])
    let vmax = max([winheight(0), float2nr(&lines*0.66), 25])
    exe "vertical resize" . (min([hmax, 160]))
    exe "resize" . (min([vmax, 260]))
endfunction
