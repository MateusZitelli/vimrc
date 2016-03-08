" Allow multiple paste
xnoremap p pgvy

" Remap ; to :
map ; :

" Go to the end of the buffer after paste
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Line split
imap <C-c> <CR><Esc>O

" Avoid esc key
:imap jk <Esc>
:imap kj <Esc>

" Relative numbering
set number
let g:NumberToggleTrigger="<F2>"
