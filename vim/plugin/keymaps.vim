" map leader to comma for speed!!!
let mapleader=","

" ctags nav
nnoremap <C-]> <C-t>

" pane navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" pane control
nnoremap <leader>v			:vsp<CR>
nnoremap <leader><S-v>		:sp<CR>
nnoremap <leader>z			<c-w>o

" tagbar controls
nnoremap <leader>= :TagbarToggle<CR>

" disable arrow keys
map <up>	<nop>
map <down>	<nop>
map <left>	<nop>
map <right>	<nop>
map <up>	<nop>
map <down>	<nop>
map <left>	<nop>
map <right>	<nop>

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

" run syntax
nnoremap <leader>s :SyntasticCheck<CR>

" run background make
nnoremap <leader>m :Make!<CR>

" insert filename
inoremap <leader>fn <C-R>=expand("%:t")<CR>

" save session
nnoremap <C-s> :MkSession! session.vim<CR>

" remove highlight
nnoremap <leader>n :noh<CR>

" dash keyword
nmap <silent> <leader>d <Plug>DashSearch
