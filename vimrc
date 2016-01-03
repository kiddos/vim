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
Plugin 'kiddos/vim-after-syntax'
"" git {{{
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'gregsexton/gitv'
Plugin 'sjl/gundo.vim'
"" }}}
"" tmux {{{
Plugin 'erikw/tmux-powerline'
Plugin 'edkolev/tmuxline.vim'
"" }}}
"" utility {{{
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'majutsushi/tagbar'
Plugin 'ryanoasis/vim-devicons'
Plugin 'mhinz/vim-startify'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
Plugin 'tyru/open-browser.vim'
Plugin 'mbbill/undotree'
Plugin 'kannokanno/previm'
Plugin 'arecarn/crunch.vim'
Plugin 'arecarn/selection.vim'
Plugin 'ashisha/image.vim'
Plugin 'chrisbra/csv.vim'
Plugin 'garbas/vim-snipmate'
Plugin 'godlygeek/tabular'
"" }}}
"" libs {{{
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
"" }}}
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
Plugin 'tpope/vim-classpath'
" }}}
" Matlab / R {{{
Plugin 'vim-scripts/octave.vim--'
Plugin 'jcfaria/Vim-R-plugin'
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
set expandtab
set tabstop=4
set softtabstop=2
set shiftwidth=2
" python indenting
autocmd FileType python setlocal expandtab
autocmd FileType python setlocal tabstop=8
autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal shiftwidth=4
" solve zsh escap delay
set timeoutlen=1000 ttimeoutlen=0
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
set formatoptions+=t
autocmd FileType c,cpp,objc,objcpp,java,cs,asm,vhdl,ruby,eruby,python set textwidth=69
autocmd FileType html,css,javascript,less,sass,scss,elm,matlab,r,vim set textwidth=80
autocmd VimEnter,BufRead,BufNewFile *.m set filetype=matlab
autocmd VimEnter,BufRead,BufNewFile *.h set filetype=cpp
autocmd VimEnter,BufRead,BufNewFile *.ejs set filetype=html
autocmd VimEnter,BufRead,BufNewFile *.pro set filetype=make
"" }}}
"" window settings {{{
set cmdheight=1
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
""" }}}
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
"" large movement
nmap	J	<C-D>
nmap	K	<C-U>
nmap	H	<C-E>
nmap	L	<C-Y>
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
inoremap <C-F>  <C-R><Tab><C-P>
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
"" GitGutter settings {{{
autocmd VimEnter * silent! :GitGutterDisable
"" }}}
"" indent line {{{
let g:indentLine_enabled = 0
"""}}}
"" syntasitc settings {{{
autocmd VimEnter * silent! :SyntasticToggleMode
autocmd	BufWritePost * silent! :SyntasticCheck
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"" error highlight
highlight	SyntasticErrorSign	cterm=BOLD	ctermfg=253	ctermbg=124	guifg=white	guibg=red
highlight	SyntasticError		cterm=BOLD	ctermfg=253	ctermbg=236	guibg=#2f0000
highlight	SyntasticErrorLine	cterm=BOLD	ctermfg=253	ctermbg=236	guibg=#2f0000

"" general options
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_echo_current_error = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 6
let g:syntastic_auto_jump = 0
"" language specific options
" c options {{{
let g:syntastic_c_check_header = 1
let g:syntastic_c_compiler_options = "-std=c89 -Wall -g -O3 -fopenmp -pthread -fPIC -fmax-errors=10 -DDEBUG"
let g:syntastic_c_include_dirs = [
\   '/usr/include/ImageMagick/',
\   '/usr/lib/gcc/x86_64-linux-gnu/4.8/include',
\	'.',
\	'..',
\	'./include',
\	'../include',
\   './src',
\   '../src',
\   ]
" }}}
" c++ options {{{
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler_options = "-Wall -g -O3 -fopenmp -std=c++11 -pthread -fPIC -DDEBUG -DQT_DEBUG"
let g:syntastic_cpp_include_dirs = [
\	'/opt/Qt5.5.0/5.5/gcc_64/include/',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/Enginio',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/Qt3DCore',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/Qt3DInput',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/Qt3DQuick',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/Qt3DQuickRenderer',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/Qt3DRenderer',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtBluetooth',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtCLucene',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtConcurrent',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtCore',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtDBus',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtDeclarative',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtDesigner',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtDesignerComponents',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtGui',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtHelp',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtLocation',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtMultimedia',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtMultimediaQuick_p',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtMultimediaWidgets',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtNetwork',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtNfc',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtOpenGL',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtOpenGLExtensions',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtPlatformHeaders',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtPlatformSupport',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtPositioning',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtPrintSupport',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtQml',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtQmlDevTools',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtQuick',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtQuickParticles',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtQuickTest',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtQuickWidgets',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtScript',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtScriptTools',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtSensors',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtSerialPort',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtSql',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtSvg',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtTest',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtUiPlugin',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtUiTools',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtWebChannel',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtWebEngine',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtWebEngineWidgets',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtWebKit',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtWebKitWidgets',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtWebSockets',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtWebView',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtWidgets',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtX11Extras',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtXml',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtXmlPatterns',
\	'/opt/Qt5.5.0/5.5/gcc_64/include/QtZlib',
\   '/usr/lib/gcc/x86_64-linux-gnu/4.8/include',
\	'.',
\	'..',
\	'./include',
\	'../include',
\   './src',
\   '../src',
\   ]
" }}}
" objc options {{{
let g:syntastic_objc_compiler_options = "-Wall -g -O3 -fPIC `gnustep-config --objc-flags` `gnustep-config --objc-libs` "
let g:syntastic_objc_include_dirs = [
\   '/usr/include/GNUstep',
\   '/usr/lib/gcc/x86_64-linux-gnu/4.8/include',
\	'.',
\	'..',
\	'./include',
\	'../include',
\   './src',
\   '../src',
\   ]
"let g:syntastic_objc_compiler = "clang"
"let g:syntastic_objc_compiler_options += "-DGNU_GUI_LIBRARY=1 -DGNU_RUNTIME=1 "
"let g:syntastic_objc_compiler_options += "-DGNUSTEP_BASE_LIBRARY=1 -fno-strict-aliasing "
"let g:syntastic_objc_compiler_options += "-fexceptions -fobjc-exceptions "
"let g:syntastic_objc_compiler_options += "-D_NATIVE_OBJC_EXCEPTIONS -pthread -fPIC "
"let g:syntastic_objc_compiler_options += "-Wall -DGSWARN -DGSDIAGNOSE -Wno-import -g -O2 "
"let g:syntastic_objc_compiler_options += "-fgnu-runtime -fconstant-string-class=NSConstantString"
let g:syntastic_objc_include_dirs = ['/usr/include/GNUstep']
" }}}
" python options {{{
let g:syntastic_python_python_exec = '/usr/bin/python'
let g:syntastic_python_checkers = ['flake8', 'python']
let g:syntastic_python_flake8_args='--ignore=E501,E225,E302,E303,W391,E226,E231,E701'
" }}}
" html options {{{
let g:syntastic_html_checkers = ['jshint']
" }}}
" javascript options {{{
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_closurecompiler_path = '~/Web/tools/google-closure-compiler.jar'
" }}}
" jade options {{{
let g:syntastic_jade_checkers = ['jade-lint']
" }}}
" R options {{{
let g:syntastic_enable_r_svtools_checker = 1
" }}}
" }}}
"" YouCompleteMe settings {{{
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_auto_trigger = 1
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_echo_current_diagnostic = 0
let g:ycm_always_populate_location_list = 0

let g:ycm_allow_changing_updatetime = 0
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_string = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_collect_identifiers_from_tags_files = 0
let g:ycm_seed_identifiers_with_syntax = 1

let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
"let g:ycm_server_use_vim_stdout = 1
"let g:ycm_server_log_level = 'debug'
let g:ycm_auto_start_csharp_server = 1
let g:ycm_auto_stop_csharp_server = 1
let g:ycm_csharp_server_port = 3600

let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:ycm_key_list_select_completion = []
let g:ycm_key_list_previous_completion = []
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_key_detailed_diagnostics = '<leader>d'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_filepath_completion_use_working_dir = 1
let g:ycm_cache_omnifunc = 1
let g:ycm_use_ultisnips_completer = 0
let g:ycm_semantic_triggers =  {
\   'c' : ['->', '.', '<', '#'],
\   'objc' : ['->', '.', '<', '#'],
\   'cpp' : ['->', '.', '::', '#', '<'],
\   'objcpp' : ['->', '.', '::', '#', '<'],
\   'java' : ['.'],
\   'ocaml' : ['.', '#'],
\   'perl' : ['->'],
\	'css' : [':'],
\   'php' : ['.', '->', '::', '_', '$', '['],
\   'javascript' : ['.', "'", '(', '"'],
\   'cs,d,vim,python,perl6,scala,vb,elixir,go' : ['.'],
\	'html' : ['"', '<', '/', '=', '"'],
\   'ruby' : ['.', '::'],
\   'lua' : ['.', ':'],
\   'erlang' : [':'],
\	'r' : ['$']
\ }
" }}}
"" startify settings {{{
let g:startify_list_order = [
		\ ['   My most recently used files in the current directory:'],
		\ 'dir',
		\ ['   My most recently used files:'],
		\ 'files',
		\ ['   Bookmarks:'],
		\ 'bookmarks',
		\ ['   Sessions:'],
		\ 'sessions',
		\ ]
let g:startify_files_number = 3
let g:startify_bookmarks = [
		\{'vimrc': '  ~/.vim/vimrc'},
		\{'nvimrc': '  ~/.config/nvim/init.vim'}]
let g:startify_custom_header =
		\ map(split(system('tips.py | cowsay -f $(ls /usr/share/cowsay/cows | shuf -n 1 | cut -d. -f1)'), '\n'), '"   ". v:val') + ['']
let g:startify_change_to_dir = 1
let g:startify_change_to_vcs_root = 1
let g:startify_enable_special = 0
"" }}}
"" useful functions and keybindings {{{
function! Toggle_filetype_dot_m()
  if &ft == "objc"
    execute ":setlocal ft=matlab"
  elseif &ft == "matlab"
    execute ":setlocal ft=objc"
  endif
endfunction

function! Test_webpage()
  if &ft == "php"
    echom "php file type"
    let dst = expand('%:t') . ".html"
    let temp = tempname()
    execute ":silent ! php % > " . dst
    execute ":silent ! google-chrome " . dst " > " . temp . " 2>&1 "
    execute ":pclose!"
    execute ":redraw!"
    set splitbelow
    execute ":6split"
    execute ":e! " . temp
    set nosplitbelow
    let delStatus = delete(dst)
    if delStatus != 0
      echo "Fail to Delete temp file"
    endif
  elseif &ft == "html"
    let this_file = expand('%:p')
    echom "html file type"
    execute ":silent ! google-chrome " . this_file
    execute ":pclose!"
    execute ":redraw!"
  endif
endfunction

function! ShowSpaces(...)
  let @/='\v(\s+$)|( +\ze\t)'
  let oldhlsearch=&hlsearch
  if !a:0
    let &hlsearch=!&hlsearch
  else
    let &hlsearch=a:1
  end
  return oldhlsearch
endfunction

function! TrimSpaces() range
  let oldhlsearch=ShowSpaces(1)
  execute a:firstline.",".a:lastline."substitute ///gec"
  let &hlsearch=oldhlsearch
endfunction

function! Compile_to_CSS()
  let src = expand("%:t")
  let target = expand("%:r") . ".css"
  let compiler = ""
  if &ft == "less"
    let compiler = "less"
  elseif &ft == "sass"
    let compiler = "sass"
  elseif &ft == "scss"
    let compiler = "scss"
  endif
  execute ":silent !".compiler." ".src." ".target
endfunction

" commands
"autocmd BufWritePost *.less,*.sass,*.scss call Compile_to_CSS()
command! CompiletoCSS call Compile_to_CSS()
command! ToggleDotMFiles call Toggle_filetype_dot_m()
command! -bar -nargs=? ShowSpaces call ShowSpaces(<args>)
command! -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call TrimSpaces()
" function keys
nmap  <silent><F1>  :set columns=999<CR>:set lines=66<CR>:redraw<CR>
imap  <silent><F1>  :set columns=999<CR>:set lines=66<CR>:redraw<CR>
nmap  <silent><F2>  :NERDTreeToggle .<CR>
imap  <silent><F2>  :NERDTreeToggle .<CR>
nmap  <silent><F3>  :GitGutterToggle<CR>
imap  <silent><F3>  :GitGutterToggle<CR>
nmap  <silent><F4>  :IndentLinesToggle<CR>
imap  <silent><F4>  :IndentLinesToggle<CR>
nmap  <silent><F5>  :call Test_webpage()<CR>
imap  <silent><F5>  :call Test_webpage()<CR>
nmap  <silent><F6>  :call Toggle_ft_m()<CR><CR>
nmap  <silent><F6>  :call Toggle_ft_m()<CR><CR>
nmap  <silent><F7>  :setlocal spell!<CR>
imap  <silent><F7>  :setlocal spell!<CR>
nmap  <silent><F8>  :Crunch<CR>
imap  <silent><F8>  :Crunch<CR>
nmap  <silent><F9>  :TagbarToggle<CR>
imap  <silent><F9>  :TagbarToggle<CR>
" tabularize shortcut
nmap  <leader><space> :Tabularize / <CR>
nmap  <leader>"       :Tabularize /"[^"]*"<CR>
nmap  <leader>(       :Tabularize /(.*)<CR>
nmap  <leader>=       :Tabularize /= <CR>
"" }}}
