"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

" Vimrc file, http://phuzz.org

"set autowrite      " auto saves changes when quitting and swiching buffer
"set expandtab      " tabs are converted to spaces, use only when required
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
set nocompatible
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
set pastetoggle=<F2>

syntax on           " syntax highlighing
"colorscheme desert    " use this color scheme
"set background=dark        " adapt colors for background
if has("gui_running")
	if has("gui_gtk2")
		set guifont=Consolas\ 10
	elseif has("gui_win32")
		set guifont=Consolas:h10:cANSI
	endif
    set lines=50       " window height 
    set columns=90        " window width
    "set background=light   " adapt colors for background
    "set selectmode=mouse,key,cmd
    "set keymodel=
endif

if has("autocmd")
    " Restore cursor position
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

    " Filetypes (au = autocmd)
    au FileType helpfile set nonumber      " no line numbers when viewing help
    au FileType helpfile nnoremap <buffer><cr> <c-]>   " Enter selects subject
    au FileType helpfile nnoremap <buffer><bs> <c-T>   " Backspace to go back
    
    " When using mutt, text width=72
    au FileType mail,tex set textwidth=72
    au FileType cpp,c,java,sh,pl,php,asp  set autoindent
    "au FileType cpp,c,java,sh,pl,php,asp  set smartindent
    "au FileType cpp,c,java,sh,pl,php,asp  set cindent
    "au BufRead mutt*[0-9] set tw=72
    
    " Automatically chmod +x Shell and Perl scripts
    "au BufWritePost   *.sh             !chmod +x %
    "au BufWritePost   *.pl             !chmod +x %

    " File formats
    au BufNewFile,BufRead  *.pls    set syntax=dosini
    au BufNewFile,BufRead  modprobe.conf    set syntax=modconf
endif

" Keyboard mappings
map <F1> :bp<CR>  " map F1 to open previous buffer
map <F2> :bn<CR>  " map F2 to open next buffer
"map <F3> :NERDTreeToggle<CR>  
"map <silent> <C-N> :silent noh<CR> " turn off highlighted search
"map ,v :sp ~/.vimrc<cr> " edit my .vimrc file in a split
"map ,e :e ~/.vimrc<cr>      " edit my .vimrc file
"map ,u :source ~/.vimrc<cr> " update the system settings from my vimrc file
"----- write out html file
"map ,h :source $VIM/vim71/syntax/2html.vim<cr>:w<cr>:clo<cr>


" Common command line typos
"cmap W w
"cmap Q q

" Keyboard mapping for numeric keypad
"imap <Esc>OM <c-m>
" map <Esc>OM <c-m>
"imap <Esc>OP <nop>
" map <Esc>OP <nop>
"imap <Esc>OQ /
" map <Esc>OQ /
"imap <Esc>OR *
" map <Esc>OR *
"imap <Esc>OS -
" map <Esc>OS -

"imap <Esc>Ol +
"imap <Esc>Om -
"imap <Esc>On ,
"imap <Esc>Op 0
"imap <Esc>Oq 1
"imap <Esc>Or 2
"imap <Esc>Os 3
"imap <Esc>Ot 4
"imap <Esc>Ou 5
"imap <Esc>Ov 6
"imap <Esc>Ow 7
"imap <Esc>Ox 8
"imap <Esc>Oy 9
"imap <Esc>Oz 0

" Colorscheme
" Maintainer:	Al Nguyen <al.nguyen@gmail.com>

" Available term colors
" ---------------------
" Black
" DarkBlue
" DarkGreen
" DarkCyan
" DarkRed
" DarkMagenta
" Brown, DarkYellow
" LightGray, LightGrey, Gray, Grey
" DarkGray, DarkGrey
" Blue, LightBlue
" Green, LightGreen
" Cyan, LightCyan
" Red, LightRed
" Magenta, LightMagenta
" Yellow, LightYellow
" White

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
"let g:colors_name = "al"
hi Normal		  guifg=white  guibg=#111111
hi Scrollbar	  guifg=darkcyan guibg=cyan
hi Menu			  guifg=black guibg=cyan
hi SpecialKey	  term=bold  cterm=bold  ctermfg=darkred  guifg=#cc0000
hi NonText		  term=bold  cterm=bold  ctermfg=darkred  gui=bold      guifg=#cc0000
hi Directory	  term=bold  cterm=bold  ctermfg=brown  guifg=#cc8000
hi ErrorMsg		  term=standout  cterm=bold  ctermfg=grey  ctermbg=red guifg=grey  guibg=Red
hi Search		  term=reverse  cterm=bold	ctermfg=darkred  ctermbg=lightcyan	guifg=darkred  guibg=lightcyan
hi MoreMsg		  term=bold  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=SeaGreen
hi ModeMsg		  term=bold  cterm=bold  gui=bold  guifg=White	guibg=Blue
hi LineNr		  term=underline  cterm=bold  ctermfg=black ctermbg=darkgrey	guifg=#555555	guibg=#222222
hi Question		  term=standout  cterm=bold  ctermfg=lightgreen	gui=bold  guifg=lightgreen
hi StatusLine	  term=bold,reverse  cterm=bold ctermfg=darkgrey ctermbg=white gui=bold guifg=#333333 guibg=white
hi StatusLineNC   term=reverse	ctermfg=white ctermbg=lightblue guifg=white guibg=blue
hi Title		  term=bold  cterm=bold  ctermfg=darkmagenta  gui=bold	guifg=Magenta
hi Visual		  term=reverse	cterm=reverse  gui=reverse
hi WarningMsg	  term=standout  cterm=bold  ctermfg=darkred guifg=Red
hi Cursor         term=reverse cterm=reverse gui=reverse 
hi Comment		  term=bold  cterm=bold ctermfg=darkmagenta  guifg=#777777
hi Constant		  term=underline  cterm=bold ctermfg=lightgray guifg=lightgray
hi Special		  term=bold  cterm=bold ctermfg=lightcyan  guifg=lightcyan
hi Identifier	  term=underline   ctermfg=darkcyan  guifg=darkcyan
hi Statement	  term=bold  cterm=bold ctermfg=lightgray	gui=bold guifg=lightgray
hi PreProc		  term=underline  ctermfg=darkcyan   guifg=darkcyan
hi Type			  term=underline  cterm=bold ctermfg=grey  gui=bold  guifg=#60ff60
hi Error		  term=reverse	ctermfg=darkcyan  ctermbg=black  guifg=Red	guibg=Black
hi Todo			  term=standout  ctermfg=black	ctermbg=gray guifg=black  guibg=gray
hi CursorLine	  term=none cterm=none gui=none 
hi CursorColumn	  term=none cterm=none gui=none 
hi parens ctermfg=lightgreen
hi MatchParen	  term=reverse	ctermbg=darkgreen  ctermfg=darkgray guibg=green guifg=darkgray
hi TabLine		  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi TabLineFill	  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi TabLineSel	  term=reverse	ctermfg=white ctermbg=lightblue guifg=white guibg=blue
hi link IncSearch		Visual
hi link String			Question
hi link Character		Constant
hi link Number			Constant
hi link Boolean			Constant
hi link Float			Number
hi link Function		Identifier
hi link Conditional		Statement
hi link Repeat			Statement
hi link Label			Statement
hi link Operator		Statement
hi link Keyword			Statement
hi link Exception		Statement
hi link Include			PreProc
hi link Define			PreProc
hi link Macro			PreProc
hi link PreCondit		PreProc
hi link StorageClass	Type
hi link Structure		Type
hi link Typedef			Type
hi link Tag				Special
hi link SpecialChar		Special
hi link Delimiter		Special
hi link SpecialComment	Special
hi link Debug			Special

