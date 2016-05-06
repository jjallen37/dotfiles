set shell=/bin/sh 
set nocompatible              " be iMproved, required
filetype off                  " required

" Yank to clipboard by default. 
set clipboard=unnamed


""""""" PLUGINS """""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Solarized colors
Plugin 'altercation/vim-colors-solarized'  
" Vim surround 
Plugin 'tpope/vim-surround'
" Vim fugitive for git 
Plugin 'tpope/vim-fugitive'
" NERD Tree
Plugin 'scrooloose/nerdtree'
" NERD Commenter
Plugin 'scrooloose/nerdcommenter'
" JSON Syntax Highlighting
Plugin 'elzr/vim-json'
" Tabular alignment
Plugin 'godlygeek/tabular'
" Autocomplete 
" Plugin 'Valloric/YouCompleteMe'
" Tmux Navigation
Plugin 'christoomey/vim-tmux-navigator'
" Tmux.conf highlighting
Plugin 'tmux-plugins/vim-tmux'

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""" OTHER TWEAKS  """""""""
" Tell ctrlp fuzzy find plugin to ignore files in gitignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Force Gdiff to use vertical splits
set diffopt+=vertical

" Use mouse in terminal
set mouse=a

""""""" VISUAL ENHANCEMENTS """""""""
set number        " Show line numbers
syntax enable     " Use syntax highlighting
set background=dark
" let g:solarized_termcolors = 256 " Use to make even darker
colorscheme solarized

" size of a hard tabstop
set tabstop=2
" size of an "indent"
set shiftwidth=2
" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=2
" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab
" " always uses spaces instead of tab characters
set expandtab

""""""" REMAPPINGS """""""""
" Toggle nerd tree side bar
map <C-n> :NERDTreeToggle<CR>

" Mappings to traverse vim's lists of buffers, from Tim Pope
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

