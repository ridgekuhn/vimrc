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
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"colorscheme solarized
let g:solarized_use16=1
colorscheme solarized8

" === Conquer of Completion ===
let g:coc_global_extensions = ['coc-tsserver']

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction'
      \ },
      \ }

" ========= Utils =========

" lightline.vim
set laststatus=2

" NERDtree
map <C-o> :NERDTreeToggle<CR>

" vim-gitgutter
set updatetime=100

