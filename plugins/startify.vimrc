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

