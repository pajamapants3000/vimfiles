" File rust.vim
" rust-specific vim configuration

" Easy-compile single source file. Add interface/input later for linking and
"+other situation-specific settings and input
map <leader>p :!rustc %<CR>
map <leader>[ :!"%:p:r"<CR>
map <leader>] :!"%:p:r"
map <leader>R :cd $RUSTPATH<CR>
"
" Additional configuration
"*************************
if has('win32')
    set tags+=$USERPROFILE.'/ctags/rust.tags'
else
    set tags+=$HOME.'/.config/ctags/rust.tags'
endif

set cms=//\ %s
set iskeyword="a-z,A-Z,0-9,-,_"
