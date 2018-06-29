set nocompatible
filetype off                  " required
colorscheme desert
inoremap jj <esc>
inoremap <c-h> <left>
inoremap <c-l> <right>
inoremap <c-j> <down>
inoremap <c-k> <up>
set nf=
set nu
set ts=4
set shiftwidth=4
set expandtab
set autoindent
set hlsearch
hi MatchParen ctermbg=blue ctermfg=white

"syntax enable
"set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized
"colorscheme evening

let mapleader=','

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Yggdroot/LeaderF'
Plugin 'vim-scripts/a.vim'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/YCM-Generator'
Plugin 'fatih/vim-go'
"---- ycm ---
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
"let g:ycm_add_preview_to_completeopt = 0
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_auto_trigger = 1
let g:ycm_key_invoke_completion = '<C-a>'
let g:ycm_python_binary_path = '/usr/bin/python3'

nnoremap <silent> <leader>gb :YcmCompleter GoToDefinitionElseDeclaration<CR>

"set completeopt-=preview

" vim-go options
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

"
noremap<C-a> :CtrlP ~/<CR>

call vundle#end()
filetype plugin indent on
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
