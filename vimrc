" we are iMproved
set nocompatible
" SQL Format
let g:sqlutil_keyword_case = '\U'
let g:sqlutil_align_comma = 1

" debugging
let g:debuggerMaxChildren = 128
let g:debuggerMaxData = 9999
let g:debuggerMaxDepth = 100
let g:debuggerDisableDefaultMappings = 1
let g:debuggerDisableHelpPane = 1

" vundle plugin!!!
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" my bundles
Bundle 'L9'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'Townk/vim-autoclose'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'majutsushi/tagbar'
Bundle 'SirVer/ultisnips'
Bundle 'jaredcobb/DBGp-Remote-Debugger-Interface'
Bundle 'Align'
Bundle 'SQLUtilities'
Bundle 'project.tar.gz'
Bundle 'walm/jshint.vim'
Bundle 'matchit.zip'
Bundle 'uguu-org/vim-matrix-screensaver'
Bundle 'FuzzyFinder'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'Lokaltog/vim-easymotion'

" finish off vundle setup
filetype plugin indent on
