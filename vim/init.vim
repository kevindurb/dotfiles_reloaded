" we are iMproved
set nocompatible

" give me a home variable to work with
let $VIMHOME = $HOME."/.vim"

source $VIMHOME/plugin_settings.vim

call plug#begin('~/.vim/plugged')

" look and feel
Plug 'marciomazza/vim-brogrammer-theme'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-better-whitespace'

" one syntax to rule them all...
Plug 'sheerun/vim-polyglot'

" syntax checking and completion
Plug 'scrooloose/syntastic'
Plug 'ervandew/supertab'

" project navigation
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
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
Plug 'alvan/vim-closetag'

" other
Plug 'tpope/vim-heroku'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-dispatch'
Plug 'matchit.zip'
Plug 'xolox/vim-misc'

call plug#end()
