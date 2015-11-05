" Map the conceal characters to their expanded forms.
inoremap <silent> @ <C-r>=syntax_expand#expand("@", "this")<CR>
inoremap <silent> # <C-r>=syntax_expand#expand("#", "prototype")<CR>
inoremap <silent> < <C-r>=syntax_expand#expand_head("<", "return")<CR>

" Keeps everything concealed at all times. Even when my cursor is on the word.
set conceallevel=1
set concealcursor=nvic

" JavaScript thanks to pangloss/vim-javascript
let g:javascript_conceal_function = "λ"
let g:javascript_conceal_this = "@"
let g:javascript_conceal_return = "<"
let g:javascript_conceal_prototype = "#"
