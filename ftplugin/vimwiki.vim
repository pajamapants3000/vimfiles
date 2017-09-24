" File vimwiki.vim
" vimwiki file-type plugin

" the wiki file will make more use of this than most; I'm using
" the vim-tasklist tokens to implement the tags of OneNote, at least
" somewhat
if !exists('g:tlTokenList')
    let g:tlTokenList = ['FIXME', 'TODO', 'XXX']
endif
let g:tlTokenList += [ 'QQQ' ]                  " unanswered question
let g:tlTokenList += [ 'REV' ]                  " review information
let g:tlTokenList += [ 'REVQ' ]                 " review question
let g:tlTokenList += [ 'REVA' ]                 " review answer
let g:tlTokenList += [ 'QnA' ]                  " answered question
let g:tlTokenList += [ 'NOTE' ]                 " important point
let g:tlTokenList += [ 'IDEA' ]                 " idea
let g:tlTokenList += [ 'OOH' ]                  " very interesting
let g:tlTokenList += [ 'TIP' ]                  " tip or suggestion
let g:tlTokenList += [ 'CHAL' ]                 " challenge
let g:tlTokenList += [ 'CARE' ]                 " warning/caution/be careful
let g:tlTokenList += [ 'LATR' ]                 " come back to this later
let g:tlTokenList += [ 'BTW' ]                  " an aside (by the way)
let g:tlTokenList += [ 'TIP' ]                  " a handy suggestion
let g:tlTokenList += [ 'WHOA' ]                 " a warning; caution
let g:tlTokenList += [ 'AHA' ]                  " clarifies/reveals
let g:tlTokenList += [ 'TEST' ]                 " need to test this
let g:tlTokenList += [ 'ME' ]                   " just my own commentary
let g:tlTokenList += [ 'EG' ]                   " example

" Add tasklist tokens to Todo highlighting
call TlTokenHi()

"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
" Vim settings
"**************
set textwidth=80
set formatoptions+=t
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set showcmd
set incsearch
set wrap
set spell
set foldenable
set foldmethod=marker
set foldlevel=99

"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
" Functions
"***********
" SetFileType: set filetype to alias under cursor
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
function! SetFileType(alias)
    if has_key(g:filetype_aliases, a:alias)
        :execute 'setf ' . g:filetype_aliases[a:alias]
    endif
endfunc
function! GetFileType(alias)
    if has_key(g:filetype_aliases, a:alias)
        return g:filetype_aliases[a:alias]
    endif
endfunc
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
" Mappings
"**********
" Insert line break, followed by actual carriage return
inoremap br<CR> <br /><CR>
"nnoremap <expr> <leader>fsft SetFileType(expand('<cword>'))
nmap <leader>ff <leader>fgft:<c-u>.s/^.*$//<CR>
nnoremap <leader>fgft :<c-u>exe<space>'setf<space>'.GetFileType(expand('<cword>'))<CR>
inoremap <leader>fgft <c-o>:exe<space>'setf<space>'.GetFileType(expand('<cword>'))<CR>
imap <leader>ff <leader>fgft<c-o>cc<ESC>
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

