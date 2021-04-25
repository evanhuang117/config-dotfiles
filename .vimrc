set expandtab
set tabstop=4
set shiftwidth=4
set background=dark
set termguicolors
set autoindent
set smartindent
set number
set ruler
"display full filepath all the time
set statusline+=%F
set laststatus=2
syntax on
filetype indent plugin on

let g:deepspace_italics=1
set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'joshdick/onedark.vim'

"color scheme for non 256bit
Plug 'rakr/vim-one' 

"assembly syntax highlighting
Plug 'shirk/vim-gas'

"autoindent for php and html
"Plug 'captbaritone/better-indent-support-for-php-with-html'
Plug '2072/vim-syntax-for-PHP'

Plug 'sheerun/vim-polyglot'

"auto close tag for html
"Plug 'alvan/vim-closetag'
"let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php'
"let g:closetag_filetypes = 'html,xhtml,phtml'

"auto parenthese etc
Plug 'jiangmiao/auto-pairs'
let g:AutoPairsShortcutToggle = '<C-k>'
let g:AutoPairs = {'(':')', '[':']', '{':'}', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}


"python highlighting
Plug 'vim-python/python-syntax'
let g:python_highlight_all = 1

"wakatime metrics
Plug 'wakatime/vim-wakatime'

call plug#end()

"use vim gas for asm highlighting
let asmsyntax="gas"

colorscheme onehalfdark
