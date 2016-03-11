" we are iMproved
set nocompatible

" give me a home variable to work with
let $VIMHOME = $HOME."/.vim"

source $VIMHOME/plugin_settings.vim

" vundle plugin!!!
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" Plugin 'VundleVim/Vundle.vim'

call plug#begin('~/.vim/plugged')

" look and feel
Plug 'altercation/vim-colors-solarized'
Plug 'marciomazza/vim-brogrammer-theme'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-better-whitespace'

" syntax
Plug 'cakebaker/scss-syntax.vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'StanAngeloff/php.vim'
Plug 'plasticboy/vim-markdown'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'mxw/vim-jsx'
Plug 'suan/vim-instant-markdown'
Plug 'moll/vim-node'
Plug 'helino/vim-json'

" other
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'flowtype/vim-flow'
Plug 'Align'
Plug 'matchit.zip'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'rking/ag.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-scripts/gitignore'
Plug 'Raimondi/delimitMate'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ternjs/tern_for_vim'
Plug 'xolox/vim-misc'

" finish off vundle setup
" call vundle#end()
call plug#end()
