syntax enable
filetype plugin indent on
set relativenumber
set number
call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'wilriker/vim-fish'
Plug 'vim-scripts/bash-support.vim'
Plug 'terryma/vim-multiple-cursors'
" add plugins to &runtimepath
call plug#end()

