""
""	Author: Joseph Yu
""	Last Modified: 2015/7/05
""
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" color scheme
Plugin 'kiddos/malokai'

" git
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

"" editing settings {{{
set altkeymap
set autoindent
set backspace=indent,eol,start
set clipboard=unnamedplus
"set cursorcolumn
set cursorline
set encoding=utf-8
set ignorecase
set incsearch
set linebreak
set modeline
set shiftround
set nosmartindent
set complete=.,w,b,u,U,t,k
set completeopt=menu
set number
autocmd FileType c,cpp,objc,javascript,php setlocal foldmarker={,}
autocmd FileType c,cpp,objc,xml,html,css,javascript,ruby,php,java,python set foldlevel=20
setlocal foldmethod=marker
autocmd Syntax c,cpp,vim,xml,html,xhtml setlocal foldmethod=syntax
autocmd Syntax c,cpp,vim,xml,html,xhtml,perl normal zR
"" general indenting
set noexpandtab
set tabstop=4
set softtabstop=2
set shiftwidth=2
" python indenting
autocmd FileType python setlocal expandtab
autocmd FileType python setlocal tabstop=8
autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal shiftwidth=4
"" }}}
"" buffer settings {{{
set autoread
set backupdir=.,~/.vimtmp,/tmp
set confirm
set cscopepathcomp=2
set directory=.,~/.vimtmp,/tmp
set hidden
set icon
set iconstring=vim
set nowritebackup
autocmd VimEnter,BufRead,BufNewFile *.m set filetype=objc
autocmd VimEnter,BufRead,BufNewFile *.h set filetype=cpp
autocmd VimEnter,BufRead,BufNewFile *.ejs set filetype=html
autocmd VimEnter,BufRead,BufNewFile *.pro set filetype=make
"" }}}
"" window settings {{{
set cmdheight=2
set cmdwinheight=6
set relativenumber
set fillchars=stl:\ ,stlnc:-,vert:\|,fold:-,diff:-
set langmenu=en_US.UTF-8
set laststatus=2
set modelines=30
set pumheight=6
set report=2
set ruler
set showcmd
set noshowmode
set showtabline=2
set scroll=2
set splitright
set tabpagemax=20
set title
set warn
"" }}}
"" color scheme settings {{{
set background=dark
syntax enable
syntax on
set t_Co=256
colorscheme malokai
"" }}}
