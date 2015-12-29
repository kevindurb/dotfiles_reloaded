" special file types
au BufRead,BufNewFile *.scss set ft=scss
au BufRead,BufNewFile *.ejs set ft=html

" always start with hard mode on
" au VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" change the cursor in different modes
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
else
    let &t_SI = "\e[5 q"
    let &t_EI = "\e[2 q"
endif

" close vim when only nerdtree is left
au bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Silver Searcher shortcut
cabbrev ag Ag

" fix my constant need to type Wa instead of wa
cabbrev Wa wa
cabbrev Wq wq
cabbrev Wqa wqa
cabbrev W w
cabbrev Q q

" add line numbers
set number

" show the status line
set laststatus=2
set noshowmode

" more natural split directions
set splitbelow
set splitright

" tab stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set smarttab
set shiftround

" per language stuff
au Filetype php        setlocal ts=4 sts=4 sw=4 noexpandtab
au Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
au Filetype scss       setlocal ts=2 sts=2 sw=2 expandtab
au Filetype css        setlocal ts=2 sts=2 sw=2 expandtab
au Filetype ruby       setlocal ts=2 sts=2 sw=2 expandtab
au Filetype html       setlocal ts=2 sts=2 sw=2 expandtab
au Filetype coffee     setlocal foldmethod=indent nofoldenable

" various stuff
set autowrite
set cursorline
set nowrap
set backspace=indent,eol,start
set wildmode=longest:list,full
set wildmenu

" dont get too close to the edge
set scrolloff=3
set sidescrolloff=3

" make search awesome
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch

" enable mouse
" set mouse=a

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

" folding
set foldenable

" session saving
set ssop-=options
set ssop-=folds

" colorscheme stuff
set background=dark
" colorscheme Tomorrow-Night-Bright
colorscheme solarized

" make vim draw faster
set lazyredraw
set ttyfast
