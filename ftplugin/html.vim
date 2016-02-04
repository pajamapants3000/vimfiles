" File html.vim
" html-specific vim configuration

" Set appropriate web browser
if has('win32')
    let g:webBrowser = 'iexplore.exe'
else
    let g:webBrowser = 'qupzilla'
endif
" A platform-independent option, but not always installed.
"let g:webBrowser = 'firefox'

"**********
" Mappings
"^^^^^^^^^^
" Open file in web browser
map <leader>p :exe '!'.g:webBrowser.' file://%:p'<CR>
inoremap <Space><Enter> <Enter><br /><Enter>

"***********************
" Formatting and syntax
"^^^^^^^^^^^^^^^^^^^^^^^
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set foldmethod=syntax

"******
" Tags
"^^^^^^
if has('win32')
    set tags+=$HOME\ctags\html.tags
else
    set tags+=$HOME/.config/ctags/html.tags
endif

