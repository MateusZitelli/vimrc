""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return 
au FileType python inoremap <buffer> $i import 
au FileType python inoremap <buffer> $p print 
au FileType python inoremap <buffer> $f #--- PH ----------------------------------------------<esc>FP2xi
au FileType python map <buffer> <leader>1 /class 
au FileType python map <buffer> <leader>2 /def 
au FileType python map <buffer> <leader>C ?class 
au FileType python map <buffer> <leader>D ?def 


""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript setl fen
au FileType javascript setl nocindent

""""""""""""""""""""""""""""""
" => Smalltalk section
"""""""""""""""""""""""""""""""
" Set configs for smalltalk
au FileType st call FT_st()

function FT_st()
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  set noexpandtab
  retab 2
endfunction

""""""""""""""""""""""""""""""
" => Misc section
"""""""""""""""""""""""""""""""
" Force setting for *.md files. More info: https://github.com/tpope/vim-markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
au BufRead,BufNewFile /opt/nginx/* if &ft == '' | setfiletype nginx | endif 
