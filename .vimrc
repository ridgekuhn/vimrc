" Pathogen Vim Package Manager
execute pathogen#infect()

" expand tabs to 2 spaces
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set noexpandtab

" vim-better-whitespace
let g:strip_whitespace_on_save = 0

" Solarized Colorscheme for Vim
syntax enable
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

" lightline.vim
set laststatus=2

" vim-gitgutter
set updatetime=100

" NERDtree
map <C-o> :NERDTreeToggle<CR>
