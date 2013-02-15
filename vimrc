" add xmlc to have html colors
set nocompatible
filetype on
au BufNewFile,BufRead *.xmlc set filetype=html

" Ack shortcut
cabbrev ack Ack

" add line numbers
set number

" tab stuff
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab
set shiftround

" various stuff
set autowrite
set cursorline
set nowrap
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch
set backspace=indent,eol,start
set list listchars=tab:▸\ ,eol:¬,trail:•
set list

" spellcheck
set spell spelllang=en_us

" copy and paste in system clipboard
set clipboard=unnamed

" go back forever!
set history=1000
set undolevels=1000

" change the term title
set title

" no more freaking bells!
set visualbell
set noerrorbells

" UTF-8 encoding
set encoding=utf-8
setglobal fileencoding=utf-8
set nobomb
set termencoding=utf-8
set fileencodings=utf-8,iso-8859-15

" syntax highlighting
syntax enable

" change backup dir
set backupdir=./.backup,.,/tmp
set directory=./.backup,.,/tmp

" auto complete colors
highlight Pmenu ctermfg=black ctermbg=grey
highlight PmenuSel ctermfg=grey ctermbg=black

" solarized color
set background=dark
colorscheme solarized
hi CursorLine   cterm=NONE ctermbg=black

" man pages
let $PAGER=''

" SQL Format
let g:sqlutil_keyword_case = '\U'
let g:sqlutil_align_comma = 1

" debugging
let g:debuggerMaxChildren = 128
let g:debuggerMaxData = 9999
let g:debuggerMaxDepth = 100
let g:debuggerDisableDefaultMappings = 1
let g:debuggerDisableHelpPane = 1

" sessionman settings
let sessionman_save_on_exit = 1

" vundle plugin!!!
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" my bundles
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'Townk/vim-autoclose'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'majutsushi/tagbar'
Bundle 'SirVer/ultisnips'
Bundle 'jaredcobb/DBGp-Remote-Debugger-Interface'
Bundle 'Align'
Bundle 'SQLUtilities'
Bundle 'project.tar.gz'

" finish off vundle setup
filetype plugin indent on
