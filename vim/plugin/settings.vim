" special file types
augroup special_file_types
  autocmd!
  autocmd BufRead,BufNewFile *.scss set ft=scss
  autocmd BufRead,BufNewFile *.ejs set ft=html
augroup END

" change the cursor in different modes
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

" open nerd tree when no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim when only nerdtree is left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

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

" per language tabbing
augroup language_tabbing
  autocmd!
  autocmd Filetype php        setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype scss       setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype css        setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype ruby       setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype html       setlocal ts=2 sts=2 sw=2 expandtab
  autocmd Filetype coffee     setlocal foldmethod=indent nofoldenable
augroup END

" run sparkup for jsx
augroup sparkup_types
  autocmd!
  autocmd Filetype javascript runtime! ftplugin/html/sparkup.vim
augroup END

" various stuff
set autowrite
set cursorline
set nowrap
set backspace=indent,eol,start
set wildmode=longest:list,full
set wildmenu
set showmatch  " highlight matching brace

" dont get too close to the edge
set scrolloff=3
set sidescrolloff=3

" make search awesome
set ignorecase " ignore search case
set smartcase  " dont ignore case once you use a capital letter
set hlsearch   " highlight all search matches
set incsearch  " jump to search

" copy and paste in system clipboard
set clipboard=unnamed

" go back forever!
set history=1000
set undolevels=1000

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
" set foldenable
" set foldmethod=indent
" set foldnestmax=10
" set foldlevel=0

" session saving
set ssop-=options
set ssop-=folds

" colorscheme stuff
set background=dark
colorscheme brogrammer

" make vim draw faster
set lazyredraw
set ttyfast
