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

" calendar settings
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

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
Plugin 'gmarik/vundle'

" my bundles
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'L9'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'
Plugin 'Townk/vim-autoclose'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'Align'
Plugin 'SQLUtilities'
Plugin 'matchit.zip'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'rking/ag.vim'
Plugin 'nono/vim-handlebars'
Plugin 'renamer.vim'
Plugin 'rizzatti/funcoo.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'joonty/vdebug'
Plugin 'kchmck/vim-coffee-script'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'vim-scripts/Gundo'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'StanAngeloff/php.vim'
Plugin 'itchyny/calendar.vim'
Plugin 'vim-scripts/gitignore'
Plugin 'christoomey/vim-tmux-navigator'

" finish off vundle setup
filetype plugin indent on
