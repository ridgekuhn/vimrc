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

" Set fill characters
set fcs=fold:\ ,vert:\|

" ========= Color Schemes =========

" Solarized Colorscheme for Vim
syntax enable
set background=dark
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"colorscheme solarized
let g:solarized_use16=1
colorscheme solarized8

"highlight tabs
set list lcs=tab:\|\ 
highlight SpecialKey guifg=black ctermbg=8 ctermfg=237

" === Conquer of Completion ===
let g:coc_global_extensions = ['coc-tsserver']

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

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

