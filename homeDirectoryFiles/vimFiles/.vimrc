set nocompatible

filetype plugin indent on 
syntax on

set nu
colorscheme industry
set wrap

let g:user_emmet_leader_key='<C-Z>'
packadd! matchit
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
set laststatus=2
let g:rainbow_active = 0
nnoremap <esc>^[ <esc>^[

set nrformats=alpha
