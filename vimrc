set number
set ruler
set nocompatible
set softtabstop=2
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set backspace=start,indent
set bs=2
set nobackup
set nowritebackup
set tw=150
set nohlsearch
set incsearch

syntax on

call pathogen#runtime_append_all_bundles()

filetype plugin indent on

let mapleader = ","
let g:fuzzy_ignore = "*.log;vendor/gems/**;*.png;*.jpg;*.gif;*.coffee.js"
let g:fuzzy_matching_limit = 30
let g:fuzzy_ceiling = 20000


map <leader>t :FuzzyFinderTextMate<CR>
map <leader>l :FuzzyFinderMruFile<CR>
map <leader>b :FuzzyFinderBuffer<CR>
map <leader>[ :tabprevious<CR>
map <leader>] :tabnext<CR>
map <F2> :NERDTreeToggle<CR>
map <leader>f :Ack<space>
map <leader>z :ZoomWin<CR>

