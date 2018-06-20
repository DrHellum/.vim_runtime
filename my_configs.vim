set number

set wildmode=list:longest

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set foldmethod=syntax
set foldlevel=99

" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>

" inoremap <Up> <NOP>
" inoremap <Down> <NOP>
" inoremap <Left> <NOP>
" inoremap <Right> <NOP>

let g:lightline = {
  \ 'colorscheme': 'jellybeans'
  \ }

set noshowmode

au GUIEnter * simalt ~x

set autoread
