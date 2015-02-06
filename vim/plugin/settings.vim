" special file types
au BufRead,BufNewFile *.scss set ft=scss
au BufRead,BufNewFile *.ejs set ft=html

" change the cursor in different modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" tabs and eols

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
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch
set scrolloff=3
set sidescrolloff=3
set backspace=indent,eol,start
set wildmode=longest:list,full
set wildmenu

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
colorscheme Tomorrow-Night-Bright
set background=dark

" make vim draw faster
set lazyredraw
set ttyfast

" search dash
"au FileType javascript command Dash call SearchDash('js:')
"au FileType css command Dash call SearchDash('css:')
"au FileType sass command Dash call SearchDash('sass:')
"au FileType vim command Dash call SearchDash('vim:')
"au FileType perl command Dash call SearchDash('perl:')
"au FileType php command Dash call SearchDash('php:')
"au FileType ruby command Dash call SearchDash('ruby:')
"function SearchDash(lib)
"  let s:url = \"dash://".a:lib.expand("<cword>")
"  execute \"silent ! /usr/bin/open ". s:url
"  redraw!
"endfunction

" generate doc comments
"function! GenerateDOCComment()
"	let l    = line('.')
"	let i    = indent(l)
"	let pre  = repeat(' ',i)
"	let text = getline(l)
"	let params   = matchstr(text,'([^)]*)')
"	let paramPat = '\([$a-zA-Z_0-9]\+\)[, ]*\(.*\)'
"	echomsg params
"	let vars = []
"	let m    = ' '
"	let ml = matchlist(params,paramPat)
"	while ml!=[]
"		let [_,var;rest]= ml
"		let vars += [pre.' * @param '.var]
"		let ml = matchlist(rest,paramPat,0)
"	endwhile
"	let comment = [pre.'/**',pre.' * '] + vars + [pre.' */']
"	call append(l-1,comment)
"	call cursor(l+1,i+3)
"endfunction
