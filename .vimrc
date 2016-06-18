nnoremap s i_<Esc>r " Change space to insert one character
inoremap <C-g> <Esc> " Change ctrl-g to exit insert mode
set number " Show current line number
set relativenumber " Show relative line numbers
set hlsearch off " Disable search highlighting
set incsearch on " Enable incremental search
" Make tabs 4 spaces
set ts=4 sw=4
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
noremap <Leader>y "+y
noremap <Leader>p "+p
