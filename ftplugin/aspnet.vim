" File aspnet.vim
" html-specific vim configuration

" TODO: Source html

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
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set foldmethod=syntax
set foldlevel=99
set showcmd
set incsearch
set nowrap
set nospell

set commentstring=<%--\ %s\ -->

"******
" Tags
"^^^^^^
if has('win32')
    set tags+=$HOME\ctags\html.tags
else
    set tags+=$HOME/.config/ctags/html.tags
endif


