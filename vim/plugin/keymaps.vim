" ctags nav
nnoremap <silent> <leader>] <C-]>
nnoremap <silent> <leader>[ <C-t>

" pane navigation
nnoremap <leader>w			<C-w>w
nnoremap <leader>h			<C-w>h
nnoremap <leader>j			<C-w>j
nnoremap <leader>k			<C-w>k
nnoremap <leader>l			<C-w>l
nnoremap <C-j>				3<C-e>
nnoremap <C-k>				3<C-y>
nnoremap <C-l>				3zl
nnoremap <C-h>				3zh

" pane control
nnoremap <leader>			:vsp<CR>
nnoremap <leader>			:sp<CR>

" tagbar controls
nnoremap <silent> <leader>= :TagbarToggle<CR>

" NERDTree controls
nnoremap <silent> <leader>- :NERDTreeToggle<CR>

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
nnoremap <up>				<nop>
nnoremap <down>				<nop>
nnoremap <left>				<nop>
nnoremap <right>			<nop>
inoremap <up>				<nop>
inoremap <down>				<nop>
inoremap <left>				<nop>
inoremap <right>			<nop>

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
