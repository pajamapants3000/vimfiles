" File rust.vim
" rust-specific vim configuration

" Easy-compile single source file. Add interface/input later for linking and
"+other situation-specific settings and input
map <leader>p :!rustc %<CR>
map <leader>[ :!"%:p:r"<CR>
map <leader>] :!"%:p:r"
map <leader>R :cd $DRIVEPATH/Code/Rust<CR>
"
" Additional configuration
"*************************
if has('win32')
    set tags+=$USERPROFILE.'/ctags/rust.tags'
else
    set tags+=$HOME.'/.config/ctags/rust.tags'
endif

set cms=//\ %s

