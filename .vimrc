nnoremap <C-g> <Esc>
vnoremap <C-g> <Esc>gV
onoremap <C-g> <Esc>
inoremap <C-g> <Esc>`^
set number " Show current line number
set relativenumber " Show relative line numbers
set hlsearch off " Disable search highlighting
set incsearch on " Enable incremental search
set ts=4 sw=4 " Make tabs 4 spaces
set mouse=a
syntax on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
noremap <Leader>y "+y
noremap <Leader>p "+p
