" Allow multiple paste
xnoremap p pgvy

" Allow block moving
let g:move_map_keys = 0
vmap <C-j> <Plug>MoveBlockDown
vmap <C-k> <Plug>MoveBlockUp
nmap <A-j> <Plug>MoveLineDown
nmap <A-k> <Plug>MoveLineUp

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

" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.config/nvim/temp_dirs/undodir
