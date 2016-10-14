" File cpp.vim
" c++-specific vim configuration

" Start by sourcing all of the C stuff
source './c.vim'

nunmap <leader>p
if has('win32')
    nnoremap <leader>CC :cd $AA_DRIVPATH\Copy\Code\C++<CR>
    nnoremap <leader>L :cd $AA_DRIVPATH\Copy\Code\C++\Accelerated_C++<CR>
    nnoremap <leader>p :!gcc -Wall -std=gnu99 -o %:r.exe %<CR>
else
    nnoremap <leader>CC :cd ~/Copy/Code/C++<CR>
    nnoremap <leader>L :cd ~/Copy/Code/C++/Accelerated_C++<CR>
    nnoremap <leader>p :!g++ -Wall -std=gnu++11 -o %:r %<CR>
endif
"
" Additional configuration
"*************************
if has('win32')
    set tags+=$HOME\ctags\cxx.tags
else
    set tags+=$HOME/.config/ctags/cxx.tags
endif

set cms=//\ %s

