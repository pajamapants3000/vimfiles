" File cpp.vim
" c++-specific vim configuration

" Start by sourcing all of the C stuff
let this_script_path = resolve(expand('<sfile>:p:h'))
exe 'source ' . this_script_path . '/c.vim'

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
    setlocal tags+=$HOME\ctags\cxx.tags
else
    setlocal tags+=$HOME/.config/ctags/cxx.tags
endif

setlocal commentstring=//\ %s

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
setlocal iskeyword=@,48-57,_,192-255

