" File c.vim
" c-specific vim configuration

" Easy-compile single source file. Add interface/input later for linking and
"+other situation-specific settings and input
map <leader>o :!make -f %:h/Makefile
map <leader>[ :!%:p:r<CR>
map <leader>] :!%:p:r
if has('win32')
    map <leader>C :cd $SYNCPATH\Copy\Code\C<CR>
    map <leader>K :cd $SYNCPATH\Copy\Code\C\King<CR>
    map <leader>p :!gcc -Wall -std=gnu99 -o %:r.exe %<CR>
else
    map <leader>C :cd $SYNCPATH/Copy/Code/C<CR>
    map <leader>K :cd $SYNCPATH/Copy/Code/C/King<CR>
    map <leader>p :!gcc -Wall -std=gnu99 -o %:r %<CR>
endif
"
" Additional configuration
"*************************
if has('win32')
    set tags+=$HOME\ctags\c.tags
else
    set tags+=$HOME/.config/ctags/c.tags
endif

" path additions
set path+=$CXXPATH/include
set path+=$CPATH/include
if has('win32')
  set path+=$LOCAL/include
else
  set path+=/usr/include
  set path+=/usr/local/include
endif

set cms=//\ %s

