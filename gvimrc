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
set noantialias
set guifont=Monaco:h12
set nohlsearch
set incsearch
set lines=60
set columns=200
set gtl=%t gtt=%F

syntax on
filetype plugin indent on

let mapleader = ","
let NERDTreeIgnore=['\.cov\.coffee$', '\~$']
let g:fuzzy_ignore = "*.log;vendor/gems/**;*.png;*.jpg;*.coffee.js"
let g:fuzzy_matching_limit = 30
let g:fuzzy_ceiling = 100000

:autocmd BufNewFile,BufRead /Users/micha/code/mustard/src/* sil! set makeprg=make\ -C\ ../build

" function! ChangeToRoot()
"   let root = RailsRoot()
"   if root == ''
"     root = g:peepopen_cwd
"   endif
"
"   echo root
"   if root != ''
"     cd 'root'
"   endif
" endfunction
" autocmd BufEnter * :call ChangeToRoot()



map <leader>t :FuzzyFinderTextMate<CR>
map <leader>l :FuzzyFinderMruFile<CR>
map <leader>b :FuzzyFinderBuffer<CR>
map <F2> :NERDTreeToggle<CR>
map <F4> :CoffeeCompile<CR>
map <leader>f :Ack<space>
map <leader>z :ZoomWin<CR>

set background=dark
colorscheme solarized

" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//e
  ''
:endfunction

autocmd FileWritePre * :call TrimWhiteSpace()
autocmd FileAppendPre * :call TrimWhiteSpace()
autocmd FilterWritePre * :call TrimWhiteSpace()
autocmd BufWritePre * :call TrimWhiteSpace()

autocmd FileType make     set noexpandtab
autocmd FileType python   set noexpandtab

