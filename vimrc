" we are iMproved
set nocompatible

" give me a home variable to work with
if has('win32') || has ('win64')
    let $VIMHOME = $VIM."/vimfiles"
else
    let $VIMHOME = $HOME."/.vim"
endif

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

" autoclose
let g:AutoCloseExpandSpace = 0

" airline look pretty
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_whitespace=0
let g:airline_left_sep=''
let g:airline_right_sep=''

" dont echo the bufferline
let g:bufferline_echo = 0

" dont match carrots
let delimitMate_matchpairs = "(:),[:],{:}"

" ctrl p exclude
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard', 'node_modules/']

" vundle plugin!!!
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'

" look and feel
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'ap/vim-css-color'
Plugin 'bling/vim-airline'
Plugin 'ntpeters/vim-better-whitespace'

" syntax
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'StanAngeloff/php.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'othree/html5.vim'
Plugin 'mxw/vim-jsx'
Bundle 'suan/vim-instant-markdown'
Plugin 'moll/vim-node'
Plugin 'helino/vim-json'

" other
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'Align'
Plugin 'matchit.zip'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'rking/ag.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'joonty/vdebug'
Plugin 'vim-scripts/gitignore'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-scripts/renamer.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'wikitopian/hardmode'
Plugin 'easymotion/vim-easymotion'
Plugin 'ctrlpvim/ctrlp.vim'

" finish off vundle setup
filetype plugin indent on
