" map leader to comma for speed!!!
let mapleader=","

" ctags nav
nnoremap <leader>] <C-]>
nnoremap <leader>[ <C-t>

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

" tab navigation with F1 F2 and ctrl-t
nnoremap <F1>		:tabprevious<CR>
nnoremap <F2>		:tabnext<CR>
nnoremap <C-t>		:tabnew<CR>
inoremap <F1>		<Esc>:tabprevious<CR>i
inoremap <F2>		<Esc>:tabnext<CR>i
inoremap <C-t>		<Esc>:tabnew<CR>
vnoremap <F1>		<Esc>:tabprevious<CR>v
vnoremap <F2>		<Esc>:tabnext<CR>v
vnoremap <C-t>		<Esc>:tabnew<CR>

" disable arrow keys
map <up>	<nop>
map <down>	<nop>
map <left>	<nop>
map <right>	<nop>
map <up>	<nop>
map <down>	<nop>
map <left>	<nop>
map <right>	<nop>

" debugger controls
nnoremap <leader>b :Bp<CR>
nnoremap <leader>1 :python debugger_resize()<cr>
nnoremap <leader>2 :python debugger_command('step_into')<cr>
nnoremap <leader>3 :python debugger_command('step_over')<cr>
nnoremap <leader>4 :python debugger_command('step_out')<cr>
nnoremap <leader>5 :python debugger_run()<cr>
nnoremap <leader>6 :python debugger_quit()<cr>
nnoremap <leader>9 :python debugger_context()<cr>
nnoremap <leader>0 :python debugger_property()<cr>
nnoremap <leader>9 :python debugger_watch_input("context_get")<cr>A<cr>
nnoremap <leader>0 :python debugger_watch_input("property_get", '<cword>')<cr>A<cr>
nnoremap <leader>e :python debugger_watch_input("eval")<cr>A

" itunes shortcuts
nnoremap <leader>i :StatusiTunes<CR>

" jsbeautify
nnoremap <C-f> :call JsBeautify()<cr>

" folding fun
	" shortcut to fold an HTML tag
nnoremap <leader>ft Vatzf
	" shortcut to fold braces (must be inside braces to fold)
nnoremap <leader>fb zfa{

" shortcut for Silver Searcher
nnoremap <leader>g :Ag<space>

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
