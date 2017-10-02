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
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal foldmethod=marker
setlocal foldlevel=99
setlocal showcmd
setlocal incsearch
setlocal nowrap
setlocal nospell
setlocal foldenable

setlocal commentstring=#\ %s

