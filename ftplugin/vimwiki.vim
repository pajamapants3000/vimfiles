" File wiki.vim
" wiki file-type plugin

" the wiki file will make more use of this than most; I'm using
" the vim-tasklist tokens to implement the tags of OneNote, at least
" somewhat
let g:tlTokenList = ['FIXME', 'TODO', 'XXX']
let g:tlTokenList += [ '???' ]                  " unanswered question
let g:tlTokenList += [ 'QnA' ]                  " answered question
let g:tlTokenList += [ 'NOTE' ]                 " important point
let g:tlTokenList += [ 'IDEA' ]                 " idea
let g:tlTokenList += [ 'OOH' ]                  " very interesting
let g:tlTokenList += [ 'CHAL' ]                 " challenge
let g:tlTokenList += [ 'LATR' ]                 " come back to this later
let g:tlTokenList += [ 'BTW' ]                  " an aside (by the way)

" Mappings
" Insert line break, followed by actual carriage return
inoremap br<CR> <br /><CR>

