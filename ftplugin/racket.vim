" File racket.vim
" Racket file-type plugin

"**************
" Vim Settings
"^^^^^^^^^^^^^^
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set foldmethod=marker
set foldlevel=99
set showcmd
set incsearch
set nowrap
set nospell
set foldenable
set lisp

set commentstring=#|\ %s\ |#

" Additional configuration
"*************************
" ctags - not sure if this is even of use
if has('win32')
    set tags+=$HOME\ctags\racket.tags
else
    set tags+=$HOME/.config/ctags/racket.tags
endif

