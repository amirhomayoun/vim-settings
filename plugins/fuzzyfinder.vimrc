hi Pmenu ctermbg=red
hi Pmenu ctermfg=black

" This option stops the number of changes after search and replace (?)
"let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 1000
let g:fuf_mrucmd_maxItem = 400
let g:fuf_mrufile_exclude = '\v\~$|\.(o|d|bak|tsk|sw[po])$|^(\/\/|\\\\|\/mnt\/)'
nnoremap <silent> <Leader>n          : FufBuffer<CR>
nnoremap <silent> <Leader>p          : FufFileWithCurrentBufferDir<CR>
nnoremap <silent> <Leader>f<Leader>p : FufFileWithFullCwd<CR>
nnoremap <silent> <Leader>fp         : FufFile **/<CR>
nnoremap <silent> <Leader>f<Leader>d : FufDirWithCurrentBufferDir<CR>
nnoremap <silent> <Leader>fd         : FufDirWithFullCwd<CR>
nnoremap <silent> <Leader>fD         : FufDir<CR>
nnoremap <silent> <Leader>j          : FufMruFile<CR>
nnoremap <silent> <Leader>k          : FufMruCmd<CR>
nnoremap <silent> <Leader>b          : FufBookmarkDir<CR>
nnoremap <silent> <Leader>f<Leader>t : FufTag<CR>
nnoremap <silent> <Leader>ft         : FufTag!<CR>
noremap  <silent> g]                 : FufTagWithCursorWord!<CR>
nnoremap <silent> <Leader>f<Leader>f : FufTaggedFile<CR>
nnoremap <silent> <Leader>f<Leader>j : FufJumpList<CR>
nnoremap <silent> <Leader>f<Leader>g : FufChangeList<CR>
nnoremap <silent> <Leader>f<Leader>q : FufQuickfix<CR>
nnoremap <silent> <Leader>f<Leader>l : FufLine<CR>
nnoremap <silent> <Leader>f<Leader>h : FufHelp<CR>
nnoremap <silent> <Leader>f<Leader>b : FufBookmarkFileAdd<CR>
nnoremap <silent> <Leader>f<Leader>e : FufEditDataFile<CR>
nnoremap <silent> <Leader>f<Leader>r : FufRenewCache<CR>
