" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
Plug 'dylanaraps/wal.vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-rsi'
Plug 'unblevable/quick-scope'
Plug 'machakann/vim-sandwich'
call plug#end()

colorscheme wal

" splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow
set splitright

set number " Show current line number
set relativenumber " Show relative line numbers
set ts=4 sw=4 " Make tabs 4 spaceset rulers
set expandtab
" enter the current millenium
set nocompatible
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
noremap <Leader>y "+y
noremap <Leader>p "+p

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
nnoremap Y y$

" sensible line changing
vmap j gj
vmap k gk
nmap j gj
nmap k gk
" visually select the text that was last edited
noremap gV `[v`]

highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

inoremap <Leader><Space> <Esc>/<++><Enter>"_c4l
vnoremap <Leader><Space> <Esc>/<++><Enter>"_c4l
map <Leader><Space> <Esc>/<++><Enter>"_c4l
inoremap ;gui <++>
