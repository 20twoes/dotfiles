" Make Vim more useful
set nocompatible

"
" Start Vundle configuration
"

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'altercation/vim-colors-solarized'
"Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'

" All Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on    " required

"
" End Vundle configuration
"

" NERDTree file filters
let NERDTreeIgnore = ['\.pyc$']

"" Syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pyflakes']
"let g:syntastic_scss_checkers = ['scss-lint']  " https://github.com/causes/scss-lint
let g:syntastic_html_checkers = ['']
let g:syntastic_javascript_checkers = ['jsxhint']

"" CtrlP settings
"let g:ctrlp_map = '<c-p>'  " TODO: This mapping isn't working.  Troubleshoot later.
"let g:ctrlp_map = 'CtrlP'
""let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'  " http://dougblack.io/words/a-good-vimrc.html#ctrlp-section

"set autowrite      " auto saves changes when quitting and swiching buffer
set expandtab      " tabs are converted to spaces, use only when required
"set noautoindent
set autoindent     " always set autoindenting on
set nocindent
"set cindent            " cindent
set nosmartindent
"set smartindent        " smart indent
"set nowrap         " don't wrap lines
"set sm             " show matching braces, somewhat annoying...
"set ttyscroll=0        " turn off scrolling, didn't work well with PuTTY
"set viminfo='20,<50,s10,h
set backspace=indent,eol,start
set encoding=utf-8
set hidden
set history=1000
set hlsearch        " highlight searches
set ignorecase      " ignore case when searching
set incsearch       " do incremental searching
set laststatus=2
set ls=2            " allways show status line
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines
set nobackup        " do not keep a backup file
set nostartofline   " don't jump to first character when paging
set noswapfile		" do not keep a swap file
set number          " show line numbers
"set relativenumber
set ruler           " show the cursor position all the time
set scrolloff=3     " keep 3 lines when scrolling
set shiftwidth=4    " numbers of spaces to (auto)indent
set shortmess=atI   " Abbreviate messages
set showcmd         " display incomplete commands
set showmode
set smartcase		" ignore case if search pattern is all lowercase, case sensitive otherwise
set softtabstop=4    " numbers of spaces to (auto)indent
set tabstop=4       " numbers of spaces of tab character
set title           " show title in console title bar
set ttyfast         " smoother changes
set undolevels=1000
set visualbell    " turn off visual bell
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
" Enhance command-line completion
set wildmenu
set pastetoggle=<F2>

syntax enable
set background=dark
colorscheme solarized

"if has("autocmd")
"    " Restore cursor position
"    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
"
"    " Filetypes (au = autocmd)
"    au FileType helpfile set nonumber      " no line numbers when viewing help
"    au FileType helpfile nnoremap <buffer><cr> <c-]>   " Enter selects subject
"    au FileType helpfile nnoremap <buffer><bs> <c-T>   " Backspace to go back
"
"    " When using mutt, text width=72
"    au FileType mail,tex set textwidth=72
"    au FileType cpp,c,java,sh,pl,php,asp  set autoindent
"    "au FileType cpp,c,java,sh,pl,php,asp  set smartindent
"    "au FileType cpp,c,java,sh,pl,php,asp  set cindent
"    "au BufRead mutt*[0-9] set tw=72
"
"    " Automatically chmod +x Shell and Perl scripts
"    "au BufWritePost   *.sh             !chmod +x %
"    "au BufWritePost   *.pl             !chmod +x %
"
"    " File formats
"    au BufNewFile,BufRead  *.pls    set syntax=dosini
"    au BufNewFile,BufRead  modprobe.conf    set syntax=modconf
"endif

" Keyboard mappings
let mapleader=','

map <F1> :bp<CR>  " map F1 to open previous buffer
map <F2> :bn<CR>  " map F2 to open next buffer

" Open nerdtree.vim
nnoremap <leader>n :NERDTreeToggle<CR>

" Clear search highlight until next search
nnoremap <leader><space> :nohlsearch<CR>

" Open ag.vim
nnoremap <leader>a :Ag

" Open tagbar.vim
nnoremap <leader>t :TagbarToggle<CR>

" Open ctrlp.vim
nnoremap <leader>p :CtrlP<CR>
