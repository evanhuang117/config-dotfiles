set expandtab
set tabstop=4
set shiftwidth=4
set background=dark
set termguicolors
set autoindent
set smartindent
set number
set ruler
syntax on
filetype indent plugin on

let g:deepspace_italics=1

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', { 'rtp': 'vim' }

"color scheme for non 256bit
Plug 'rakr/vim-one' 

"assembly syntax highlighting
Plug 'shirk/vim-gas'

call plug#end()

"use vim gas for asm highlighting
let asmsyntax="gas"

colorscheme onehalfdark
