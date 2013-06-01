" map leader to comma for speed!!!
let mapleader=","

" ctags nav
nnoremap <silent> <leader>] <C-]>
nnoremap <silent> <leader>[ <C-t>

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
nnoremap <silent> <leader>= :TagbarToggle<CR>

" tab navigation with F1 F2 and ctrl-t
nnoremap <silent> <F1>		:tabprevious<CR>
nnoremap <silent> <F2>		:tabnext<CR>
nnoremap <silent> <C-t>		:tabnew<CR>
inoremap <silent> <F1>		<Esc>:tabprevious<CR>i
inoremap <silent> <F2>		<Esc>:tabnext<CR>i
inoremap <silent> <C-t>		<Esc>:tabnew<CR>
vnoremap <silent> <F1>		<Esc>:tabprevious<CR>v
vnoremap <silent> <F2>		<Esc>:tabnext<CR>v
vnoremap <silent> <C-t>		<Esc>:tabnew<CR>

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
nnoremap <silent> <leader>b :Bp<CR>
nnoremap <silent> <leader>1 :python debugger_resize()<cr>
nnoremap <silent> <leader>2 :python debugger_command('step_into')<cr>
nnoremap <silent> <leader>3 :python debugger_command('step_over')<cr>
nnoremap <silent> <leader>4 :python debugger_command('step_out')<cr>
nnoremap <silent> <leader>5 :python debugger_run()<cr>
nnoremap <silent> <leader>6 :python debugger_quit()<cr>
nnoremap <silent> <leader>9 :python debugger_context()<cr>
nnoremap <silent> <leader>0 :python debugger_property()<cr>
nnoremap <silent> <leader>9 :python debugger_watch_input("context_get")<cr>A<cr>
nnoremap <silent> <leader>0 :python debugger_watch_input("property_get", '<cword>')<cr>A<cr>
nnoremap <silent> <leader>e :python debugger_watch_input("eval")<cr>A

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

" php commenter
" nnoremap <buffer> <C-c> :call pdv#DocumentCurrentLine()<CR>

" doc comments
nnoremap <C-c> :call GenerateDOCComment()<CR>

" run syntax
nnoremap <silent> <leader>s :SyntasticCheck<CR>

" run background make
nnoremap <silent> <leader>m :Make!<CR>
