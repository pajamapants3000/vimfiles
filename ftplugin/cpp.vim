" File cpp.vim
" c++-specific vim configuration

" Easy-compile single source file. Add interface/input later for linking and
"+other situation-specific settings and input
map <leader>o :!make -f %:h/Makefile
map <leader>[ :!%:p:r<CR>
map <leader>] :!%:p:r
if has('win32')
    map <leader>C :cd $SYNCPATH\Copy\Code\C++<CR>
    map <leader>L :cd $SYNCPATH\Copy\Code\C++\Accelerated_C++<CR>
    map <leader>p :!g++ -Wall -std=gnu++11 -o %:r.exe %<CR>
else
    map <leader>C :cd ~/Copy/Code/C++<CR>
    map <leader>L :cd ~/Copy/Code/C++/Accelerated_C++<CR>
    map <leader>p :!g++ -Wall -std=gnu++11 -o %:r %<CR>
endif
"
" Additional configuration
"*************************
if has('win32')
    set tags+=$HOME\ctags\cxx.tags
else
    set tags+=$HOME/.config/ctags/cxx.tags
endif

