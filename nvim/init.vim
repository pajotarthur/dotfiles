syntax enable
filetype plugin indent on
set relativenumber
set number
let g:python3_host_prog = '/home/pajot/anaconda3/bin/python'
source /home/pajot/.local/share/nvim/site/autoload/plug.vim

"scall plug#begin('/home/pajot/.local/share/nvim/site/autoload/plug.nvim')
"#call plug#end()

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#sources#syntax#min_keyword_length = 3


map <C-n> :NERDTreeToggle<CR>
map <C-g> :Goyo<CR>


call plug#begin('~/.local/share/nvim/plugged/')
Plug 'kassio/neoterm'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-ragtag'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'bcicen/vim-vice'
Plug 'vim-scripts/bash-support.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'lervag/vimtex'
Plug 'tpope/vim-surround'
Plug 'mklabs/split-term.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neco-syntax'
Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'zchee/deoplete-go', { 'do': 'make' }
"Plug 'w0rp/ale'
" add plugins to &runtimepath"
call plug#end()

" Auto complete with C-Space
inoremap <silent><expr> <C-Space>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<C-Space>" :
        \ deoplete#manual_complete()

function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction
"}}}


if !exists('g:deoplete#sources')
    let g:deoplete#sources = {}
endif
if !exists('g:deoplete#keyword_patterns')
    let g:deoplete#keyword_patterns = {}
endif
if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif

" Set allowed sources
let g:deoplete#sources._ = ['buffer', 'member', 'file', 'tag'] ", 'omni']
let g:deoplete#sources.python = ['buffer', 'member', 'file', 'omni']
" Set default keyword pattern (vim regex)
let g:deoplete#keyword_patterns['default'] = '\h\w*'
" Set omni patters for deoplete (python3 regex)
let g:deoplete#omni#input_patterns.python = '([^. \t]\.|^\s*@|^\s*from\s.+ import |^\s*from |^\s*import )\w*'

" Default settings
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_completion_start_length = 2
let g:deoplete#manual_completion_start_length = 0

" Be extra sure that jedi works
let g:jedi#auto_vim_configuration = 0
let g:jedi#completions_enabled = 0
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = 0
let g:jedi#smart_auto_mappings = 0
"colorscheme vice
source /home/pajot/.config/nvim/colemak.vim
source /home/pajot/.config/nvim/disable-colemak.vim

nnoremap ; : 
