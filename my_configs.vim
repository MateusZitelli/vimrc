" Enable syntax highlighting
syntax enable
 
set number
set t_Co=256
syntax on
set background=dark
colorscheme gruvbox

" Allow multiple paste
xnoremap p pgvy

" Allow block moving
let g:move_map_keys = 0
vmap <C-j> <Plug>MoveBlockDown
vmap <C-k> <Plug>MoveBlockUp
nmap <A-j> <Plug>MoveLineDown
nmap <A-k> <Plug>MoveLineUp

" this mapping Enter key to <C-y> to chose the current highlight item 
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Toggle line counting
let g:NumberToggleTrigger="<F2>"

" Remap ; to :
map ; :

let g:pymode_rope_lookup_project = 0
let g:jsx_pragma_required = 0
let g:jsx_ext_required = 0
set formatoptions-=tc

" Expand region with v
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Go to the end of the buffer after paste
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Line split
imap <C-c> <CR><Esc>O

let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
