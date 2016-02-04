" Vim indent file
" Language:	Lua script
" Maintainer: Tommy Lincoln <pajamapants3000 'at' gm.cm>
" Maintainer Of Original:	Marcus Aurelius Farias <marcus.cf 'at' bol.com.br>
" First Author:	Max Ischenko <mfi 'at' ukr.net>
" Last Change:	2016 Jan 30

setlocal indentexpr=TommysGetLuaIndent()

" Built-in indent script adds "end" and "until" but presumes incorrectly that
"+else is included by default.
setlocal indentkeys+=0=else,<CR>

setlocal autoindent

function! TommysGetLuaIndent()
  " Find a non-blank line above the current line.
  let prevlnum = prevnonblank(v:lnum - 1)

  " Hit the start of the file, use zero indent.
  if prevlnum == 0
    return 0
  endif

  " Add a 'shiftwidth' after lines that start a block:
  " 'function', 'if.*then', 'while.*do', 'for.*do', 'repeat', 'else', 'elseif.*then', do, then, '{'
  let ind = indent(prevlnum)
  let prevline = getline(prevlnum)
  let midx = match(prevline, '^\s*\%(if.*then\>\|while.*do\>\|for.*do\>\|repeat\>\|else\>\|elseif.*then\>\|do\>\|then\>\)')
  if midx == -1
    let midx = match(prevline, '{\s*$')
    if midx == -1
      let midx = match(prevline, '\<function\>\s*\%(\k\|[.:]\)\{-}\s*(')
    endif
  endif

  if midx != -1
    " Add 'shiftwidth' if what we found previously is not in a comment and
    " an "end" or "until" is not present on the same line.
    if synIDattr(synID(prevlnum, midx + 1, 1), "name") != "luaComment" && prevline !~ '\<end\>\|\<until\>'
      let ind = ind + &shiftwidth
    endif
  endif

  " Subtract a 'shiftwidth' on end, else (and elseif), until and '}'
  " This is the part that requires 'indentkeys'.
  " TODO: Undo the indentation if the word is no longer present (can this be done?)
  let midx = match(getline(v:lnum), '^\s*\%(end\>\|else\>\|until\>\|}\)')
  if midx != -1 && synIDattr(synID(v:lnum, midx + 1, 1), "name") != "luaComment"
    let dedented = 1
    let ind = ind - &shiftwidth
  endif

  return ind
endfunction

