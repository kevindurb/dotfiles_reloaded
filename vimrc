" we are iMproved
set nocompatible

" give me a home variable to work with
if has('win32') || has ('win64')
    let $VIMHOME = $VIM."/vimfiles"
else
    let $VIMHOME = $HOME."/.vim"
endif

" remove delay when leaving insert mode
if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif

" SQL Format
let g:sqlutil_keyword_case = '\U'
let g:sqlutil_align_comma = 1

" dbext settings
let g:dbext_default_profile_dev = 'type=MYSQL:user=root:passwd=r00t:host=localhost:dbname=ccb_app_dev'

" syntastic cool symbols
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [], 'passive_filetypes': ['css', 'scss'] }

" syntastic jshint location


" autoclose
let g:AutoCloseExpandSpace = 0
let g:AutoClosePairs = "() {} [] ` \" ' <>"

" powerline!
python import sys; sys.path.append("/usr/local/lib/python2.7/site-packages/")
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" vundle plugin!!!
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" my bundles
Bundle 'dsolstad/vim-wombat256i'
Bundle 'L9'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-markdown'
Bundle 'Townk/vim-autoclose'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'Align'
Bundle 'SQLUtilities'
Bundle 'matchit.zip'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'rking/ag.vim'
Bundle 'nono/vim-handlebars'
Bundle 'renamer.vim'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'joonty/vdebug'
Bundle 'kchmck/vim-coffee-script'
Bundle 'Lokaltog/vim-easymotion'

" finish off vundle setup
filetype plugin indent on
