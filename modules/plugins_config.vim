"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ----------------------------------------------------------------------------
" Functions
" ----------------------------------------------------------------------------

function! g:UltiSnips_Complete()
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res == 0
    if pumvisible()
      return "\<c-n>"
    else
      call UltiSnips#JumpForwards()
      if g:ulti_jump_forwards_res == 0
        return "\<tab>"
      endif
    endif
  endif
  return ""
endfunction
"
" ----------------------------------------------------------------------------
" Autocmds
" ----------------------------------------------------------------------------

augroup relativenumber
  autocmd InsertEnter,focusLost * :set norelativenumber
  autocmd InsertLeave,focusGained * :set relativenumber
augroup END

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"
