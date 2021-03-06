" File python.vim
" python-specific vim configuration
"***********************************

"**************
" Vim Settings
"^^^^^^^^^^^^^^
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal foldmethod=indent
setlocal foldlevel=99
setlocal showcmd
setlocal incsearch
setlocal nowrap
setlocal nospell
setlocal foldenable

setlocal commentstring='''\ %s\ '''


" Functions
"**********
" Python double-underscore names
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
fu! UScoreOn()
    inoremap ; <Right><Right><c-o>:call UScoreOff()<CR>
    inoremap <Enter> <Right><Right>(self<c-o>:call UScoreOff()<CR>
endfunction
fu! UScoreOff()
    unmap! ;
    unmap! <Enter>
endfunction
" Run python interpreter in ConqueTerm
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
"  Seriously needs work! Everything works until Conque gets in the way
"+ and messes it up. Autocomplete runs ConqueTerm's ord-mapping... try it
"+ and recall that the error message is coming from conqueterm.vim
function! Pycon()
    set ft=python
    if has('win32')
        :ConqueTerm C:\Python34\python.exe
    else
        :ConqueTerm python3
endfunction

" Mappings
"**********
" Python double-underscore names
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
au FileType python inoremap -- ____<Left><Left><c-o>:call UScoreOn()<CR>

if has('win32')
    " Run current script with default python
    map <leader>p :!python %:p<CR>
    " Directory shortcuts
    map <leader>dP :cd $SYNCPATH\Copy\Code\Python<CR>
    map <leader>dL :cd $SYNCPATH\Copy\Code\Python\Lutz_PP<CR>
    map <leader>dH :cd $SYNCPATH\Copy\Code\Python\HOTSHOT_tkinter<CR>
else
    " Run current script with python3
    map <leader>p :!python3 %:p<CR>
    " Directory shortcuts
    map <leader>dP :cd ~/Copy/Code/Python<CR>
    map <leader>dL :cd ~/Copy/Code/Python/Lutz_PP<CR>
    map <leader>dH :cd ~/Copy/Code/Python/HOTSHOT_tkinter<CR>
endif
"
" Additional configuration
"*************************
if has('win32')
    setlocal tags+=$HOME\ctags\py3.tags
else
    setlocal tags+=$HOME/.config/ctags/py3.tags
endif

