set nocompatible

call pathogen#infect()

set title
set nu
set cindent
set autoindent
set tabstop=4
set shiftwidth=4
set incsearch
set history=100
set ruler
set backspace=indent,eol,start


"fold func
"set foldmethod=syntax
"set foldlevel=100
"set foldopen-=search


map <C-n> :NERDTreeToggle<CR>
syntax on
let g:neocomplete#enable_at_startup = 1

"for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"gocode complete
filetype plugin on


"encode
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set encoding=utf-8

"map
let mapleader = "-"
inoremap <c-d> <esc>ddi
nnoremap <c-p> o<esc>p
inoremap <leader>ww <esc>:w<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>ev :vsp $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>nn :set nonu<cr>
nnoremap <leader>uu :set nu<cr>

autocmd BufNewFile,BufRead *.sh :nnoremap <leader>= i#<esc>
autocmd BufNewFile,BufRead *.go :nnoremap <leader>= i//<esc>
