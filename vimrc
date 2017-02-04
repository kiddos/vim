""
""	Author: Joseph Yu
""	Last Modified: 2017/2/5
""

if 0 | endif

set runtimepath^=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" git {{{
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'gregsexton/gitv'
" }}}
" tmux {{{
Plugin 'erikw/tmux-powerline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'
" }}}
" color scheme {{{
Plugin 'kiddos/malokai'
Plugin 'kiddos/vim-after-syntax'
" }}}
" code completion {{{
Plugin 'Valloric/YouCompleteme'
" }}}
" utility {{{
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/vimproc.vim', {'build': {'unix': 'make'}}
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Raimondi/delimitMate'
Plugin 'ryanoasis/vim-devicons'
Plugin 'Yggdroot/indentLine'
Plugin 'arecarn/crunch.vim'
Plugin 'arecarn/selection.vim'
Plugin 'garbas/vim-snipmate'
Plugin 'kiddos/snippets.vim'
Plugin 'kiddos/compile.vim'
Plugin 'AndrewRadev/switch.vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'tyru/open-browser.vim'
" }}}
" libs {{{
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
" }}}
" C lang {{{
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'jplaut/vim-arduino-ino'
Plugin 'beyondmarc/opengl.vim'
" }}}
" ruby {{{
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
" }}}
" php {{{
Plugin 'stanangeloff/php.vim'
Plugin 'shawncplus/phpcomplete.vim'
" }}}
" html {{{
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-haml'
Plugin 'digitaltoad/vim-jade'
Plugin 'briancollins/vim-jst'
Plugin 'evidens/vim-twig'
Plugin 'lambdatoast/elm.vim'
Plugin 'zeekay/vim-html2jade'
Plugin 'coachshea/jade-vim'
Plugin 'tpope/vim-markdown'
Plugin 'mattn/emmet-vim'
" }}}
" css {{{
Plugin 'ap/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin '1995eaton/vim-better-css-completion'
" }}}
" javascript   {{{
Plugin 'pangloss/vim-javascript'
Plugin 'nono/jquery.vim'
Plugin 'moll/vim-node'
Plugin 'elzr/vim-json'
Plugin 'burnettk/vim-angular'
Plugin 'kchmck/vim-coffee-script'
" }}}
call vundle#end()

" code display setting {{{
set modeline
autocmd FileType c,cpp,objc,objcpp,cs set textwidth=80
autocmd FileType java,asm,vhdl,ruby,eruby,python,matlab,r set textwidth=80
autocmd FileType html,css,javascript,less,sass,scss,elm,,vim set textwidth=100
" code folding
autocmd FileType c,cpp,objc,objcpp,java,javascript,css,php setlocal foldmarker={,}
autocmd FileType c,cpp,objc,objcpp,java,javascript,css,php setlocal foldmethod=marker
autocmd FileType c,cpp,objc,objcpp,java,javascript,css,php setlocal foldlevel=3
autocmd FileType c,cpp,objc,objcpp,java,javascript,css,php normal zR
autocmd FileType html,xhtml,xml,haml,jst,python,ruby setlocal foldmethod=indent
autocmd FileType python,ruby setlocal foldlevel=3
autocmd FileType html,xhtml,xml,haml,hst setlocal foldlevel=20
autocmd FileType html,xhtml,xml,haml,jst,python,ruby normal zR
autocmd FileType vim setlocal foldmethod=marker
autocmd FileType vim setlocal foldmarker={{{,}}}
autocmd FileType vim setlocal foldlevel=0
"" }}}
" editing settings {{{
set autoindent
set backspace=indent,eol,start
set clipboard=unnamed,unnamedplus
set cindent
set encoding=utf-8
set ignorecase
set incsearch
set linebreak
set shiftround
set complete=.,w,b,u,U,t,k
set completeopt=menu,noinsert,noselect
set number
set mouse=""
set expandtab
set tabstop=4
set softtabstop=2
set shiftwidth=2
set smartindent
" python indenting
autocmd FileType python setlocal expandtab
autocmd FileType python setlocal tabstop=8
autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal shiftwidth=4
" make indenting
autocmd FileType make setlocal noexpandtab
autocmd FileType make setlocal tabstop=4
autocmd FileType make setlocal softtabstop=2
autocmd FileType make setlocal shiftwidth=2
" snippet indenting
autocmd FileType snippets setlocal noexpandtab
autocmd FileType snippets setlocal tabstop=4
autocmd FileType snippets setlocal softtabstop=4
autocmd FileType snippets setlocal shiftwidth=4
" fuzzy control language
autocmd FileType fcl setlocal noexpandtab
autocmd FileType fcl setlocal tabstop=4
autocmd FileType fcl setlocal softtabstop=4
autocmd FileType fcl setlocal shiftwidth=4
" solve zsh escap delay
set timeoutlen=1000 ttimeoutlen=0
"" }}}
" buffer settings {{{
set autoread
set confirm
set cscopepathcomp=2
set hidden
set icon
set iconstring=nvim
set nowritebackup
set formatoptions+=t
autocmd VimEnter,BufRead,BufNewFile *.m setlocal filetype=matlab
autocmd VimEnter,BufRead,BufNewFile *.h setlocal filetype=cpp
autocmd VimEnter,BufRead,BufNewFile *.ejs setlocal filetype=html
autocmd VimEnter,BufRead,BufNewFile *.pro setlocal filetype=make
autocmd VimEnter,BufRead,BufNewFile *.fcl setlocal filetype=fcl
"" }}}
" window settings {{{
set cmdheight=1
set cmdwinheight=6
set relativenumber
set fillchars=stl:\ ,stlnc:-,vert:\|,fold:-,diff:-
set langmenu=en_US.UTF-8
set laststatus=2
set pumheight=6
set report=3
set ruler
set showcmd
set noshowmode
set showtabline=2
set scroll=3
set splitright
set tabpagemax=20
set title
set warn
""" }}}
" color scheme settings {{{
set cursorline
set background=dark
syntax enable
syntax on
set t_Co=256
colorscheme malokai
"" }}}
" omni completeion {{{
set omnifunc=syntaxcomplete#Complete
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
" airline settings {{{
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
let g:airline_detect_crypt = 1
let g:airline_detect_iminsert = 1
let g:airline_inactive_collapse = 1
let g:airline_theme = 'tomorrow'
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
" }}}
" indent line {{{
let g:indentLine_enabled = 0
" }}}
" clang-format {{{
let g:clang_format#code_style = 'google'
let g:clang_format#style_options = {
\   "Standard" : "C++11",
\}
" }}}
" NERDcommenter settings {{{
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = {
\   'c': { 'left': '/**', 'right': '*/' },
\   'arduino': { 'left': '/**', 'right': '*/' },
\   'vim': { 'left': '"' },
\   'conf': { 'left': '#' },
\   'prototxt': { 'left': '#' }
\}
" }}}
" YouCompleteMe {{{
let g:ycm_min_num_of_chars_for_completion = 1
" disable diagnostic
let g:ycm_show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_echo_current_diagnostic = 0
let g:ycm_open_loclist_on_ycm_diags = 0
" gather identifiers
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
" disable csharp
let g:ycm_auto_start_csharp_server = 0
" preview
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 0
let g:ycm_max_diagnostics_to_display = 36
" completion key
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<Enter>']
" config
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
" complete filepath
let g:ycm_filepath_completion_use_working_dir = 1
let g:ycm_semantic_triggers =  {
\   'c' : ['->', '.'],
\   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s', 're!\[.*\]\s'],
\   'ocaml' : ['.', '#'],
\   'cpp,objcpp' : ['->', '.', '::'],
\   'perl' : ['->'],
\   'php' : ['->', '::'],
\   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
\   'ruby' : ['.', '::'],
\   'lua' : ['.', ':'],
\   'erlang' : [':'],
\ }
let g:ycm_disable_for_files_larger_than_kb = 2048
" }}}
" custom key maps {{{
" leader {{{
let mapleader=","
let localleader="\\"
" }}}
" typo {{{
command!  WQ  wq
command!  Wq  wq
command!  W w
command!  Q q
command!  Qa  qa
command!  QA  qa
" }}}
" large movement {{{
nmap J  <C-D>
nmap K  <C-U>
nmap H  <C-E>
nmap L  <C-Y>
" }}}
" tab switching {{{
nmap  <leader>1	1gt
nmap  <leader>2	2gt
nmap  <leader>3	3gt
nmap  <leader>4	4gt
nmap  <leader>5	5gt
nmap  <leader>6	6gt
nmap  <leader>7	7gt
nmap  <leader>8	8gt
nmap  <leader>9	9gt
" }}}
" split tab {{{
nmap <leader><leader>v :vsplit<CR>
nmap <leader><leader>s :tabedit<CR>
nmap <leader><leader>c :tabclose<CR>
" }}}
" enter to complete popup
" end line semicolon ; {{{
autocmd	FileType  c	          nnoremap ; $a;
autocmd FileType  cpp         nnoremap ; $a;
autocmd FileType  cuda        nnoremap ; $a;
autocmd FileType  arduino     nnoremap ; $a;
autocmd	FileType  objc        nnoremap ; $a;
autocmd	FileType  objcpp      nnoremap ; $a;
autocmd	FileType  java        nnoremap ; $a;
autocmd	FileType  matlab      nnoremap ; $a;
autocmd	FileType  php         nnoremap ; $a;
autocmd	FileType  html        nnoremap ; $a;
autocmd	FileType  css         nnoremap ; $a;
autocmd	FileType  javascript  nnoremap ; $a;
autocmd	FileType  perl        nnoremap ; $a;
" }}}
" }}}
