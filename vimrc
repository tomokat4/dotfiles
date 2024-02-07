set nocompatible
filetype off
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
set number
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'uiiaoo/java-syntax.vim'

call vundle#end()
filetype plugin indent on

set noshowmode
set ignorecase
set smartcase
set splitbelow
set splitright
set hlsearch
" set termguicolors "
"
" Keybinds "
let mapleader=";"
nnoremap <silent> <leader>tt :NERDTreeToggle<CR>
nnoremap <silent> <leader>tb :TagbarToggle<CR>
nnoremap <silent> <leader>tb :TagbarToggle<CR>
nnoremap <silent> <leader>gs :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <silent> <leader>gd :exec("tag ".expand("<cword>"))<CR>
nnoremap <silent> <leader>gb :pop<CR>


nnoremap tj  :tabfirst<CR>
nnoremap tl  :tabnext<CR>
nnoremap th  :tabprev<CR>
nnoremap tk  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Start nerdtree on opening directory with vim"
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | wincmd p | endif

" Auto start NERD tree if no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | exe 'NERDTree' | endif

" Autoexit nerdtree if only window left "
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
