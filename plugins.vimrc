"let g:miniBufExplMapWindowNavVim = 1        "minibufexplorer
"let g:miniBufExplMapWindowNavArrows = 1     "minibufexplorer
"let g:miniBufExplMapCTabSwitchBufs = 1      "minibufexplorer
"let g:miniBufExplModSelTarget = 1           "minibufexplorer

autocmd BufEnter * :syntax sync fromstart

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Fugitive
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Clean fugitive buffers after checking git objects
autocmd BufReadPost fugitive://* set bufhidden=delete
"Add git branch name to status
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

nnoremap <Leader>ga :Git add %:p<CR><CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit -v -q<CR>
nnoremap <Leader>gt :Gcommit -v -q %:p<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gl :silent! Glog<CR>:bot copen<CR>
"nnoremap <Leader>gL :exe ':!cd ' . expand('%:p:h') . '; git la'<CR>
"nnoremap <Leader>gl :exe ':!cd ' . expand('%:p:h') . '; git las'<CR>
"nnoremap <Leader>gh :Silent Glog<CR>
"nnoremap <Leader>gH :Silent Glog<CR>:set nofoldenable<CR>
"Gread is dangerous in my opinion, will disable it for now
"nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gp :Ggrep<Space>
nnoremap <Leader>go :Git checkout<Space>
nnoremap <Leader>g- :Silent Git stash<CR>:e<CR>
nnoremap <Leader>g+ :Silent Git stash pop<CR>:e<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" FuzzyFinder
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi Pmenu ctermbg=red
hi Pmenu ctermfg=black

" This option stops the number of changes after search and replace (?)
"let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 1000
let g:fuf_mrucmd_maxItem = 400
let g:fuf_mrufile_exclude = '\v\~$|\.(o|d|bak|tsk|sw[po])$|^(\/\/|\\\\|\/mnt\/)'
nnoremap <silent> <C-n>      :FufBuffer<CR>
nnoremap <silent> <Leader>n      :FufBuffer<CR>
"nnoremap <silent> <C-p>      :FufFileWithCurrentBufferDir<CR>
nnoremap <silent> <Leader>p      :FufFileWithCurrentBufferDir<CR>
"nnoremap <silent> <C-f><C-p> :FufFileWithFullCwd<CR>
nnoremap <silent> <Leader>f<Leader>p :FufFileWithFullCwd<CR>
"nnoremap <silent> <C-f>p     :FufFile<CR>
"nnoremap <silent> <C-f>p     :FufFile **/<CR>
nnoremap <silent> <Leader>fp     :FufFile **/<CR>
"nnoremap <silent> <C-f><C-d> :FufDirWithCurrentBufferDir<CR>
nnoremap <silent> <Leader>f<Leader>d :FufDirWithCurrentBufferDir<CR>
"nnoremap <silent> <C-f>d     :FufDirWithFullCwd<CR>
nnoremap <silent> <Leader>fd     :FufDirWithFullCwd<CR>
"nnoremap <silent> <C-f>D     :FufDir<CR>
nnoremap <silent> <Leader>fD     :FufDir<CR>
"nnoremap <silent> <C-j>      :FufMruFile<CR>
nnoremap <silent> <Leader>j      :FufMruFile<CR>
"nnoremap <silent> <C-k>      :FufMruCmd<CR>
nnoremap <silent> <Leader>k      :FufMruCmd<CR>
"nnoremap <silent> <C-b>      :FufBookmarkDir<CR>
nnoremap <silent> <Leader>b      :FufBookmarkDir<CR>
"nnoremap <silent> <C-f><C-t> :FufTag<CR>
nnoremap <silent> <Leader>f<Leader>t :FufTag<CR>
"nnoremap <silent> <C-f>t     :FufTag!<CR>
nnoremap <silent> <Leader>ft     :FufTag!<CR>
noremap  <silent> g]         :FufTagWithCursorWord!<CR>
"nnoremap <silent> <C-f><C-f> :FufTaggedFile<CR>
nnoremap <silent> <Leader>f<Leader>f :FufTaggedFile<CR>
"nnoremap <silent> <C-f><C-j> :FufJumpList<CR>
nnoremap <silent> <Leader>f<Leader>j :FufJumpList<CR>
"nnoremap <silent> <C-f><C-g> :FufChangeList<CR>
nnoremap <silent> <Leader>f<Leader>g :FufChangeList<CR>
"nnoremap <silent> <C-f><C-q> :FufQuickfix<CR>
nnoremap <silent> <Leader>f<Leader>q :FufQuickfix<CR>
"nnoremap <silent> <C-f><C-l> :FufLine<CR>
nnoremap <silent> <Leader>f<Leader>l :FufLine<CR>
"nnoremap <silent> <C-f><C-h> :FufHelp<CR>
nnoremap <silent> <Leader>f<Leader>h :FufHelp<CR>
"vnoremap <silent> <C-f><C-b> :FufAddBookmarkAsSelectedText<CR>
nnoremap <silent> <Leader>f<Leader>b :FufBookmarkFileAdd<CR>
"nnoremap <silent> <C-f><C-e> :FufEditInfo<CR>
nnoremap <silent> <Leader>f<Leader>e :FufEditDataFile<CR>
"nnoremap <silent> <C-f><C-r> :FufRenewCache<CR>
nnoremap <silent> <Leader>f<Leader>r :FufRenewCache<CR>

"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Cscope
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Look in the current directory for tags, and work up the tree towards root until one is found.
set tags=tags;/                     "ctag
source ~/.vim/bundle/cscope_macros/cscope_macros.vim


function! LoadCscope()
    let db = findfile("cscope.out", ".;")
    if (!empty(db))
        let path = strpart(db, 0, match(db, "/cscope.out$"))
        set nocscopeverbose " suppress 'duplicate connection' error
        exe "cs add " . db . " " . path
        set cscopeverbose
    endif
endfunction
au BufEnter /* call LoadCscope()

"This will help Vim use cscope more efficiently
if has('cscope')
    set cscopetag cscopeverbose

    if has('quickfix')
        set cscopequickfix=s-,c-,d-,i-,t-,e-
    endif

    cnoreabbrev csa cs add
    cnoreabbrev csf cs find
    cnoreabbrev csk cs kill
    cnoreabbrev csr cs reset
    cnoreabbrev css cs show
    cnoreabbrev csh cs help

    command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif

"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Upper/Lower case: mapping case conversion keys
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if (&tildeop)
    nmap gcw guw~l
    nmap gcW guW~l
    nmap gciw guiw~l
    nmap gciW guiW~l
    nmap gcis guis~l
    nmap gc$ gu$~l
    nmap gcgc guu~l
    nmap gcc guu~l
    vmap gc gu~l
else
    nmap gcw guw~h
    nmap gcW guW~h
    nmap gciw guiw~h
    nmap gciW guiW~h
    nmap gcis guis~h
    nmap gc$ gu$~h
    nmap gcgc guu~h
    nmap gcc guu~h
    vmap gc gu~h
endif



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Airline theme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:airline_theme='serene'
" let g:airline_theme='badwolf'
let g:airline_theme='murmur'

let g:snipMate = {}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Startify
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:startify_files_number        = 8
let g:startify_session_persistence = 1
let g:startify_session_autoload    = 1
let g:startify_enable_special      = 0

let g:startify_list_order = [
            \ ['   LRU:'],
            \ 'files',
            \ ['   Sessions:'],
            \ 'sessions',
            \ ['   Bookmarks:'],
            \ 'bookmarks',
            \ ]

let g:startify_skiplist = [
            \ 'COMMIT_EDITMSG',
            \ $VIMRUNTIME .'/doc',
            \ 'bundle/.*/doc',
            \ '.vimgolf',
            \ ]

let g:startify_bookmarks = [
            \ '~/.vimrc',
            \ '~/.tmux.conf',
            \ '~/.profile',
            \ ]

let g:startify_custom_footer =
            \ ['', "   Vim is charityware. Please read ':help uganda'.", '']

"let g:startify_custom_header =
"      \ map(split(system('tips | cowsay -f apt'), '\n'), '"   ". v:val') + ['']
let g:startify_custom_header1 = [
            \'                                                                                     bbbbbbbb                                                                        ',
            \'BBBBBBBBBBBBBBBBB   lllllll                                                          b::::::b                                                                        ',
            \'B::::::::::::::::B  l:::::l                                                          b::::::b                                                                        ',
            \'B::::::BBBBBB:::::B l:::::l                                                          b::::::b                                                                        ',
            \'BB:::::B     B:::::Bl:::::l                                                           b:::::b                                                                        ',
            \'  B::::B     B:::::B l::::l    ooooooooooo      ooooooooooo      mmmmmmm    mmmmmmm   b:::::bbbbbbbbb        eeeeeeeeeeee    rrrrr   rrrrrrrrr      ggggggggg   ggggg',
            \'  B::::B     B:::::B l::::l  oo:::::::::::oo  oo:::::::::::oo  mm:::::::m  m:::::::mm b::::::::::::::bb    ee::::::::::::ee  r::::rrr:::::::::r    g:::::::::ggg::::g',
            \'  B::::BBBBBB:::::B  l::::l o:::::::::::::::oo:::::::::::::::om::::::::::mm::::::::::mb::::::::::::::::b  e::::::eeeee:::::eer:::::::::::::::::r  g:::::::::::::::::g',
            \'  B:::::::::::::BB   l::::l o:::::ooooo:::::oo:::::ooooo:::::om::::::::::::::::::::::mb:::::bbbbb:::::::be::::::e     e:::::err::::::rrrrr::::::rg::::::ggggg::::::gg',
            \'  B::::BBBBBB:::::B  l::::l o::::o     o::::oo::::o     o::::om:::::mmm::::::mmm:::::mb:::::b    b::::::be:::::::eeeee::::::e r:::::r     r:::::rg:::::g     g:::::g ',
            \'  B::::B     B:::::B l::::l o::::o     o::::oo::::o     o::::om::::m   m::::m   m::::mb:::::b     b:::::be:::::::::::::::::e  r:::::r     rrrrrrrg:::::g     g:::::g ',
            \'  B::::B     B:::::B l::::l o::::o     o::::oo::::o     o::::om::::m   m::::m   m::::mb:::::b     b:::::be::::::eeeeeeeeeee   r:::::r            g:::::g     g:::::g ',
            \'  B::::B     B:::::B l::::l o::::o     o::::oo::::o     o::::om::::m   m::::m   m::::mb:::::b     b:::::be:::::::e            r:::::r            g::::::g    g:::::g ',
            \'BB:::::BBBBBB::::::Bl::::::lo:::::ooooo:::::oo:::::ooooo:::::om::::m   m::::m   m::::mb:::::bbbbbb::::::be::::::::e           r:::::r            g:::::::ggggg:::::g ',
            \'B:::::::::::::::::B l::::::lo:::::::::::::::oo:::::::::::::::om::::m   m::::m   m::::mb::::::::::::::::b  e::::::::eeeeeeee   r:::::r             g::::::::::::::::g ',
            \'B::::::::::::::::B  l::::::l oo:::::::::::oo  oo:::::::::::oo m::::m   m::::m   m::::mb:::::::::::::::b    ee:::::::::::::e   r:::::r              gg::::::::::::::g ',
            \'BBBBBBBBBBBBBBBBB   llllllll   ooooooooooo      ooooooooooo   mmmmmm   mmmmmm   mmmmmmbbbbbbbbbbbbbbbb       eeeeeeeeeeeeee   rrrrrrr                gggggggg::::::g ',
            \'                                                                                                                                                             g:::::g ',
            \'                                                                                                                                                 gggggg      g:::::g ',
            \'                                                                                                                                                 g:::::gg   gg:::::g ',
            \'                                                                                                                                                  g::::::ggg:::::::g ',
            \'                                                                                                                                                   gg:::::::::::::g  ',
            \'                                                                                                                                                     ggg::::::ggg    ',
            \'                                                                                                                                                        gggggg     ',
            \]

let g:startify_custom_header = [
            \'',
            \'888888b.   888                                 888                                ',
            \'888  "88b  888                                 888                                ',
            \'888  .88P  888                                 888                                ',
            \'8888888K.  888  .d88b.   .d88b.  88888b.d88b.  88888b.   .d88b.  888d888  .d88b.  ',
            \'888  "Y88b 888 d88""88b d88""88b 888 "888 "88b 888 "88b d8P  Y8b 888P"   d88P"88b ',
            \'888    888 888 888  888 888  888 888  888  888 888  888 88888888 888     888  888 ',
            \'888   d88P 888 Y88..88P Y88..88P 888  888  888 888 d88P Y8b.     888     Y88b 888 ',
            \'8888888P"  888  "Y88P"   "Y88P"  888  888  888 88888P"   "Y8888  888      "Y88888 ',
            \'                                                                              888 ',
            \'                                                                         Y8b d88P ',
            \'                                                                          "Y88P"  ',
            \]

hi StartifyBracket ctermfg=240
hi StartifyNumber  ctermfg=215
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240
hi StartifySpecial ctermfg=240
hi StartifyHeader  ctermfg=114
hi StartifyFooter  ctermfg=240
"hi StartifyFile    ctermfg=111
"source /bbsrc/princeton/skunk/vim/cursor.vim

" EasyGrep default search is in buffers
let g:EasyGrepMode = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""SemanticHighlight
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:semanticGUIColors = [ '#72d572', '#c5e1a5', '#e6ee9c', '#fff59d', '#ffe082', '#ffcc80', '#ffab91', '#bcaaa4', '#b0bec5', '#ffa726', '#ff8a65', '#f9bdbb', '#f9bdbb', '#f8bbd0', '#e1bee7', '#d1c4e9', '#ffe0b2', '#c5cae9', '#d0d9ff', '#b3e5fc', '#b2ebf2', '#b2dfdb', '#a3e9a4', '#dcedc8' , '#f0f4c3', '#ffb74d' ]

"Check http://img1.wikia.nocookie.net/__cb20110121055231/vim/images/1/16/Xterm-color-table.png
"let g:semanticTermColors = [28,1,2,3,4,5,6,7,25,9,10,34,12,13,14,15,16,125,124,19]
"let g:semanticTermColors = [28,1,2,3,5,6,7,9,10,34,13,14,15,125,124,57,153,21]
let g:semanticTermColors = [28,1,2,3,5,6,7,9,10,34,13,14,15,125,124,57,153,39]
"let s:semanticTermColors = [ '#72d572', '#c5e1a5', '#e6ee9c', '#fff59d', '#ffe082', '#ffcc80', '#ffab91', '#bcaaa4', '#b0bec5', '#ffa726', '#ff8a65', '#f9bdbb', '#f9bdbb', '#f8bbd0', '#e1bee7', '#d1c4e9', '#ffe0b2', '#c5cae9', '#d0d9ff', '#b3e5fc', '#b2ebf2', '#b2dfdb', '#a3e9a4', '#dcedc8' , '#f0f4c3', '#ffb74d' ]

nnoremap <Leader>s :SemanticHighlightToggle<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""YouCompleteMe
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '/home/asadough/.vim/ycm_extra_conf.py'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:syntastic_cpp_checkers = ['plink']
"let g:syntastic_cpp_include_dirs = ['bidea_utils/', 'bidea_utils/shared_xsds', 'btmsgsvc/src', '/bbsrc']
"let g:syntastic_cpp_include_dirs = [ '/bb/build/SunOS-sparc-64/release/robolibs/prod/opt/bb/lib/']
let g:syntastic_cpp_check_header = 1
"let g:syntastic_cpp_include_dirs = [ '/bb/build/Linux-x86_64-64/release/robolibs/prod/opt/bb/lib']
"let g:syntastic_cpp_include_dirs = [ '/bb/build/Linux-x86_64-64/release/robolibs/trunk-839540-20161018T094411/opt/bb/include/']
"let g:syntastic_cpp_include_dirs = [ '/bb/build/Linux-x86_64-64/release/robolibs/stage/opt/bb/include/']
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""Linediff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap <Leader>vv :Linediff<CR><CR>
vnoremap <leader>ld :Linediff<cr>
nnoremap <leader>ld :Linediff<cr>
nnoremap <leader>lr :LinediffReset<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""Macros
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let @I = '0ct<BAEL_LOG_INFO $F<wCBAEL_LOG_END;=='
let @W = '0ct<BAEL_LOG_WARN $F<wCBAEL_LOG_END;=='
let @D = '0ct<BAEL_LOG_DEBUG $F<wCBAEL_LOG_END;=='
let @E = '0ct<BAEL_LOG_ERROR $F<wCBAEL_LOG_END;=='



function! s:insert_gates()
    let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
    execute "normal! i#ifndef " . gatename
    execute "normal! o#define " . gatename . " "
    execute "normal! Go#endif /* " . gatename . " */"
    normal! kk
endfunction
autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()


function! DoPrettyXML()
  " save the filetype so we can restore it later
  let l:origft = &ft
  set ft=
  " delete the xml header if it exists. This will
  " permit us to surround the document with fake tags
  " without creating invalid xml.
  1s/<?xml .*?>//e
  " insert fake tags around the entire document.
  " This will permit us to pretty-format excerpts of
  " XML that may contain multiple top-level elements.
  0put ='<PrettyXML>'
  $put ='</PrettyXML>'
  silent %!xmllint --format -
  " xmllint will insert an <?xml?> header. it's easy enough to delete
  " if you don't want it.
  " delete the fake tags
  2d
  $d
  " restore the 'normal' indentation, which is one extra level
  " too deep due to the extra tags we wrapped around the document.
  silent %<
  " back to home
  1
  " restore the filetype
  exe "set ft=" . l:origft
endfunction
command! PrettyXML call DoPrettyXML()



source /bbsrc/princeton/skunk/vim/cursor.vim
