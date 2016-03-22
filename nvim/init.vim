" we are iMproved
set nocompatible

" give me a home variable to work with
let $VIMHOME = $HOME."/.config/nvim"

source $VIMHOME/plugin_settings.vim

call plug#begin('~/.vim/plugged')

" look and feel
Plug 'marciomazza/vim-brogrammer-theme'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-better-whitespace'

" syntax
Plug 'cakebaker/scss-syntax.vim',    { 'for' : ['scss', 'css'] }
Plug 'hail2u/vim-css3-syntax',       { 'for' : ['scss', 'css'] }
Plug 'jelera/vim-javascript-syntax', { 'for' : 'javascript' }
Plug 'pangloss/vim-javascript',      { 'for' : 'javascript' }
Plug 'mxw/vim-jsx',                  { 'for' : 'javascript' }
Plug 'moll/vim-node',                { 'for' : 'javascript' }
Plug 'suan/vim-instant-markdown',    { 'for' : 'markdown' }
Plug 'plasticboy/vim-markdown',      { 'for' : 'markdown' }
Plug 'helino/vim-json',              { 'for' : 'json' }
Plug 'othree/html5.vim',             { 'for' : 'html' }
Plug 'StanAngeloff/php.vim',         { 'for' : 'php' }

" syntax checking and completion
Plug 'benekastah/neomake'
Plug 'ternjs/tern_for_vim'
Plug 'ervandew/supertab'

" project navigation
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/gitignore'
Plug 'rking/ag.vim'

" text manipulation
Plug 'Align'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'terryma/vim-multiple-cursors'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" other
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'matchit.zip'
Plug 'xolox/vim-misc'
Plug 'junegunn/vim-emoji'
Plug 'joonty/vdebug'

call plug#end()
