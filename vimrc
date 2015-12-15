""
""	Author: Joseph Yu
""	Last Modified: 2015/12/15
""
set nocompatible
filetype off
"" set the runtime path to include Vundle and initialize
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"" color scheme
Plugin 'kiddos/malokai'
"" git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'gregsexton/gitv'
Plugin 'sjl/gundo.vim'
" tmux
Plugin 'erikw/tmux-powerline'
Plugin 'edkolev/tmuxline.vim'
"" utility
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-projectionist'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'ryanoasis/vim-devicons'
Plugin 'mhinz/vim-startify'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tyru/open-browser.vim'
Plugin 'mbbill/undotree'
Plugin 'kannokanno/previm'
Plugin 'arecarn/crunch.vim'
Plugin 'arecarn/selection.vim'
Plugin 'ashisha/image.vim'
Plugin 'chrisbra/csv.vim'
" libs
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
"" language specific
" C family {{{
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'OrangeT/vim-csharp'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kiddos/a.vim'
"}}}
" Java {{{
Plugin 'krisajenkins/vim-java-sql'
Plugin 'vim-scripts/java_getset.vim'
Plugin 'artur-shaik/vim-javacomplete2'
" }}}
" Matlab {{{
Plugin 'vim-scripts/octave.vim--'
" }}}
" vhdl {{{
Plugin 'kiddos/vim-vhdl'
Plugin 'vhda/verilog_systemverilog.vim'
" }}}
" ruby {{{
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
" }}}
" Web {{{
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-haml'
Plugin 'Valloric/MatchTagAlways'
Plugin 'mattn/emmet-vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'briancollins/vim-jst'
Plugin 'pangloss/vim-javascript'
Plugin 'nono/jquery.vim'
Plugin 'ap/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'moll/vim-node'
Plugin 'elzr/vim-json'
Plugin 'burnettk/vim-angular'
Plugin 'kchmck/vim-coffee-script'
Plugin 'lambdatoast/elm.vim'
Plugin 'zeekay/vim-html2jade'
Plugin 'coachshea/jade-vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin '1995eaton/vim-better-css-completion'
Plugin 'tpope/vim-markdown'
" }}}
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
"" omni completeion {{{
autocmd FileType c setlocal omnifunc=ccomplete#Complete
autocmd FileType cpp setlocal omnifunc=ccomplete#Complete
autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType python setlocal omnifunc=python3complete#Complete
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType html,xhtml setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType javascript setlocal omnifunc=tern#Complete
"" }}}
"" custom key maps {{{
" leader
let mapleader=","
let localleader="\\"
" copy, cut, paste, save
inoremap	<C-C>	<Esc>yy
inoremap	<C-X>	<Esc>cc
inoremap	<C-V>	<Esc>pa
"" typo
command!	WQ	wq
command!	Wq	wq
command!	W	w
command!	Q	q
command!	Qa	qa
command!	QA	qa
noremap		L	l
noremap		K	k
noremap		J	j
noremap		H	h
"" moving between splits
nnoremap  <C-H>	<C-W><C-H>
nnoremap  <C-J>	<C-W><C-J>
nnoremap  <C-K>	<C-W><C-K>
nnoremap  <C-L>	<C-W><C-L>
"" Tab switching
nmap	<leader>1	1gt
nmap	<leader>2	2gt
nmap	<leader>3	3gt
nmap	<leader>4	4gt
nmap	<leader>5	5gt
nmap	<leader>6	6gt
nmap	<leader>7	7gt
nmap	<leader>8	8gt
nmap	<leader>9	9gt
" split/close tab
nmap	<leader><Tab>		:tabedit<CR>
nmap	<leader>v			:vs<CR>
nmap	<leader>q			:q<CR>
nmap	<leader>Q			:q<CR>
"" jump window
inoremap	<C-]>	<Esc><C-W><C-]>
nnoremap	<C-]>	<C-W><C-]>
"" Omni Complete
inoremap <expr>	<CR>		pumvisible() ? "\<C-N><C-Y>" : "\<CR>"
inoremap <expr>	<Down>		pumvisible() ? "\<C-N>" : "\<Down>"
inoremap <expr>	<Up>		pumvisible() ? "\<C-P>" : "\<Up>"
inoremap <expr>	<C-J>		pumvisible() ? "\<C-N>" : "\<Esc><C-W><C-J>"
inoremap <expr>	<C-K>		pumvisible() ? "\<C-P>" : "\<Esc><C-W><C-K>"
inoremap <expr> <PageDown>	pumvisible() ? "\<PageDown>\<C-P>\<C-N>" : "\<PageDown>"
inoremap <expr> <PageUp>	pumvisible() ? "\<PageUp>\<C-P>\<C-N>" : "\<PageUp>"
inoremap <C-D>	<C-X><C-O><C-N>
inoremap <C-F>	<C-X><C-R>
"" end line semicolon ;
autocmd		FileType	c		nnoremap ; $a;
autocmd		FileType	cpp		nnoremap ; $a;
autocmd		FileType	objc	nnoremap ; $a;
autocmd		FileType	java	nnoremap ; $a;
autocmd		FileType	matlab	nnoremap ; $a;
autocmd		FileType	php		nnoremap ; $a;
autocmd		FileType	html	nnoremap ; $a;
autocmd		FileType	css		nnoremap ; $a;
autocmd		FileType	javascript nnoremap ; $a;
"" }}}
"" useful functions {{{

"" }}}
"" Plugin settings
"" airline settings {{{
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
let g:airline_detect_crypt = 1
let g:airline_detect_iminsert = 1
let g:airline_inactive_collapse = 1
let g:airline_theme = 'powerlineish'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = '⊳'
let g:airline_right_sep = '⊲ '
let g:airline_right_alt_sep = '⌘ '
let g:airline_left_alt_sep = ''
let g:airline_symbols.crypt = '☠'
let g:airline_symbols.linenr = '⇵ '
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.paste = '℘  '
let g:airline_symbols.readonly = ''
let g:airline_symbols.whitespace = '⇆ '
"" }}}
