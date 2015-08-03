" map leader to comma for speed!!!
let mapleader=","

" map jj to escape for mor speed!!
inoremap jj <ESC>

" nerd tree
map <leader>= :NERDTreeToggle<CR>

" tagbar
map <leader>t :TagbarToggle<CR>

" choose buffer faster
map <leader>b :b
map <leader>bn :bnext<CR>
map <leader>bp :bprev<CR>
map <leader>bd :bdel<CR>

" pane navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" pane control
nnoremap <leader>v		 :vsp<CR>
nnoremap <leader><S-v> :sp<CR>
nnoremap <leader>z		 <c-w>o

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

" folding fun
	" shortcut to fold an HTML tag
nnoremap <leader>ft Vatzf
	" shortcut to fold braces (must be inside braces to fold)
nnoremap <leader>fb zfa{

" shortcut for Silver Searcher
nnoremap <C-g> :Ag<space>

" stop doing ex mode
nnoremap Q gq

" doc comments
"nnoremap <C-c> :call GenerateDOCComment()<CR>

" insert filename
inoremap <leader>fn <C-R>=expand("%:t")<CR>

" save session
nnoremap <leader>s :mksession! session.vim<CR>

" remove highlight
nnoremap <leader>n :noh<CR>

" dash keyword
"nmap <silent> <leader>d <Plug>DashSearch
map <leader>d :Dash<cr>

" insert php arrow
inoremap <C-l>  => 
