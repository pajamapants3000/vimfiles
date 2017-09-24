" File scheme.vim
" Scheme (Racket) file-type plugin

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

set commentstring=;\ %s

" Additional configuration
"*************************
" ctags - not sure if this is even of use
if has('win32')
    set tags+=$HOME\ctags\scheme.tags
else
    set tags+=$HOME/.config/ctags/scheme.tags
endif

set lisp
" I don't think there are any working comments in pollen
"+only for the output file type (e.g. html)
set cms="; %s"


