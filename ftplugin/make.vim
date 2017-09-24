" File make.vim
" make-specific vim configuration

if has('win32')
    " Execute make on this makefile
    map <leader>p :!mingw32-make -f %<CR>
    " Make clean
    map <leader>[ :!mingw32-make -f % clean<CR>
    " Open-ended make
    map <leader>] :!mingw32-make -f %
else
    " Execute make on this makefile
    map <leader>p :!make -f %<CR>
    " Make clean
    map <leader>[ :!make -f % clean<CR>
    " Open-ended make
    map <leader>] :!make -f %
endif

"**************
" Vim Settings
"^^^^^^^^^^^^^^
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set foldmethod=marker
set foldlevel=99
set showcmd
set incsearch
set nowrap
set nospell
set foldenable

set commentstring=#\ %s

