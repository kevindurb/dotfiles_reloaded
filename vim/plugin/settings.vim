" special file types
au BufNewFile,BufRead *.xmlc set filetype=html
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.html set syntax=underscore_template

" change the cursor in different modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

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

" tab stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set smarttab
set shiftround

" per language tab stuff
autocmd Filetype php        setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype scss       setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype css        setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype ruby       setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype html       setlocal ts=2 sts=2 sw=2 expandtab

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

" folding
set foldenable

" better drawing
set ttyfast

" session saving
set ssop-=options
set ssop-=folds

" colorscheme stuff
colorscheme wombat256i

" auto complete colors
highlight Pmenu ctermfg=black ctermbg=grey
highlight PmenuSel ctermfg=grey ctermbg=black

" cursor vertical and horizontal lines
hi CursorLine cterm=NONE ctermbg=black

" generate doc comments
function! GenerateDOCComment()
	let l    = line('.')
	let i    = indent(l)
	let pre  = repeat(' ',i)
	let text = getline(l)
	let params   = matchstr(text,'([^)]*)')
	let paramPat = '\([$a-zA-Z_0-9]\+\)[, ]*\(.*\)'
	echomsg params
	let vars = []
	let m    = ' '
	let ml = matchlist(params,paramPat)
	while ml!=[]
		let [_,var;rest]= ml
		let vars += [pre.' * @param '.var]
		let ml = matchlist(rest,paramPat,0)
	endwhile
	let comment = [pre.'/**',pre.' * '] + vars + [pre.' */']
	call append(l-1,comment)
	call cursor(l+1,i+3)
endfunction
