"RYAN's VIM CONFIG

"===normal stuff===
set nu
set expandtab
set tabstop=2
filetype plugin indent on
set cursorline

"===light-line===
set laststatus=2
set noshowmode

if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'apprentice',
      \ }

"===Plugins===
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/seoul256.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'cocopon/iceberg.vim'
Plug 'ghifarit53/tokyonight-vim'
call plug#end()

"===Pathogen plugin===
"execute pathogen#infect()

"===Cursor===
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
set ttimeout
set ttimeoutlen=1
set ttyfast

"===VIM theme===
syntax on
set termguicolors
colorscheme gruvbox
set background=dark

"===Transparency===
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
