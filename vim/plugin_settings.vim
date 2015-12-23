" vdebug
let g:vdebug_options = {
\'debug_file_level': 2,
\'watch_window_style': 'expanded',
\'marker_default': '*',
\'continuous_mode': 0,
\'ide_key': 'vagrant',
\'break_on_open': 1,
\'on_close': 'detach',
\'path_maps': {'/var/www/app': '/Users/kdurbin/Development/churchcommunitybuilder/app'},
\'marker_closed_tree': '+',
\'timeout': 20,
\'port': 9000,
\'marker_open_tree': '-',
\'debug_window_level': 1,
\'server': '0.0.0.0'
\}

" SQL Format
let g:sqlutil_keyword_case = '\U'
let g:sqlutil_align_comma = 1

" syntastic cool symbols
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['css', 'scss'] }

" syntastic html settings
let g:syntastic_html_validator_parser = 'html'
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute "]

" syntastic check files on open
let g:syntastic_check_on_open=1

" autoclose
let g:AutoCloseExpandSpace = 0

" airline look pretty
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled=0
let g:airline_left_sep=''
let g:airline_right_sep=''

" dont echo the bufferline
let g:bufferline_echo = 0

" dont match carrots
let delimitMate_matchpairs = "(:),[:],{:}"

" ctrl p exclude
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard', 'node_modules/']

" hide ycm preview window
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" easytags use local tag files
set tags=./tags
let g:easytags_dynamic_files = 1
