" leader key
let mapleader=","

noremap <expr> k ((line('.')==1)?'':'k')
noremap <expr> j ((line('.')==line('$'))?'':'j')

"copy/paste to external clipboard by ctrl-c in normal mode
nnoremap <silent> <C-c> maggvG$"+y'a

"This unsets the last search pattern register by hitting return
nnoremap <CR> :noh<CR><CR>

"Moving to another split
nnoremap <Leader>w <C-w>w

"map <F2> :ls<CR>:b<Space>           "swich buffers

"Use F4 to switch between source and heade (cpp and h)
map <F6> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
map <F2> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>

"Use <F6> to switch to the next split
":map <F6> <C-W>w

" Use jj instead of Esc
imap jj <Esc>
set timeoutlen=500

"Stay where you are after pressind * or #
"map * *n
"map # *N
nnoremap * :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
nnoremap # :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
map N Nzz
map n nzz

"Run ctags and cscope
nmap <F11> :!ctags -R .&<CR>
          \:!find . -iname "*.c" -o -iname "*.cpp" -o -iname "*.h" -o -iname "*.hpp" > cscope.files&<CR>
          \:!cscope -b -i cscope.files -f cscope.out<CR>
          \:cscope kill -1<CR>
          \:cscope add cscope.out<CR>

"Taglist keybindings
nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <silent> <F7> :TlistOpen<CR>

"Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

"nnoremap <silent><C-J> <C-W><C-J>:call Splitresize()<CR>
"nnoremap <silent><C-K> <C-W><C-K>:call Splitresize()<CR>
"nnoremap <silent><C-L> <C-W><C-L>:call Splitresize()<CR>
"nnoremap <silent><C-H> <C-W><C-H>:call Splitresize()<CR>

"Make the selected split bigger
nnoremap <leader>r :call Splitresize()<CR>

"Tabularize the visual selection
vnoremap <leader>t :Tabular<space>/

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>


"Ctrl+\ - Open the definition in a new tab
"map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
"Alt+] - Open the definition in a vertical split
"map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Use ctrl-s to save
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>


" Clang format
"map <C-K> :pyf /bb/bin/package/l/llvm/current/opt_bb/share/clang/clang-format.py <CR>
"imap <C-K> <ESC>:pyf /bb/bin/package/l/llvm/current/opt_bb/share/clang/clang-format.py <CR>i
"set equalprg=clang-format
"autocmd FileType h,c,cpp setlocal equalprg=clang-format
"The after/ftplugin/cpp.vim sets this now

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""Macros
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let @I = '0ct<BAEL_LOG_INFO $F<wCBAEL_LOG_END;=='
let @W = '0ct<BAEL_LOG_WARN $F<wCBAEL_LOG_END;=='
let @D = '0ct<BAEL_LOG_DEBUG $F<wCBAEL_LOG_END;=='
let @E = '0ct<BAEL_LOG_ERROR $F<wCBAEL_LOG_END;=='
