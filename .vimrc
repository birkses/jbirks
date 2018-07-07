" Download and install vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'dylanaraps/wal.vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-rsi'
Plug 'unblevable/quick-scope'
Plug 'machakann/vim-sandwich'
Plug 'mbbill/undotree'
Plug 'ap/vim-buftabline'
call plug#end()

set undodir=~/.vim/undodir
set undofile

colorscheme wal

"only display buffer list if more than one buffer
let g:buftabline_show = 1

" splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow
set splitright

" number of lines to keep above and below the cursor
set scrolloff=5

" show current line number
set number

" show relative line numbers
set relativenumber

" make tabs 4 spaceset rulers
set ts=4 sw=4

" expand tabs to spaces
set expandtab

" enter the current millenium
set nocompatible

" ignore search case
set ignorecase

" unless you use capitals
set smartcase


" vim-sensible tpope
if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif
set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab
set nrformats-=octal
set incsearch
set hlsearch
" use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif
set ruler
set wildmenu
set display+=lastline
set encoding=utf-8
set t_Co=256

set path+=**
" allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
cmap d!! w !diff % -

nnoremap <Leader>y "+y
nnoremap <Leader>d "+d
vnoremap <Leader>y "+y
vnoremap <Leader>d "+d

nnoremap <Leader>p :set paste<CR>"+p:set nopaste<CR>
nnoremap <Leader>P :set paste<CR>"+P:set nopaste<CR>
vnoremap <Leader>p :set paste<CR>"+p:set nopaste<CR>
vnoremap <Leader>P :set paste<CR>"+P:set nopaste<CR>

set clipboard=unnamedplus

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
nnoremap Y y$

" sensible line changing
vmap j gj
vmap k gk
nmap j gj
nmap k gk

set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

inoremap <Leader><Space> <Esc>/<++><Enter>"_c4l
vnoremap <Leader><Space> <Esc>/<++><Enter>"_c4l
inoremap ;gui <++>

