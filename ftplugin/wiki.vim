" File wiki.vim
" wiki file-type plugin

" the wiki file will make more use of this than most; I'm using
" the vim-tasklist tokens to implement the tags of OneNote, at least
" somewhat
let g:tlTokenList = ['FIXME', 'TODO', 'XXX']
let g:tlTokenList += [ '???' ]                  " unanswered question
let g:tlTokenList += [ 'QnA' ]                  " answered question
let g:tlTokenList += [ '_*_' ]                  " important point
let g:tlTokenList += [ '_@_' ]                  " idea
let g:tlTokenList += [ '_!_' ]                  " very interesting
let g:tlTokenList += [ '_#_' ]                  " challenge
let g:tlTokenList += [ '_-_' ]                  " come back to this later

