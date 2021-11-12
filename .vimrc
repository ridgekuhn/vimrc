" ========= Auto-Completion =========

" ========= Code Style =========

"expand tabs to 2 spaces
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set noexpandtab

" vim-better-whitespace
let g:strip_whitespace_on_save = 0


" ========= Code Syntax =========

" Show line numbers
set nu

" ========= Color Schemes =========

" Solarized Colorscheme for Vim
syntax enable
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

" ========= Utils =========

" Conquer of Completion extensions
let g:coc_global_extensions = ['coc-tsserver']

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" lightline.vim
set laststatus=2

" NERDtree
map <C-o> :NERDTreeToggle<CR>

" vim-gitgutter
set updatetime=100

