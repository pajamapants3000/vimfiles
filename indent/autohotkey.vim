" Vim indent file
" Language:	Vim script
" Written By:	Tommy Lincoln <pajamapants3000@gmail.com>
" Last Change:	2016 Feb 07

" I (ahem) borrowed a few things from the indent/vim.vim file!

" AutoHotkey consists of many statements that indent a single line beneath it,
"+or are followed by a brace and indented until the closing brace.
" There are also continuations possible: any line starting with an
"+expression operator other than ++ or -- is a continuation of the previous
"+line and should be doubly indented; any unclosed parenthesis should start
"+an indented continuation block, until the closing parenthesis is encountered.
"+we'll treat this kind of continuation as just a block, though.
" Multi-line omments are C-like (/* */) and simple comments are marked ';'

" Also very worth noting is that AutoHotkey is an MS-Windows language, and
"+as-such is case-INsensitive!

setlocal indentexpr=GetAutoHotkeyIndent()
setlocal indentkeys+=0=~else,0)

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

" TODO: Likely the list of continuations and the b:block_open expression will
"+ be modified as I work with AutoHotkey more and find improvements.
" continuations - set list of continuating characters, the rest follows
let b:cont_exprs_list =
  \["+", "-", "!", "&", "\\~", "*", "/", ">", "<", ":", ",", "=", "\\^", "\\."]
" this takes the above list and produces a regex
let b:cont_exprs = '\('
for char in b:cont_exprs_list
  if strlen(b:cont_exprs) > 2
    let b:cont_exprs .= '\|'
  endif
  let b:cont_exprs .= char
endfor
let b:cont_exprs .= '\)'

" block openers - case INsensitive!
let b:block_oneline  = '\c^\s*\(if\(\|\%[not]\(exist\|active\|instring\)\|'
  \.'msgbox\|win\%[not]\(exist\|active\)\)\|catch\|else\|finally\|for\|loop\)'
let b:block_brace    = '\s*\((\|{\)'
let b:block_open     = strpart(b:block_oneline, 0, strlen(b:block_oneline) - 2)
      \ . '\|' . strpart(b:block_brace, 5)
let b:block_close    = '\s*\()\|}\)'

" Add all continuations to indentkeys; some chars require special handling
for char in b:cont_exprs_list
  if char == '~'        " causes problems in pattern match, even escaped!
    let key = char
  elseif match('[<>\*:!\]', char) >= 0
    let key = '<' . char . '>'
  elseif char == ','
    let key = '\' . char
  else
    let key = char
  endif
  execute 'setlocal indentkeys+=0' . key
endfor

" user can :exe this to restore default settings if they don't like ours
let b:undo_indent = "setl indentkeys< indentexpr<"

" This line is suitable for $VIMRUNTIME/indent; I'm keeping it because there
"+is not autohotkey.vim there; I may end up integrating this.
" Only define the function once.
if exists("*GetAutoHotkeyIndent")
  finish
endif

" make copy of compatibility settings for later restoration; set cpo for script
let s:keepcpo= &cpo
set cpo&vim

"****************************************************************************
" find_opener: searches backward from line with closing character to find
"+            +the character that opened the block being closed.
" params:
"   open  | opening character of pair (+)
"   close | closing character of pair (-)
" returns:
"   line number containing opening character
function s:find_opener(lnum, open, close)
  " Store imbalance in braces; start with -1 for closer from which we begin
  let imbalance = -1
  let lnum = a:lnum
  while lnum > 0 && imbalance < 0
    let lnum = prevnonblank(lnum - 1)
    let line_text = getline(lnum)           " get line text
    let i = 0                               " start counter of characters
    while i < strlen(line_text)             " iterate over characters on line
      let char = strpart(line_text, i, 1)   " store current character
      if char == a:open                     " compare character to a:open
        let imbalance += 1
      elseif char == a:close                " compare character to a:close
          let imbalance -= 1
        endif
      endif
      let i += 1                    " next character
    endwhile                        " finished iterating over all characters
  endwhile                          " finished iterating over all lines
  return lnum
endfunction
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

"****************************************************************************
" balance_pair: checks for balance of the first arg to second; meant mainly
"+             +for parentheses, brackets, and braces;
" params:
"   open  | opening character of pair (+)
"   close | closing character of pair (-)
" returns:
"   number of open characters - number of close characters
function s:balance_pair(open, close)
  " Store the imbalance in braces
  let imbalance = 0
  " Find a non-blank line above the current line.
  let lnum_cur = prevnonblank(v:lnum)
  " And from there count the braces and seek an imbalance
  let lnum = 1
  while lnum < lnum_cur                     " iterate lines back to the first
    let line_text = getline(lnum)           " get line text
    let i = 0                               " start counter of characters
    while i < strlen(line_text)             " iterate over characters on line
      let char = strpart(line_text, i, 1)   " store current character
      if char == a:open                     " compare character to a:open
        let imbalance += 1
      elseif char == a:close                " compare character to a:close
        if imbalance > 0                    " close must follow open!
          let imbalance -= 1
        endif
      endif
      let i += 1                    " next character
    endwhile                        " finished iterating over all characters
    let lnum += 1                   " proceed to next line back
  endwhile                          " finished iterating over all lines
  return imbalance
endfunction
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

"****************************************************************************
" GetAutoHotkeyIndent: taken from indent/vim.vim, modified for case-
"+                    +insensitivity. a wrapper to the function that does
"+                    +all of the work, GetAutoHotkeyIndentIntern; the purpose
"+                    +of this wrapper is to set the proper environment for
"+                    +the indent function; currently just case-insensitivity
function GetAutoHotkeyIndent()
  let ignorecase_save = &ignorecase
  try
    let &ignorecase = 1     " this is strictly MS-Windows!
    return GetAutoHotkeyIndentIntern()
  finally
    let &ignorecase = ignorecase_save
  endtry
endfunc
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

"****************************************************************************
" GetAutoHotkeyIndentIntern: does all of the work!
" returns:
"   indentation to apply to current line, in number of single spaces (\s)
function GetAutoHotkeyIndentIntern()
  " Find last non-blank line, before current line
  let lnum  = prevnonblank(v:lnum - 1)

  " If the current line is not a continuation, we want the indentation of the
  "+last line that wasn't a continuation line. Another way of looking at it:
  "+we want the start of the previous line, and a continuation is not the
  "+start.
  let cur_text = getline(v:lnum)
  if cur_text !~ '^\s*' . b:cont_exprs
    while lnum > 0 && getline(lnum) =~ '^\s*' . b:cont_exprs
      let lnum = lnum - 1
    endwhile
  endif

  " Repeat the process, looking for the start of the second most recent line
  let lnum2 = prevnonblank(lnum - 1)
  if cur_text !~ '^\s*' . b:cont_exprs
    while lnum2 > 0 && getline(lnum2) =~ '^\s*' . b:cont_exprs
      let lnum2 = lnum2 - 1
    endwhile
  endif

  " At the start of the file use zero indent.
  if lnum == 0
    return 0
  endif

  " collect neighboring non-blank lines text for comparison
  let prev_text = getline(lnum)
  let prev_text2 = getline(lnum2)

  let ind = indent(lnum)                " start with previous line indentation
  if cur_text =~ '^\s*' . b:cont_exprs && v:lnum > 1 &&
        \prev_text !~ '^\s*' . b:cont_exprs         " *check for continuation
" continuation found - apply indent
    if exists("g:vim_indent_cont")
      let ind = ind + g:vim_indent_cont
    else
      let ind = ind + &sw * 2
    endif
"
  else          "^no continuation to continuate ->
    let i = match(prev_text, b:block_oneline)
    if i >= 0                           " *check for block-opening statement
" looks like a block starting - make sure it's not a comment
      if synIDattr(synID(prev_text, i, 1), "name") != "autohotkeyComment"
" it's for real - apply indent
        let ind += &sw
" check for an opening brace following the block-opening statement
        let i = match(cur_text, b:block_brace)
        if i >= 0           " and if so, unindent it
          let ind -= &sw
        endif
      endif
    else        "^no one-liner-block-opener ->
      let i = match(prev_text, b:block_brace)   " match for block-opening brace
      let open_char = strpart(prev_text, i, 1)  " is it '(' or '{' ?
      if open_char == '{'
        let close_char = '}'
      elseif open_char == '('
        let close_char = ')'
      endif
      let j = match(strpart(prev_text, i + 1), close_char)
      if i >= 0 && j < 0    " check for block-open brace without closer
  " looks like a block starting - make sure it's not a comment
        if synIDattr(synID(prev_text, i, 1), "name") != "autohotkeyComment"
  " it's for real - apply indent
          let ind += &sw
  " check for a closing brace following the block-opening brace
          let i = match(cur_text, close_char)
          if i >= 0           " and if so, unindent it
            let ind -= &sw
          endif
        endif
      else        "^nor one-liner-block-opening statements ->
  " *check for (possibly nested) closing block: closing brace or one-liner
        let i = match(prev_text2, b:block_oneline)
        let j = match(prev_text, b:block_close)
        let k = match(prev_text, '\s*{')  " open brace means not a one-liner
        if (k < 0 && i >= 0) || j >= 0
          if j >= 0 " close full block; already unindented once on closing brace
            let close_char = strpart(prev_text, match(prev_text, '[)}]'), 1)
            if close_char == "}"
              let open_char = "{"
            elseif close_char == ")"
              let open_char = "("
            endif
            let lnumX = s:find_opener(lnum, open_char, close_char)
            let b:test0 = lnumX
            if match(getline(lnumX - 1), b:block_oneline) >= 0
              let lnumX -= 1  " treat statement as block opener if there is one
            endif             "+and avoid an extra unwanted unindent later
          elseif i >= 0   " just closing a one-liner
            let lnumX = lnum2
            let ind -= &sw  " unindent
          endif
  " it would be nice if we had a do-while here!
  " find next previous start-of-line (skipping continuations) - look for nesting
          let lnumX = prevnonblank(lnumX - 1)
          while lnumX > 0 && getline(lnumX) =~ '^\s*' . b:cont_exprs
            let lnumX = lnumX - 1
          endwhile
          let prev_textX = getline(lnumX)             " get line text
          let i = match(prev_textX, b:block_oneline)  " check for block-open
          let b:test1 = i
          while i >= 0      " unindent for each one-line-block nesting
            let ind -= &sw  " another level to unindent
  " find next previous start-of-line (skipping continuations)
            let lnumX = prevnonblank(lnumX - 1)
            while lnumX > 0 && getline(lnumX) =~ '^\s*' . b:cont_exprs
              let lnumX = lnumX - 1
            endwhile
            let b:test2 = lnumX
            let prev_textX = getline(lnumX)             " get line text
            let i = match(prev_textX, b:block_oneline)  " check for block-open
          endwhile    " finished unindenting (possibly nested) one-line blocks
        endif
        let i = match(cur_text, '^\s*}')
        let j = s:balance_pair('{', '}')
        let b:test = i
        let b:test2 = cur_text
        if i >= 0 && j > 0     " *check for closing brace
          let ind -= &sw
        else      "^nor a closing brace ->
          let i = match(cur_text, '^\s*)')
          if i >= 0 && s:balance_pair('(', ')') > 0   " *check for closing paren
            let ind -= &sw
          endif " checked closing paren
        endif " checked closing brace
      endif " checked opening brace/paren
    endif " checked block-opener
  endif " checked continuation
  return ind
endfunction
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

" restore compatibility settings in cpo
let &cpo = s:keepcpo
unlet s:keepcpo

" vim:sw=2 nowrap
