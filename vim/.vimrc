
nnoremap <C-x> :q!<CR>
inoremap <C-x> <Esc>:q!<CR>
vnoremap <C-x> <Esc>:q!<CR>
nnoremap <C-o> :w<CR>i
inoremap <C-o> <Esc>:w<CR>a
vnoremap <C-o> <Esc>:w<CR>i
autocmd VimEnter * startinsert
inoremap <M-u> <Esc>ua
vnoremap <M-u> <Esc>ugv
vnoremap <BS> d
nnoremap <C-f> d$
nnoremap <C-d> de


