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
" Special characters
inoremap <Space><Space> <Space>&nbsp;
inoremap <Tab><Tab> <Space>&nbsp;&nbsp;&nbsp;
inoremap '' &#39;
inoremap "" &quot;
inoremap && &amp;
inoremap >> &gt;
inoremap << &lt;

"**************
" Vim Settings
"^^^^^^^^^^^^^^
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal foldmethod=syntax
setlocal foldlevel=99
setlocal showcmd
setlocal incsearch
setlocal nowrap
setlocal nospell

setlocal commentstring=<!--\ %s\ -->

"******
" Tags
"^^^^^^
if has('win32')
    setlocal tags+=$HOME\ctags\html.tags
else
    setlocal tags+=$HOME/.config/ctags/html.tags
endif

