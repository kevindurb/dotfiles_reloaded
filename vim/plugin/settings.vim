" add xmlc to have html colors
au BufNewFile,BufRead *.xmlc set filetype=html

" Ack shortcut
cabbrev ack Ack

" fix my constant need to type Wa instead of wa
cabbrev Wa wa

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
set cursorcolumn
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

" UTF-8 encoding
set encoding=utf-8
setglobal fileencoding=utf-8
set nobomb
set termencoding=utf-8
set fileencodings=utf-8,iso-8859-15

" change backup dir
set backupdir=$VIMHOME/backup
set directory=$VIMHOME/backup

" change the term title
set title

" no more freaking bells!
set visualbell
set noerrorbells

" syntax highlighting
syntax enable

" solarized color
set background=dark
colorscheme solarized

" auto complete colors
highlight Pmenu ctermfg=black ctermbg=grey
highlight PmenuSel ctermfg=grey ctermbg=black

" cursor vertical and horizontal lines
hi CursorLine cterm=NONE ctermbg=black
hi CursorColumn cterm=NONE ctermbg=black
