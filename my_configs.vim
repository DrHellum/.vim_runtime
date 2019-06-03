execute pathogen#infect('~/.vim_runtime/my_plugins/{}')

autocmd VimEnter * GitGutterEnable

set number
set relativenumber
set smartcase
set nocompatible

set ffs=dos
set wildmode=list:longest

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set foldmethod=syntax
set foldlevel=99

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>



if has('gui_running')     
  let g:lightline = {
  \ 'colorscheme': 'jellybeans'
  \ }
  syntax enable
  set background=dark
  colorscheme solarized
else 
  let g:lightline = {
  \ 'colorscheme': 'wombat'
  \ }
  syntax enable
  colorscheme pyte
endif

set noshowmode

au GUIEnter * simalt ~x

set autoread

behave mswin
so mswin.vim

:iabbrev waht what
:iabbrev tehn then

filetype plugin on
set path+=**
