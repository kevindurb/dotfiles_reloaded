" Plug {{{
" we are iMproved
set nocompatible

" give me a home variable to work with
let $VIMHOME = $HOME."/.vim"

call plug#begin('~/.vim/plugged')

" look and feel
Plug 'marciomazza/vim-brogrammer-theme'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-better-whitespace'

" one syntax to rule them all...
Plug 'sheerun/vim-polyglot'

" syntax checking and completion
Plug 'scrooloose/syntastic'
Plug 'ervandew/supertab'

" project navigation
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/gitignore'
Plug 'rking/ag.vim'

" text manipulation
Plug 'Align'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'terryma/vim-multiple-cursors'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'alvan/vim-closetag'

" other
Plug 'tpope/vim-heroku'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-dispatch'
Plug 'matchit.zip'
Plug 'xolox/vim-misc'

call plug#end()
" }}}

" Plugin Settings {{{
" syntastic settings
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_mode_map={ 'mode': 'active', 'passive_filetypes': ['css', 'scss'] }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 1

" syntastic javascript
let g:syntastic_javascript_checkers = ['eslint']

" syntastic html settings
let g:syntastic_html_validator_parser='html'
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute "]

" autoclose
let g:AutoCloseExpandSpace = 0

" airline look pretty
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#whitespace#enabled=0
let g:airline_left_sep=''
let g:airline_right_sep=''

" dont echo the bufferline
let g:bufferline_echo = 0

" dont match carrots
let delimitMate_matchpairs = "(:),[:],{:}"

" ctrl p exclude
let g:ctrlp_root_markers = ['package.json', '.eslintrc.js', '.tern-project']

" hide ycm preview window
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" easytags use local tag files
set tags=./tags
let g:easytags_dynamic_files = 1
" }}}

" VIM Settings {{{
if has('gui_running')
  set guifont=Source\ Code\ Pro:h12
  set transparency=10
endif

" special file types
augroup special_file_types
  autocmd!
  autocmd BufRead,BufNewFile *.scss set ft=scss
  autocmd BufRead,BufNewFile *.ejs set ft=html
augroup END

" change the cursor in different modes
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

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

" cursorline!
augroup language_tabbing
  autocmd!
  autocmd InsertLeave,WinEnter * set cursorline
  autocmd InsertEnter,WinLeave * set nocursorline
augroup END

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

" session saving
set ssop-=options
set ssop-=folds

" colorscheme stuff
set background=dark
colorscheme brogrammer

" make vim draw faster
set lazyredraw
set ttyfast
" }}}

" VIM Keymaps {{{
" map leader to comma for speed!!!
let mapleader=","

" nerd tree
map <leader>[ :NERDTreeToggle<CR>

" tagbar
map <leader>] :TagbarToggle<CR>

" choose buffer faster
map <leader>b :b
map <leader>bn :bnext<CR>
map <leader>bp :bprev<CR>
map <leader>bd :bdel<CR>

" pane control
nnoremap <leader>v		 :vsp<CR>
nnoremap <leader><S-v> :sp<CR>
nnoremap <leader>z		 <c-w>o

" pane resizing
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

" disable arrow keys
inoremap <up>	    <nop>
inoremap <down>	  <nop>
inoremap <left>	  <nop>
inoremap <right>	<nop>
nnoremap <up>	    <nop>
nnoremap <down>	  <nop>
nnoremap <left>	  <nop>
nnoremap <right>	<nop>
vnoremap <up>	    <nop>
vnoremap <down>	  <nop>
vnoremap <left>	  <nop>
vnoremap <right>	<nop>

" awesome moving between buffers
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
inoremap <C-h> <C-w><C-h>
inoremap <C-j> <C-w><C-j>
inoremap <C-k> <C-w><C-k>
inoremap <C-l> <C-w><C-l>
vnoremap <C-h> <C-w><C-h>
vnoremap <C-j> <C-w><C-j>
vnoremap <C-k> <C-w><C-k>
vnoremap <C-l> <C-w><C-l>

" folding fun
	" shortcut to fold an HTML tag
nnoremap <leader>ft Vatzf
	" shortcut to fold braces (must be inside braces to fold)
nnoremap <leader>fb zfa{

" shortcut for Silver Searcher
nnoremap <C-g> :Ag<space>

" stop doing ex mode
nnoremap Q gq

" insert filename
inoremap <leader>fn <C-R>=expand("%:t")<CR>

" save session
nnoremap <leader>s :mksession! session.vim<CR>

" remove highlight
nnoremap <leader>n :noh<CR>

" switch between relative and absolute line numbers
function! NumberToggle()
  if(&relativenumber ==1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<CR>
" }}}
