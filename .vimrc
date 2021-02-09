set expandtab
set tabstop=4
set shiftwidth=4
set background=dark
set termguicolors
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
call plug#end()

colorscheme onehalfdark
