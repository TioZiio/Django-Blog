" Config Basic
set nocompatible
filetype on
filetype plugin on
filetype indent on
set nospell

" Indentation 
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent

" Row Numbers 
set nu
set relativenumber

" Break row 
set textwidth=80

call plug#begin('~/.vim/plugged')
" List your plugins 
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'Valloric/YouCompleteMe'
Plug 'Sirver/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

" Key Mapping
    " NERDTree
nnoremap <leader>x :NERDTreeFocus<CR>
nnoremap <C-x> :NERDTree<CR>
nnoremap <C-z> :NERDTreeFind<CR>
nnoremap <C-Up> <C-w>w
nnoremap <C-Left> <C-w>h
nnoremap <C-Right> <C-w>l
    " Arrow
nnoremap <A-Down> zo
nnoremap <A-Up> zc
nnoremap <A-Right> zO
nnoremap <A-Left> zC
    " Others
inoremap <C-d> <C-o>ci'
inoremap <C-z> \|-> 

" Config YouComplete
let g:ycm_python_interpreter_path = '/home/anonimo/Github/Django-Blog/venv/bin'
let g:ycm_python_sys_path = '/home/anonimo/Github/Django-Blog/venv/lib/python3.12/site-packages'
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_auto_trigger = 1
let g:ycm_server_keep_log_files = 1
set completeopt-=preview

" Config UltiSnips/Snippets
let g:UltiSnipsExpandTrigger="<C-f>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
let g:UltiSnipsEditSplit="vertical"

" Config Special
    " Python
autocmd FileType python setlocal foldmethod=indent
    " Markdown/Txt
autocmd FileType text,markdown setlocal textwidth=110
