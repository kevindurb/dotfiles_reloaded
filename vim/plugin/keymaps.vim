" map leader to comma for speed!!!
let mapleader="\<space>"

" mouse for scroll
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" faster goto line
nnoremap <CR> G

" nerd tree
map <leader>= :NERDTreeToggle<CR>

" tagbar
map <leader>t :TagbarToggle<CR>

" faster write file
nnoremap <leader>w :w<CR>

" faster open file
nnoremap <leader>o :CtrlP<CR>

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
map      <up>	    <nop>
map      <down>	  <nop>
map      <left>	  <nop>
map      <right>	<nop>

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
nnoremap <C-c> :call GenerateDOCComment()<CR>

" insert filename
inoremap <leader>fn <C-R>=expand("%:t")<CR>

" save session
nnoremap <leader>s :mksession! session.vim<CR>

" remove highlight
nnoremap <leader>n :noh<CR>

" dash keyword
nmap <silent> <leader>d <Plug>DashSearch
