" Enable syntax highlighting
syntax enable
 
set number
set t_Co=256
syntax on
set background=dark
colorscheme seti

" Add a ruler with 80 chars division
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Allow multiple paste
xnoremap p pgvy

" Allow block moving
let g:move_map_keys = 0
vmap <C-j> <Plug>MoveBlockDown
vmap <C-k> <Plug>MoveBlockUp
nmap <A-j> <Plug>MoveLineDown
nmap <A-k> <Plug>MoveLineUp


" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"
" this mapping Enter key to <C-y> to chose the current highlight item 
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Set configs for smalltalk
au FileType st call FT_st()

function FT_st()
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  set noexpandtab
  retab 2
endfunction

" Toggle line counting
let g:NumberToggleTrigger="<F2>"

" Force setting for *.md files. More info: https://github.com/tpope/vim-markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Remap ; to :
map ; :

" Powerline setup
set guifont=Inconsolata\ for\ Powerline\ Medium\ 12
set showtabline=2
set laststatus=2
set noshowmode

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

let g:pymode_rope_lookup_project = 0
let g:jsx_pragma_required = 0

set formatoptions-=tc

let g:syntastic_javascript_checkers = ['jsxhint']

" For Supercolider know to run in terminal
let g:sclangTerm = "terminator -x $SHELL"

au BufRead,BufNewFile /opt/nginx/* if &ft == '' | setfiletype nginx | endif 

" Easy motion configs

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" Gif config
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

" Set youcompleteme to use python2
let g:ycm_path_to_python_interpreter = '/usr/bin/python2'

" Tern configs
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

let g:EasyMotion_smartcase = 1


" Expand region with v
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Paste mode with F3
nnoremap <F3> :set invpaste paste?<CR>
imap <F3> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F3>

" Go to the end of the buffer after paste
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Line split
imap <C-c> <CR><Esc>O

" Syntastic configs
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" These are the tweaks I apply to YCM's config, you don't need them but they might help.
" YCM gives you popups and splits by default that some people might not like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview
" YCM complete with at least 2 chars
let g:ycm_min_num_of_chars_for_completion = 2
" Make faster YCM
let g:ycm_register_as_syntastic_checker = 0
" Add relative numbering in nerdtree
autocmd FileType nerdtree setlocal relativenumber
