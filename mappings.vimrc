noremap <expr> k ((line('.')==1)?'':'k')
noremap <expr> j ((line('.')==line('$'))?'':'j')
let mapleader=","

"copy/paste to external clipboard
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

"map * *n
"map # *N
nnoremap * :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
nnoremap # :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
map N Nzz
map n nzz

nmap <F11> :!ctags -R .&<CR>
          \:!find . -iname "*.c" -o -iname "*.cpp" -o -iname "*.h" -o -iname "*.hpp" > cscope.files&<CR>
          \:!cscope -b -i cscope.files -f cscope.out<CR>
          \:cscope kill -1<CR>
          \:cscope add cscope.out<CR>

" Taglist keybindings
nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <silent> <F7> :TlistOpen<CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

"nnoremap <silent><C-J> <C-W><C-J>:call Splitresize()<CR>
"nnoremap <silent><C-K> <C-W><C-K>:call Splitresize()<CR>
"nnoremap <silent><C-L> <C-W><C-L>:call Splitresize()<CR>
"nnoremap <silent><C-H> <C-W><C-H>:call Splitresize()<CR>
nnoremap <leader>r :call Splitresize()<CR>

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
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>


" Clang format
"map <C-K> :pyf /bb/bin/package/l/llvm/current/opt_bb/share/clang/clang-format.py <CR>
"imap <C-K> <ESC>:pyf /bb/bin/package/l/llvm/current/opt_bb/share/clang/clang-format.py <CR>i
"set equalprg=clang-format
"autocmd FileType h,c,cpp setlocal equalprg=clang-format
"The after/ftplugin/cpp.vim sets this now
