" Runs CSApprox version in console

if has("gui_running")

    " local syntax file - set colors on a per-machine basis:
    " vim: tw=0 ts=4 sw=4
    " Vim color file
    " Maintainer:	Steven Vertigan <steven@vertigan.wattle.id.au>
    " Last Change:	2006 Sep 23
    " Revision #5: Switch main text from white to yellow for easier contrast,
    " fixed some problems with terminal backgrounds.

    set background=dark
    hi clear
    if exists("syntax_on")
      syntax reset
    endif
    let g:colors_name = "blue"
    hi Normal		guifg=yellow	guibg=darkBlue	ctermfg=yellow	ctermbg=darkBlue
    hi NonText		guifg=magenta	ctermfg=lightMagenta
    hi comment		guifg=gray		ctermfg=gray	ctermbg=darkBlue	gui=bold 
    hi constant		guifg=cyan		ctermfg=cyan
    hi identifier	guifg=gray		ctermfg=red
    hi statement	guifg=white		ctermfg=white	ctermbg=darkBlue	gui=none
    hi preproc		guifg=green		ctermfg=green
    hi type			guifg=orange	ctermfg=lightRed	ctermbg=darkBlue
    hi special		guifg=magenta	ctermfg=lightMagenta	ctermbg=darkBlue
    hi Underlined	guifg=cyan		ctermfg=cyan	gui=underline	cterm=underline
    hi label		guifg=yellow	ctermfg=yellow
    hi operator		guifg=orange	gui=bold	ctermfg=lightRed	ctermbg=darkBlue

    hi ErrorMsg		guifg=orange	guibg=darkBlue	ctermfg=lightRed
    hi WarningMsg	guifg=cyan		guibg=darkBlue	ctermfg=cyan	gui=bold
    hi ModeMsg		guifg=yellow	gui=NONE	ctermfg=yellow
    hi MoreMsg		guifg=yellow	gui=NONE	ctermfg=yellow
    hi Error		guifg=red		guibg=darkBlue	gui=underline	ctermfg=red

    hi Todo			guifg=black		guibg=orange	ctermfg=black	ctermbg=darkYellow
    hi Cursor		guifg=black		guibg=white		ctermfg=black	ctermbg=white
    hi Search		guifg=black		guibg=orange	ctermfg=black	ctermbg=darkYellow
    hi IncSearch	guifg=black		guibg=yellow	ctermfg=black	ctermbg=darkYellow
    hi LineNr		guifg=cyan		ctermfg=cyan
    hi title		guifg=white	gui=bold	cterm=bold

    hi StatusLineNC	gui=NONE	guifg=black guibg=blue	ctermfg=black  ctermbg=blue
    hi StatusLine	gui=bold	guifg=cyan	guibg=blue	ctermfg=cyan   ctermbg=blue
    hi VertSplit	gui=none	guifg=blue	guibg=blue	ctermfg=blue	ctermbg=blue

    hi Visual		term=reverse		ctermfg=black	ctermbg=darkCyan	guifg=black		guibg=darkCyan

    hi DiffChange	guibg=darkGreen		guifg=black	ctermbg=darkGreen	ctermfg=black
    hi DiffText		guibg=olivedrab		guifg=black		ctermbg=lightGreen	ctermfg=black
    hi DiffAdd		guibg=slateblue		guifg=black		ctermbg=blue		ctermfg=black
    hi DiffDelete   guibg=coral			guifg=black	ctermbg=cyan		ctermfg=black

    hi Folded		guibg=orange		guifg=black		ctermbg=yellow		ctermfg=black
    hi FoldColumn	guibg=gray30		guifg=black	ctermbg=gray		ctermfg=black
    hi cIf0			guifg=gray			ctermfg=gray

else

    " This scheme was created by CSApproxSnapshot
    " on Sun, 12 Oct 2014

    hi clear
    if exists("syntax_on")
	syntax reset
    endif

    if v:version < 700
	let g:colors_name = expand("<sfile>:t:r")
	command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
    else
	let g:colors_name = expand("<sfile>:t:r")
	command! -nargs=+ CSAHi exe "hi" <q-args>
    endif

    function! s:old_kde()
      " Konsole only used its own palette up til KDE 4.2.0
      if executable('kde4-config') && system('kde4-config --kde-version') =~ '^4.[10].'
	return 1
      elseif executable('kde-config') && system('kde-config --version') =~# 'KDE: 3.'
	return 1
      else
	return 0
      endif
    endfunction

    if 0
    elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_konsole") && g:CSApprox_konsole) || (&term =~? "^konsole" && s:old_kde())
	CSAHi Normal term=NONE cterm=NONE ctermbg=19 ctermfg=226 gui=NONE guibg=#00008b guifg=#ffff00
	CSAHi rubyMethodDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyClassDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyModuleDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_to_airline_x_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_a_to_airline_b_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_b_to_airline_c_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x term=NONE cterm=NONE ctermbg=234 ctermfg=158 gui=NONE guibg=#202020 guifg=#9cffd3
	CSAHi airline_x_bold term=bold cterm=bold ctermbg=234 ctermfg=158 gui=bold guibg=#202020 guifg=#9cffd3
	CSAHi airline_x_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_y term=NONE cterm=NONE ctermbg=238 ctermfg=231 gui=NONE guibg=#444444 guifg=#ffffff
	CSAHi airline_y_bold term=bold cterm=bold ctermbg=238 ctermfg=231 gui=bold guibg=#444444 guifg=#ffffff
	CSAHi airline_y_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_y_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=239 gui=bold guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchCchar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchGroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
	CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=201 gui=bold guibg=bg guifg=#ff00ff
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
	CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=19 ctermfg=214 gui=NONE guibg=#00008b guifg=#ffa500
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=16 ctermfg=226 gui=reverse guibg=#ffff00 guifg=#000000
	CSAHi Search term=reverse cterm=NONE ctermbg=214 ctermfg=16 gui=NONE guibg=#ffa500 guifg=#000000
	CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
	CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
	CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
	CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
	CSAHi Pmenu term=NONE cterm=NONE ctermbg=201 ctermfg=fg gui=NONE guibg=#ff00ff guifg=fg
	CSAHi PmenuSel term=NONE cterm=NONE ctermbg=248 ctermfg=fg gui=NONE guibg=#a9a9a9 guifg=fg
	CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=231 ctermfg=fg gui=NONE guibg=#ffffff guifg=fg
	CSAHi TabLine term=underline cterm=underline ctermbg=248 ctermfg=fg gui=underline guibg=#a9a9a9 guifg=fg
	CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi CursorColumn term=reverse cterm=NONE ctermbg=102 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
	CSAHi vimIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMethodBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDoBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z term=NONE cterm=NONE ctermbg=190 ctermfg=18 gui=NONE guibg=#dfff00 guifg=#00005f
	CSAHi airline_z_bold term=bold cterm=bold ctermbg=190 ctermfg=18 gui=bold guibg=#dfff00 guifg=#00005f
	CSAHi airline_z_red term=NONE cterm=NONE ctermbg=190 ctermfg=196 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_a term=NONE cterm=NONE ctermbg=190 ctermfg=18 gui=NONE guibg=#dfff00 guifg=#00005f
	CSAHi airline_a_bold term=bold cterm=bold ctermbg=190 ctermfg=18 gui=bold guibg=#dfff00 guifg=#00005f
	CSAHi airline_a_red term=NONE cterm=NONE ctermbg=190 ctermfg=196 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_b term=NONE cterm=NONE ctermbg=238 ctermfg=231 gui=NONE guibg=#444444 guifg=#ffffff
	CSAHi airline_b_bold term=bold cterm=bold ctermbg=238 ctermfg=231 gui=bold guibg=#444444 guifg=#ffffff
	CSAHi airline_b_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_c term=NONE cterm=NONE ctermbg=234 ctermfg=158 gui=NONE guibg=#202020 guifg=#9cffd3
	CSAHi vimSynRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynPatMod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncLines term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncMatch term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncLinebreak term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi CursorLine term=underline cterm=NONE ctermbg=102 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
	CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
	CSAHi Cursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
	CSAHi lCursor term=NONE cterm=NONE ctermbg=226 ctermfg=19 gui=NONE guibg=#ffff00 guifg=#00008b
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=underline ctermbg=19 ctermfg=196 gui=underline guibg=#00008b guifg=#ff0000
	CSAHi Comment term=bold cterm=bold ctermbg=bg ctermfg=244 gui=bold guibg=bg guifg=#808080
	CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
	CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=201 gui=NONE guibg=bg guifg=#ff00ff
	CSAHi rubyCurlyBlockDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyCurlyBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyArrayDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyArrayLiteral term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlockExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyCaseExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyConditionalExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyOptionalDoLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_bold term=bold cterm=bold ctermbg=234 ctermfg=158 gui=bold guibg=#202020 guifg=#9cffd3
	CSAHi airline_c_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_warning term=NONE cterm=NONE ctermbg=172 ctermfg=16 gui=NONE guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_bold term=bold cterm=bold ctermbg=172 ctermfg=16 gui=bold guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_red term=NONE cterm=NONE ctermbg=172 ctermfg=196 gui=NONE guibg=#df5f00 guifg=#ff0000
	CSAHi airline_c1_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_y_to_airline_z_bold term=bold cterm=bold ctermbg=238 ctermfg=190 gui=bold guibg=#444444 guifg=#dfff00
	CSAHi airline_y_to_airline_z_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_c_to_airline_x_bold term=bold cterm=bold ctermbg=234 ctermfg=234 gui=bold guibg=#202020 guifg=#202020
	CSAHi airline_c_to_airline_x_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi vimSyncLinecont term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiKeyList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimExecute term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#808080
	CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#ffffff
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=214 gui=bold guibg=bg guifg=#ffa500
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=51 gui=underline guibg=bg guifg=#00ffff
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=214 ctermfg=16 gui=NONE guibg=#ffa500 guifg=#000000
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi VertSplit term=reverse cterm=NONE ctermbg=21 ctermfg=21 gui=NONE guibg=#0000ff guifg=#0000ff
	CSAHi airline_a_to_airline_b_bold term=bold cterm=bold ctermbg=238 ctermfg=190 gui=bold guibg=#444444 guifg=#dfff00
	CSAHi airline_a_to_airline_b_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_x_to_airline_y_bold term=bold cterm=bold ctermbg=234 ctermfg=238 gui=bold guibg=#202020 guifg=#444444
	CSAHi airline_x_to_airline_y_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_b_to_airline_c_bold term=bold cterm=bold ctermbg=234 ctermfg=238 gui=bold guibg=#202020 guifg=#444444
	CSAHi airline_b_to_airline_c_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_z_to_airline_warning_bold term=bold cterm=bold ctermbg=190 ctermfg=172 gui=bold guibg=#dfff00 guifg=#df5f00
	CSAHi airline_z_to_airline_warning_red term=NONE cterm=NONE ctermbg=190 ctermfg=196 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_a_to_airline_b_inactive_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_a_to_airline_b_inactive_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=234 gui=bold guibg=#262626 guifg=#1c1c1c
	CSAHi vimHiBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiCtermColor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiGuiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRange term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
	CSAHi Operator term=NONE cterm=bold ctermbg=bg ctermfg=214 gui=bold guibg=bg guifg=#ffa500
	CSAHi rubyKeywordAsMethod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimRubyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b_inactive_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_b_to_airline_c_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_b_to_airline_c_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=235 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_b_to_airline_c_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_y_to_airline_z_inactive_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=234 gui=bold guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_c_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_c_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=236 gui=bold guibg=#303030 guifg=#303030
	CSAHi airline_c_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_b_to_airline_c term=NONE cterm=NONE ctermbg=234 ctermfg=238 gui=NONE guibg=#202020 guifg=#444444
	CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=244 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
	CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_to_airline_warning_inactive_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=172 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=172 gui=bold guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=235 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c1_to_airline_x term=NONE cterm=NONE ctermbg=19 ctermfg=234 gui=NONE guibg=#00008b guifg=#202020
	CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=19 gui=NONE guibg=bg guifg=#00008b
	CSAHi MatchParen term=reverse cterm=NONE ctermbg=37 ctermfg=fg gui=NONE guibg=#008b8b guifg=fg
	CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b term=NONE cterm=NONE ctermbg=238 ctermfg=190 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_to_airline_x term=NONE cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#202020
	CSAHi airline_x_to_airline_y term=NONE cterm=NONE ctermbg=234 ctermfg=238 gui=NONE guibg=#202020 guifg=#444444
	CSAHi airline_y_to_airline_z term=NONE cterm=NONE ctermbg=238 ctermfg=190 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi airline_z_to_airline_warning term=NONE cterm=NONE ctermbg=190 ctermfg=172 gui=NONE guibg=#dfff00 guifg=#df5f00
	CSAHi airline_x_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=239 gui=NONE guibg=#303030 guifg=#4e4e4e
	CSAHi airline_x_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=239 gui=bold guibg=#303030 guifg=#4e4e4e
	CSAHi airline_x_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimPythonRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x term=NONE cterm=NONE ctermbg=19 ctermfg=234 gui=NONE guibg=#00008b guifg=#202020
	CSAHi vimStdPlugin term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c3_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyInterpolation term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi NONE term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDelimEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=34 gui=NONE guibg=bg guifg=#008000
	CSAHi airline_y_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=239 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi airline_y_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=239 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=239 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_a_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=239 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi airline_a_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=239 gui=bold guibg=#1c1c1c guifg=#4e4e4e
	CSAHi airline_a_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_b_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=239 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi vimSetEqual term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimAugroupSyncA term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimGlobal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimExtCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFilter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedParentheses term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedCurlyBraces term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedAngleBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedSquareBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyRegexpParens term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapRhsExtend term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuPriority term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_inactive term=NONE cterm=NONE ctermbg=19 ctermfg=236 gui=NONE guibg=#00008b guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive term=NONE cterm=NONE ctermbg=19 ctermfg=236 gui=NONE guibg=#00008b guifg=#303030
	CSAHi vimMenuMap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyRegexpBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSet term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimUserCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimCmdSep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapLhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimNormCmds term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimGroupList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyLocalVariableOrMethod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlockArgument term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=236 gui=bold guibg=#303030 guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c2_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=236 gui=bold guibg=#303030 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#808080
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=224 ctermfg=234 gui=bold guibg=#ffdab9 guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=224 ctermfg=196 gui=NONE guibg=#ffdab9 guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=224 ctermfg=234 gui=bold guibg=#ffdab9 guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00
	CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=34 gui=bold guibg=bg guifg=#008000
	CSAHi StatusLine term=bold,reverse cterm=bold ctermbg=21 ctermfg=51 gui=bold guibg=#0000ff guifg=#00ffff
	CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=21 ctermfg=16 gui=NONE guibg=#0000ff guifg=#000000
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=231 gui=bold guibg=bg guifg=#ffffff
	CSAHi Visual term=reverse cterm=NONE ctermbg=37 ctermfg=16 gui=NONE guibg=#008b8b guifg=#000000
	CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
	CSAHi WarningMsg term=NONE cterm=bold ctermbg=19 ctermfg=51 gui=bold guibg=#00008b guifg=#00ffff
	CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi rubyBlockParameterList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyHeredocStart term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimOperParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_b_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=239 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi airline_b_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_c_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=239 gui=NONE guibg=#303030 guifg=#4e4e4e
	CSAHi airline_c_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=239 gui=bold guibg=#303030 guifg=#4e4e4e
	CSAHi airline_c_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_warning_inactive term=NONE cterm=NONE ctermbg=172 ctermfg=16 gui=NONE guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_inactive_bold term=bold cterm=bold ctermbg=172 ctermfg=16 gui=bold guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_inactive_red term=NONE cterm=NONE ctermbg=172 ctermfg=196 gui=NONE guibg=#df5f00 guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_z_to_airline_warning_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=172 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi vimAuSyntax term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimClusterName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_red term=NONE cterm=NONE ctermbg=224 ctermfg=196 gui=NONE guibg=#ffdab9 guifg=#ff0000
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=NONE cterm=NONE ctermbg=214 ctermfg=16 gui=NONE guibg=#ffa500 guifg=#000000
	CSAHi FoldColumn term=NONE cterm=NONE ctermbg=239 ctermfg=16 gui=NONE guibg=#4d4d4d guifg=#000000
	CSAHi DiffAdd term=bold cterm=NONE ctermbg=104 ctermfg=16 gui=NONE guibg=#6a5acd guifg=#000000
	CSAHi DiffChange term=bold cterm=NONE ctermbg=28 ctermfg=16 gui=NONE guibg=#006400 guifg=#000000
	CSAHi DiffDelete term=bold cterm=bold ctermbg=210 ctermfg=16 gui=bold guibg=#ff7f50 guifg=#000000
	CSAHi DiffText term=reverse cterm=bold ctermbg=107 ctermfg=16 gui=bold guibg=#6b8e23 guifg=#000000
	CSAHi SignColumn term=NONE cterm=NONE ctermbg=244 ctermfg=51 gui=NONE guibg=#808080 guifg=#00ffff
	CSAHi Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
	CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
	CSAHi rubyAliasDeclaration2 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyAliasDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
	CSAHi Normal term=NONE cterm=NONE ctermbg=19 ctermfg=226 gui=NONE guibg=#00008b guifg=#ffff00
	CSAHi rubyMethodDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyClassDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyModuleDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_to_airline_x_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_a_to_airline_b_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_b_to_airline_c_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x term=NONE cterm=NONE ctermbg=234 ctermfg=195 gui=NONE guibg=#202020 guifg=#9cffd3
	CSAHi airline_x_bold term=bold cterm=bold ctermbg=234 ctermfg=195 gui=bold guibg=#202020 guifg=#9cffd3
	CSAHi airline_x_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_y term=NONE cterm=NONE ctermbg=238 ctermfg=255 gui=NONE guibg=#444444 guifg=#ffffff
	CSAHi airline_y_bold term=bold cterm=bold ctermbg=238 ctermfg=255 gui=bold guibg=#444444 guifg=#ffffff
	CSAHi airline_y_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_y_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=239 gui=bold guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchCchar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchGroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
	CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=201 gui=bold guibg=bg guifg=#ff00ff
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
	CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=19 ctermfg=220 gui=NONE guibg=#00008b guifg=#ffa500
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=16 ctermfg=226 gui=reverse guibg=#ffff00 guifg=#000000
	CSAHi Search term=reverse cterm=NONE ctermbg=220 ctermfg=16 gui=NONE guibg=#ffa500 guifg=#000000
	CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
	CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
	CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
	CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
	CSAHi Pmenu term=NONE cterm=NONE ctermbg=201 ctermfg=fg gui=NONE guibg=#ff00ff guifg=fg
	CSAHi PmenuSel term=NONE cterm=NONE ctermbg=248 ctermfg=fg gui=NONE guibg=#a9a9a9 guifg=fg
	CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=255 ctermfg=fg gui=NONE guibg=#ffffff guifg=fg
	CSAHi TabLine term=underline cterm=underline ctermbg=248 ctermfg=fg gui=underline guibg=#a9a9a9 guifg=fg
	CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi CursorColumn term=reverse cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
	CSAHi vimIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMethodBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDoBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z term=NONE cterm=NONE ctermbg=226 ctermfg=18 gui=NONE guibg=#dfff00 guifg=#00005f
	CSAHi airline_z_bold term=bold cterm=bold ctermbg=226 ctermfg=18 gui=bold guibg=#dfff00 guifg=#00005f
	CSAHi airline_z_red term=NONE cterm=NONE ctermbg=226 ctermfg=196 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_a term=NONE cterm=NONE ctermbg=226 ctermfg=18 gui=NONE guibg=#dfff00 guifg=#00005f
	CSAHi airline_a_bold term=bold cterm=bold ctermbg=226 ctermfg=18 gui=bold guibg=#dfff00 guifg=#00005f
	CSAHi airline_a_red term=NONE cterm=NONE ctermbg=226 ctermfg=196 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_b term=NONE cterm=NONE ctermbg=238 ctermfg=255 gui=NONE guibg=#444444 guifg=#ffffff
	CSAHi airline_b_bold term=bold cterm=bold ctermbg=238 ctermfg=255 gui=bold guibg=#444444 guifg=#ffffff
	CSAHi airline_b_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_c term=NONE cterm=NONE ctermbg=234 ctermfg=195 gui=NONE guibg=#202020 guifg=#9cffd3
	CSAHi vimSynRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynPatMod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncLines term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncMatch term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncLinebreak term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi CursorLine term=underline cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
	CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
	CSAHi Cursor term=NONE cterm=NONE ctermbg=255 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
	CSAHi lCursor term=NONE cterm=NONE ctermbg=226 ctermfg=19 gui=NONE guibg=#ffff00 guifg=#00008b
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=underline ctermbg=19 ctermfg=196 gui=underline guibg=#00008b guifg=#ff0000
	CSAHi Comment term=bold cterm=bold ctermbg=bg ctermfg=244 gui=bold guibg=bg guifg=#808080
	CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
	CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=201 gui=NONE guibg=bg guifg=#ff00ff
	CSAHi rubyCurlyBlockDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyCurlyBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyArrayDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyArrayLiteral term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlockExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyCaseExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyConditionalExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyOptionalDoLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_bold term=bold cterm=bold ctermbg=234 ctermfg=195 gui=bold guibg=#202020 guifg=#9cffd3
	CSAHi airline_c_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_warning term=NONE cterm=NONE ctermbg=208 ctermfg=16 gui=NONE guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_bold term=bold cterm=bold ctermbg=208 ctermfg=16 gui=bold guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_red term=NONE cterm=NONE ctermbg=208 ctermfg=196 gui=NONE guibg=#df5f00 guifg=#ff0000
	CSAHi airline_c1_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_y_to_airline_z_bold term=bold cterm=bold ctermbg=238 ctermfg=226 gui=bold guibg=#444444 guifg=#dfff00
	CSAHi airline_y_to_airline_z_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_c_to_airline_x_bold term=bold cterm=bold ctermbg=234 ctermfg=234 gui=bold guibg=#202020 guifg=#202020
	CSAHi airline_c_to_airline_x_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi vimSyncLinecont term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiKeyList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimExecute term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#808080
	CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=255 gui=NONE guibg=bg guifg=#ffffff
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=220 gui=bold guibg=bg guifg=#ffa500
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=51 gui=underline guibg=bg guifg=#00ffff
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=220 ctermfg=16 gui=NONE guibg=#ffa500 guifg=#000000
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi VertSplit term=reverse cterm=NONE ctermbg=21 ctermfg=21 gui=NONE guibg=#0000ff guifg=#0000ff
	CSAHi airline_a_to_airline_b_bold term=bold cterm=bold ctermbg=238 ctermfg=226 gui=bold guibg=#444444 guifg=#dfff00
	CSAHi airline_a_to_airline_b_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_x_to_airline_y_bold term=bold cterm=bold ctermbg=234 ctermfg=238 gui=bold guibg=#202020 guifg=#444444
	CSAHi airline_x_to_airline_y_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_b_to_airline_c_bold term=bold cterm=bold ctermbg=234 ctermfg=238 gui=bold guibg=#202020 guifg=#444444
	CSAHi airline_b_to_airline_c_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_z_to_airline_warning_bold term=bold cterm=bold ctermbg=226 ctermfg=208 gui=bold guibg=#dfff00 guifg=#df5f00
	CSAHi airline_z_to_airline_warning_red term=NONE cterm=NONE ctermbg=226 ctermfg=196 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_a_to_airline_b_inactive_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_a_to_airline_b_inactive_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=234 gui=bold guibg=#262626 guifg=#1c1c1c
	CSAHi vimHiBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiCtermColor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiGuiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRange term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
	CSAHi Operator term=NONE cterm=bold ctermbg=bg ctermfg=220 gui=bold guibg=bg guifg=#ffa500
	CSAHi rubyKeywordAsMethod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimRubyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b_inactive_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_b_to_airline_c_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_b_to_airline_c_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=235 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_b_to_airline_c_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_y_to_airline_z_inactive_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=234 gui=bold guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_c_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_c_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=236 gui=bold guibg=#303030 guifg=#303030
	CSAHi airline_c_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_b_to_airline_c term=NONE cterm=NONE ctermbg=234 ctermfg=238 gui=NONE guibg=#202020 guifg=#444444
	CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=244 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
	CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_to_airline_warning_inactive_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=208 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=208 gui=bold guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=235 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c1_to_airline_x term=NONE cterm=NONE ctermbg=19 ctermfg=234 gui=NONE guibg=#00008b guifg=#202020
	CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=19 gui=NONE guibg=bg guifg=#00008b
	CSAHi MatchParen term=reverse cterm=NONE ctermbg=37 ctermfg=fg gui=NONE guibg=#008b8b guifg=fg
	CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b term=NONE cterm=NONE ctermbg=238 ctermfg=226 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_to_airline_x term=NONE cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#202020
	CSAHi airline_x_to_airline_y term=NONE cterm=NONE ctermbg=234 ctermfg=238 gui=NONE guibg=#202020 guifg=#444444
	CSAHi airline_y_to_airline_z term=NONE cterm=NONE ctermbg=238 ctermfg=226 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi airline_z_to_airline_warning term=NONE cterm=NONE ctermbg=226 ctermfg=208 gui=NONE guibg=#dfff00 guifg=#df5f00
	CSAHi airline_x_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=239 gui=NONE guibg=#303030 guifg=#4e4e4e
	CSAHi airline_x_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=239 gui=bold guibg=#303030 guifg=#4e4e4e
	CSAHi airline_x_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimPythonRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x term=NONE cterm=NONE ctermbg=19 ctermfg=234 gui=NONE guibg=#00008b guifg=#202020
	CSAHi vimStdPlugin term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c3_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyInterpolation term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi NONE term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDelimEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=34 gui=NONE guibg=bg guifg=#008000
	CSAHi airline_y_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=239 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi airline_y_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=239 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=239 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_a_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=239 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi airline_a_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=239 gui=bold guibg=#1c1c1c guifg=#4e4e4e
	CSAHi airline_a_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_b_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=239 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi vimSetEqual term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimAugroupSyncA term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimGlobal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimExtCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFilter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedParentheses term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedCurlyBraces term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedAngleBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedSquareBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyRegexpParens term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapRhsExtend term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuPriority term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_inactive term=NONE cterm=NONE ctermbg=19 ctermfg=236 gui=NONE guibg=#00008b guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive term=NONE cterm=NONE ctermbg=19 ctermfg=236 gui=NONE guibg=#00008b guifg=#303030
	CSAHi vimMenuMap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyRegexpBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSet term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimUserCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimCmdSep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapLhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimNormCmds term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimGroupList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyLocalVariableOrMethod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlockArgument term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=236 gui=bold guibg=#303030 guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c2_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=236 gui=bold guibg=#303030 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#808080
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=230 ctermfg=234 gui=bold guibg=#ffdab9 guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=230 ctermfg=196 gui=NONE guibg=#ffdab9 guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=230 ctermfg=234 gui=bold guibg=#ffdab9 guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00
	CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=34 gui=bold guibg=bg guifg=#008000
	CSAHi StatusLine term=bold,reverse cterm=bold ctermbg=21 ctermfg=51 gui=bold guibg=#0000ff guifg=#00ffff
	CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=21 ctermfg=16 gui=NONE guibg=#0000ff guifg=#000000
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=255 gui=bold guibg=bg guifg=#ffffff
	CSAHi Visual term=reverse cterm=NONE ctermbg=37 ctermfg=16 gui=NONE guibg=#008b8b guifg=#000000
	CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
	CSAHi WarningMsg term=NONE cterm=bold ctermbg=19 ctermfg=51 gui=bold guibg=#00008b guifg=#00ffff
	CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi rubyBlockParameterList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyHeredocStart term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimOperParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_b_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=239 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi airline_b_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_c_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=239 gui=NONE guibg=#303030 guifg=#4e4e4e
	CSAHi airline_c_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=239 gui=bold guibg=#303030 guifg=#4e4e4e
	CSAHi airline_c_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_warning_inactive term=NONE cterm=NONE ctermbg=208 ctermfg=16 gui=NONE guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_inactive_bold term=bold cterm=bold ctermbg=208 ctermfg=16 gui=bold guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_inactive_red term=NONE cterm=NONE ctermbg=208 ctermfg=196 gui=NONE guibg=#df5f00 guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_z_to_airline_warning_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=208 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi vimAuSyntax term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimClusterName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_red term=NONE cterm=NONE ctermbg=230 ctermfg=196 gui=NONE guibg=#ffdab9 guifg=#ff0000
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=NONE cterm=NONE ctermbg=220 ctermfg=16 gui=NONE guibg=#ffa500 guifg=#000000
	CSAHi FoldColumn term=NONE cterm=NONE ctermbg=239 ctermfg=16 gui=NONE guibg=#4d4d4d guifg=#000000
	CSAHi DiffAdd term=bold cterm=NONE ctermbg=105 ctermfg=16 gui=NONE guibg=#6a5acd guifg=#000000
	CSAHi DiffChange term=bold cterm=NONE ctermbg=28 ctermfg=16 gui=NONE guibg=#006400 guifg=#000000
	CSAHi DiffDelete term=bold cterm=bold ctermbg=216 ctermfg=16 gui=bold guibg=#ff7f50 guifg=#000000
	CSAHi DiffText term=reverse cterm=bold ctermbg=143 ctermfg=16 gui=bold guibg=#6b8e23 guifg=#000000
	CSAHi SignColumn term=NONE cterm=NONE ctermbg=244 ctermfg=51 gui=NONE guibg=#808080 guifg=#00ffff
	CSAHi Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
	CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
	CSAHi rubyAliasDeclaration2 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyAliasDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    elseif has("gui_running") || &t_Co == 256
	CSAHi Normal term=NONE cterm=NONE ctermbg=18 ctermfg=226 gui=NONE guibg=#00008b guifg=#ffff00
	CSAHi rubyMethodDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyClassDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyModuleDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_to_airline_x_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_a_to_airline_b_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_b_to_airline_c_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x term=NONE cterm=NONE ctermbg=234 ctermfg=158 gui=NONE guibg=#202020 guifg=#9cffd3
	CSAHi airline_x_bold term=bold cterm=bold ctermbg=234 ctermfg=158 gui=bold guibg=#202020 guifg=#9cffd3
	CSAHi airline_x_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_y term=NONE cterm=NONE ctermbg=238 ctermfg=231 gui=NONE guibg=#444444 guifg=#ffffff
	CSAHi airline_y_bold term=bold cterm=bold ctermbg=238 ctermfg=231 gui=bold guibg=#444444 guifg=#ffffff
	CSAHi airline_y_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_y_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=239 gui=bold guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchCchar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchGroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
	CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=201 gui=bold guibg=bg guifg=#ff00ff
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
	CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=18 ctermfg=214 gui=NONE guibg=#00008b guifg=#ffa500
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=16 ctermfg=226 gui=reverse guibg=#ffff00 guifg=#000000
	CSAHi Search term=reverse cterm=NONE ctermbg=214 ctermfg=16 gui=NONE guibg=#ffa500 guifg=#000000
	CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
	CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
	CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
	CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
	CSAHi Pmenu term=NONE cterm=NONE ctermbg=201 ctermfg=fg gui=NONE guibg=#ff00ff guifg=fg
	CSAHi PmenuSel term=NONE cterm=NONE ctermbg=248 ctermfg=fg gui=NONE guibg=#a9a9a9 guifg=fg
	CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=231 ctermfg=fg gui=NONE guibg=#ffffff guifg=fg
	CSAHi TabLine term=underline cterm=underline ctermbg=248 ctermfg=fg gui=underline guibg=#a9a9a9 guifg=fg
	CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi CursorColumn term=reverse cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
	CSAHi vimIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMethodBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDoBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z term=NONE cterm=NONE ctermbg=190 ctermfg=17 gui=NONE guibg=#dfff00 guifg=#00005f
	CSAHi airline_z_bold term=bold cterm=bold ctermbg=190 ctermfg=17 gui=bold guibg=#dfff00 guifg=#00005f
	CSAHi airline_z_red term=NONE cterm=NONE ctermbg=190 ctermfg=196 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_a term=NONE cterm=NONE ctermbg=190 ctermfg=17 gui=NONE guibg=#dfff00 guifg=#00005f
	CSAHi airline_a_bold term=bold cterm=bold ctermbg=190 ctermfg=17 gui=bold guibg=#dfff00 guifg=#00005f
	CSAHi airline_a_red term=NONE cterm=NONE ctermbg=190 ctermfg=196 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_b term=NONE cterm=NONE ctermbg=238 ctermfg=231 gui=NONE guibg=#444444 guifg=#ffffff
	CSAHi airline_b_bold term=bold cterm=bold ctermbg=238 ctermfg=231 gui=bold guibg=#444444 guifg=#ffffff
	CSAHi airline_b_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_c term=NONE cterm=NONE ctermbg=234 ctermfg=158 gui=NONE guibg=#202020 guifg=#9cffd3
	CSAHi vimSynRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynPatMod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncLines term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncMatch term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncLinebreak term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi CursorLine term=underline cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
	CSAHi ColorColumn term=reverse cterm=NONE ctermbg=88 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
	CSAHi Cursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
	CSAHi lCursor term=NONE cterm=NONE ctermbg=226 ctermfg=18 gui=NONE guibg=#ffff00 guifg=#00008b
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=underline ctermbg=18 ctermfg=196 gui=underline guibg=#00008b guifg=#ff0000
	CSAHi Comment term=bold cterm=bold ctermbg=bg ctermfg=244 gui=bold guibg=bg guifg=#808080
	CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
	CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=201 gui=NONE guibg=bg guifg=#ff00ff
	CSAHi rubyCurlyBlockDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyCurlyBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyArrayDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyArrayLiteral term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlockExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyCaseExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyConditionalExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyOptionalDoLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_bold term=bold cterm=bold ctermbg=234 ctermfg=158 gui=bold guibg=#202020 guifg=#9cffd3
	CSAHi airline_c_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_warning term=NONE cterm=NONE ctermbg=166 ctermfg=16 gui=NONE guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_bold term=bold cterm=bold ctermbg=166 ctermfg=16 gui=bold guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_red term=NONE cterm=NONE ctermbg=166 ctermfg=196 gui=NONE guibg=#df5f00 guifg=#ff0000
	CSAHi airline_c1_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_y_to_airline_z_bold term=bold cterm=bold ctermbg=238 ctermfg=190 gui=bold guibg=#444444 guifg=#dfff00
	CSAHi airline_y_to_airline_z_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_c_to_airline_x_bold term=bold cterm=bold ctermbg=234 ctermfg=234 gui=bold guibg=#202020 guifg=#202020
	CSAHi airline_c_to_airline_x_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi vimSyncLinecont term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiKeyList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimExecute term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#808080
	CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#ffffff
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=214 gui=bold guibg=bg guifg=#ffa500
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=51 gui=underline guibg=bg guifg=#00ffff
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=214 ctermfg=16 gui=NONE guibg=#ffa500 guifg=#000000
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi VertSplit term=reverse cterm=NONE ctermbg=21 ctermfg=21 gui=NONE guibg=#0000ff guifg=#0000ff
	CSAHi airline_a_to_airline_b_bold term=bold cterm=bold ctermbg=238 ctermfg=190 gui=bold guibg=#444444 guifg=#dfff00
	CSAHi airline_a_to_airline_b_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_x_to_airline_y_bold term=bold cterm=bold ctermbg=234 ctermfg=238 gui=bold guibg=#202020 guifg=#444444
	CSAHi airline_x_to_airline_y_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_b_to_airline_c_bold term=bold cterm=bold ctermbg=234 ctermfg=238 gui=bold guibg=#202020 guifg=#444444
	CSAHi airline_b_to_airline_c_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_z_to_airline_warning_bold term=bold cterm=bold ctermbg=190 ctermfg=166 gui=bold guibg=#dfff00 guifg=#df5f00
	CSAHi airline_z_to_airline_warning_red term=NONE cterm=NONE ctermbg=190 ctermfg=196 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_a_to_airline_b_inactive_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_a_to_airline_b_inactive_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=234 gui=bold guibg=#262626 guifg=#1c1c1c
	CSAHi vimHiBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiCtermColor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiGuiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRange term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
	CSAHi Operator term=NONE cterm=bold ctermbg=bg ctermfg=214 gui=bold guibg=bg guifg=#ffa500
	CSAHi rubyKeywordAsMethod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimRubyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b_inactive_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_b_to_airline_c_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_b_to_airline_c_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=235 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_b_to_airline_c_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_y_to_airline_z_inactive_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=234 gui=bold guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_c_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_c_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=236 gui=bold guibg=#303030 guifg=#303030
	CSAHi airline_c_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_b_to_airline_c term=NONE cterm=NONE ctermbg=234 ctermfg=238 gui=NONE guibg=#202020 guifg=#444444
	CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=244 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
	CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_to_airline_warning_inactive_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=166 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=166 gui=bold guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=235 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c1_to_airline_x term=NONE cterm=NONE ctermbg=18 ctermfg=234 gui=NONE guibg=#00008b guifg=#202020
	CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=18 gui=NONE guibg=bg guifg=#00008b
	CSAHi MatchParen term=reverse cterm=NONE ctermbg=30 ctermfg=fg gui=NONE guibg=#008b8b guifg=fg
	CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b term=NONE cterm=NONE ctermbg=238 ctermfg=190 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_to_airline_x term=NONE cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#202020
	CSAHi airline_x_to_airline_y term=NONE cterm=NONE ctermbg=234 ctermfg=238 gui=NONE guibg=#202020 guifg=#444444
	CSAHi airline_y_to_airline_z term=NONE cterm=NONE ctermbg=238 ctermfg=190 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi airline_z_to_airline_warning term=NONE cterm=NONE ctermbg=190 ctermfg=166 gui=NONE guibg=#dfff00 guifg=#df5f00
	CSAHi airline_x_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=239 gui=NONE guibg=#303030 guifg=#4e4e4e
	CSAHi airline_x_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=239 gui=bold guibg=#303030 guifg=#4e4e4e
	CSAHi airline_x_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimPythonRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x term=NONE cterm=NONE ctermbg=18 ctermfg=234 gui=NONE guibg=#00008b guifg=#202020
	CSAHi vimStdPlugin term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c3_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyInterpolation term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi NONE term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDelimEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=28 gui=NONE guibg=bg guifg=#008000
	CSAHi airline_y_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=239 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi airline_y_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=239 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=239 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_a_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=239 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi airline_a_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=239 gui=bold guibg=#1c1c1c guifg=#4e4e4e
	CSAHi airline_a_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_b_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=239 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi vimSetEqual term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimAugroupSyncA term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimGlobal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimExtCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFilter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedParentheses term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedCurlyBraces term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedAngleBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedSquareBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyRegexpParens term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapRhsExtend term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuPriority term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_inactive term=NONE cterm=NONE ctermbg=18 ctermfg=236 gui=NONE guibg=#00008b guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive term=NONE cterm=NONE ctermbg=18 ctermfg=236 gui=NONE guibg=#00008b guifg=#303030
	CSAHi vimMenuMap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyRegexpBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSet term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimUserCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimCmdSep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapLhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimNormCmds term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimGroupList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyLocalVariableOrMethod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlockArgument term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=236 gui=bold guibg=#303030 guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c2_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=236 gui=bold guibg=#303030 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#808080
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=223 ctermfg=234 gui=bold guibg=#ffdab9 guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=223 ctermfg=196 gui=NONE guibg=#ffdab9 guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=223 ctermfg=234 gui=bold guibg=#ffdab9 guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00
	CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=28 gui=bold guibg=bg guifg=#008000
	CSAHi StatusLine term=bold,reverse cterm=bold ctermbg=21 ctermfg=51 gui=bold guibg=#0000ff guifg=#00ffff
	CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=21 ctermfg=16 gui=NONE guibg=#0000ff guifg=#000000
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=231 gui=bold guibg=bg guifg=#ffffff
	CSAHi Visual term=reverse cterm=NONE ctermbg=30 ctermfg=16 gui=NONE guibg=#008b8b guifg=#000000
	CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
	CSAHi WarningMsg term=NONE cterm=bold ctermbg=18 ctermfg=51 gui=bold guibg=#00008b guifg=#00ffff
	CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi rubyBlockParameterList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyHeredocStart term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimOperParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_b_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=239 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi airline_b_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_c_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=239 gui=NONE guibg=#303030 guifg=#4e4e4e
	CSAHi airline_c_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=239 gui=bold guibg=#303030 guifg=#4e4e4e
	CSAHi airline_c_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_warning_inactive term=NONE cterm=NONE ctermbg=166 ctermfg=16 gui=NONE guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_inactive_bold term=bold cterm=bold ctermbg=166 ctermfg=16 gui=bold guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_inactive_red term=NONE cterm=NONE ctermbg=166 ctermfg=196 gui=NONE guibg=#df5f00 guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_z_to_airline_warning_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=166 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi vimAuSyntax term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimClusterName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_red term=NONE cterm=NONE ctermbg=223 ctermfg=196 gui=NONE guibg=#ffdab9 guifg=#ff0000
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=NONE cterm=NONE ctermbg=214 ctermfg=16 gui=NONE guibg=#ffa500 guifg=#000000
	CSAHi FoldColumn term=NONE cterm=NONE ctermbg=239 ctermfg=16 gui=NONE guibg=#4d4d4d guifg=#000000
	CSAHi DiffAdd term=bold cterm=NONE ctermbg=62 ctermfg=16 gui=NONE guibg=#6a5acd guifg=#000000
	CSAHi DiffChange term=bold cterm=NONE ctermbg=22 ctermfg=16 gui=NONE guibg=#006400 guifg=#000000
	CSAHi DiffDelete term=bold cterm=bold ctermbg=209 ctermfg=16 gui=bold guibg=#ff7f50 guifg=#000000
	CSAHi DiffText term=reverse cterm=bold ctermbg=64 ctermfg=16 gui=bold guibg=#6b8e23 guifg=#000000
	CSAHi SignColumn term=NONE cterm=NONE ctermbg=244 ctermfg=51 gui=NONE guibg=#808080 guifg=#00ffff
	CSAHi Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
	CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
	CSAHi rubyAliasDeclaration2 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyAliasDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    elseif has("gui_running") || &t_Co == 88
	CSAHi Normal term=NONE cterm=NONE ctermbg=17 ctermfg=76 gui=NONE guibg=#00008b guifg=#ffff00
	CSAHi rubyMethodDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyClassDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyModuleDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_to_airline_x_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_a_to_airline_b_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_b_to_airline_c_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x term=NONE cterm=NONE ctermbg=80 ctermfg=46 gui=NONE guibg=#202020 guifg=#9cffd3
	CSAHi airline_x_bold term=bold cterm=bold ctermbg=80 ctermfg=46 gui=bold guibg=#202020 guifg=#9cffd3
	CSAHi airline_x_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_y term=NONE cterm=NONE ctermbg=80 ctermfg=79 gui=NONE guibg=#444444 guifg=#ffffff
	CSAHi airline_y_bold term=bold cterm=bold ctermbg=80 ctermfg=79 gui=bold guibg=#444444 guifg=#ffffff
	CSAHi airline_y_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_y_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=81 gui=bold guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchCchar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchGroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=#00ffff
	CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=67 gui=bold guibg=bg guifg=#ff00ff
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=#00ffff
	CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=17 ctermfg=68 gui=NONE guibg=#00008b guifg=#ffa500
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=16 ctermfg=76 gui=reverse guibg=#ffff00 guifg=#000000
	CSAHi Search term=reverse cterm=NONE ctermbg=68 ctermfg=16 gui=NONE guibg=#ffa500 guifg=#000000
	CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=76 gui=NONE guibg=bg guifg=#ffff00
	CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=76 gui=NONE guibg=bg guifg=#ffff00
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=#00ffff
	CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=67 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
	CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=31 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
	CSAHi Pmenu term=NONE cterm=NONE ctermbg=67 ctermfg=fg gui=NONE guibg=#ff00ff guifg=fg
	CSAHi PmenuSel term=NONE cterm=NONE ctermbg=84 ctermfg=fg gui=NONE guibg=#a9a9a9 guifg=fg
	CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=79 ctermfg=fg gui=NONE guibg=#ffffff guifg=fg
	CSAHi TabLine term=underline cterm=underline ctermbg=84 ctermfg=fg gui=underline guibg=#a9a9a9 guifg=fg
	CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi CursorColumn term=reverse cterm=NONE ctermbg=81 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
	CSAHi vimIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMethodBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDoBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z term=NONE cterm=NONE ctermbg=60 ctermfg=17 gui=NONE guibg=#dfff00 guifg=#00005f
	CSAHi airline_z_bold term=bold cterm=bold ctermbg=60 ctermfg=17 gui=bold guibg=#dfff00 guifg=#00005f
	CSAHi airline_z_red term=NONE cterm=NONE ctermbg=60 ctermfg=64 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_a term=NONE cterm=NONE ctermbg=60 ctermfg=17 gui=NONE guibg=#dfff00 guifg=#00005f
	CSAHi airline_a_bold term=bold cterm=bold ctermbg=60 ctermfg=17 gui=bold guibg=#dfff00 guifg=#00005f
	CSAHi airline_a_red term=NONE cterm=NONE ctermbg=60 ctermfg=64 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_b term=NONE cterm=NONE ctermbg=80 ctermfg=79 gui=NONE guibg=#444444 guifg=#ffffff
	CSAHi airline_b_bold term=bold cterm=bold ctermbg=80 ctermfg=79 gui=bold guibg=#444444 guifg=#ffffff
	CSAHi airline_b_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_c term=NONE cterm=NONE ctermbg=80 ctermfg=46 gui=NONE guibg=#202020 guifg=#9cffd3
	CSAHi vimSynRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynPatMod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncLines term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncMatch term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncLinebreak term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi CursorLine term=underline cterm=NONE ctermbg=81 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
	CSAHi ColorColumn term=reverse cterm=NONE ctermbg=32 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
	CSAHi Cursor term=NONE cterm=NONE ctermbg=79 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
	CSAHi lCursor term=NONE cterm=NONE ctermbg=76 ctermfg=17 gui=NONE guibg=#ffff00 guifg=#00008b
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=underline ctermbg=17 ctermfg=64 gui=underline guibg=#00008b guifg=#ff0000
	CSAHi Comment term=bold cterm=bold ctermbg=bg ctermfg=83 gui=bold guibg=bg guifg=#808080
	CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=#00ffff
	CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=67 gui=NONE guibg=bg guifg=#ff00ff
	CSAHi rubyCurlyBlockDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyCurlyBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyArrayDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyArrayLiteral term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlockExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyCaseExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyConditionalExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyOptionalDoLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_bold term=bold cterm=bold ctermbg=80 ctermfg=46 gui=bold guibg=#202020 guifg=#9cffd3
	CSAHi airline_c_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_warning term=NONE cterm=NONE ctermbg=52 ctermfg=16 gui=NONE guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_bold term=bold cterm=bold ctermbg=52 ctermfg=16 gui=bold guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_red term=NONE cterm=NONE ctermbg=52 ctermfg=64 gui=NONE guibg=#df5f00 guifg=#ff0000
	CSAHi airline_c1_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_y_to_airline_z_bold term=bold cterm=bold ctermbg=80 ctermfg=60 gui=bold guibg=#444444 guifg=#dfff00
	CSAHi airline_y_to_airline_z_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_c_to_airline_x_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#202020 guifg=#202020
	CSAHi airline_c_to_airline_x_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi vimSyncLinecont term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiKeyList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimExecute term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=83 gui=NONE guibg=bg guifg=#808080
	CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=79 gui=NONE guibg=bg guifg=#ffffff
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=68 gui=bold guibg=bg guifg=#ffa500
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=31 gui=underline guibg=bg guifg=#00ffff
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=68 ctermfg=16 gui=NONE guibg=#ffa500 guifg=#000000
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi VertSplit term=reverse cterm=NONE ctermbg=19 ctermfg=19 gui=NONE guibg=#0000ff guifg=#0000ff
	CSAHi airline_a_to_airline_b_bold term=bold cterm=bold ctermbg=80 ctermfg=60 gui=bold guibg=#444444 guifg=#dfff00
	CSAHi airline_a_to_airline_b_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_x_to_airline_y_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#202020 guifg=#444444
	CSAHi airline_x_to_airline_y_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_b_to_airline_c_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#202020 guifg=#444444
	CSAHi airline_b_to_airline_c_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_z_to_airline_warning_bold term=bold cterm=bold ctermbg=60 ctermfg=52 gui=bold guibg=#dfff00 guifg=#df5f00
	CSAHi airline_z_to_airline_warning_red term=NONE cterm=NONE ctermbg=60 ctermfg=64 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_a_to_airline_b_inactive_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_a_to_airline_b_inactive_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#262626 guifg=#1c1c1c
	CSAHi vimHiBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiCtermColor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiGuiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRange term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=76 gui=NONE guibg=bg guifg=#ffff00
	CSAHi Operator term=NONE cterm=bold ctermbg=bg ctermfg=68 gui=bold guibg=bg guifg=#ffa500
	CSAHi rubyKeywordAsMethod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimRubyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b_inactive_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_b_to_airline_c_inactive_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_b_to_airline_c_inactive_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_b_to_airline_c_inactive_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_y_to_airline_z_inactive_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_c_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_c_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#303030 guifg=#303030
	CSAHi airline_c_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_b_to_airline_c term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#202020 guifg=#444444
	CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=83 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
	CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_to_airline_warning_inactive_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=52 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=52 gui=bold guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c1_to_airline_x term=NONE cterm=NONE ctermbg=17 ctermfg=80 gui=NONE guibg=#00008b guifg=#202020
	CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=17 gui=NONE guibg=bg guifg=#00008b
	CSAHi MatchParen term=reverse cterm=NONE ctermbg=21 ctermfg=fg gui=NONE guibg=#008b8b guifg=fg
	CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b term=NONE cterm=NONE ctermbg=80 ctermfg=60 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_to_airline_x term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#202020 guifg=#202020
	CSAHi airline_x_to_airline_y term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#202020 guifg=#444444
	CSAHi airline_y_to_airline_z term=NONE cterm=NONE ctermbg=80 ctermfg=60 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi airline_z_to_airline_warning term=NONE cterm=NONE ctermbg=60 ctermfg=52 gui=NONE guibg=#dfff00 guifg=#df5f00
	CSAHi airline_x_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#303030 guifg=#4e4e4e
	CSAHi airline_x_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=81 gui=bold guibg=#303030 guifg=#4e4e4e
	CSAHi airline_x_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimPythonRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x term=NONE cterm=NONE ctermbg=17 ctermfg=80 gui=NONE guibg=#00008b guifg=#202020
	CSAHi vimStdPlugin term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c3_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyInterpolation term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi NONE term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDelimEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=20 gui=NONE guibg=bg guifg=#008000
	CSAHi airline_y_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi airline_y_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=81 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_a_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi airline_a_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=81 gui=bold guibg=#1c1c1c guifg=#4e4e4e
	CSAHi airline_a_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_b_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi vimSetEqual term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimAugroupSyncA term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimGlobal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimExtCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFilter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedParentheses term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedCurlyBraces term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedAngleBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedSquareBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyRegexpParens term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapRhsExtend term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuPriority term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_inactive term=NONE cterm=NONE ctermbg=17 ctermfg=80 gui=NONE guibg=#00008b guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive term=NONE cterm=NONE ctermbg=17 ctermfg=80 gui=NONE guibg=#00008b guifg=#303030
	CSAHi vimMenuMap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyRegexpBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSet term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimUserCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimCmdSep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapLhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimNormCmds term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimGroupList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyLocalVariableOrMethod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlockArgument term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#303030 guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c2_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#303030 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=83 gui=NONE guibg=bg guifg=#808080
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=74 ctermfg=80 gui=bold guibg=#ffdab9 guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=74 ctermfg=64 gui=NONE guibg=#ffdab9 guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=74 ctermfg=80 gui=bold guibg=#ffdab9 guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=76 gui=bold guibg=bg guifg=#ffff00
	CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=20 gui=bold guibg=bg guifg=#008000
	CSAHi StatusLine term=bold,reverse cterm=bold ctermbg=19 ctermfg=31 gui=bold guibg=#0000ff guifg=#00ffff
	CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=19 ctermfg=16 gui=NONE guibg=#0000ff guifg=#000000
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=79 gui=bold guibg=bg guifg=#ffffff
	CSAHi Visual term=reverse cterm=NONE ctermbg=21 ctermfg=16 gui=NONE guibg=#008b8b guifg=#000000
	CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
	CSAHi WarningMsg term=NONE cterm=bold ctermbg=17 ctermfg=31 gui=bold guibg=#00008b guifg=#00ffff
	CSAHi WildMenu term=NONE cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi rubyBlockParameterList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyHeredocStart term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimOperParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_b_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=81 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi airline_b_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_c_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#303030 guifg=#4e4e4e
	CSAHi airline_c_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=81 gui=bold guibg=#303030 guifg=#4e4e4e
	CSAHi airline_c_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_warning_inactive term=NONE cterm=NONE ctermbg=52 ctermfg=16 gui=NONE guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_inactive_bold term=bold cterm=bold ctermbg=52 ctermfg=16 gui=bold guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_inactive_red term=NONE cterm=NONE ctermbg=52 ctermfg=64 gui=NONE guibg=#df5f00 guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_z_to_airline_warning_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=52 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi vimAuSyntax term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimClusterName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_red term=NONE cterm=NONE ctermbg=74 ctermfg=64 gui=NONE guibg=#ffdab9 guifg=#ff0000
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=NONE cterm=NONE ctermbg=68 ctermfg=16 gui=NONE guibg=#ffa500 guifg=#000000
	CSAHi FoldColumn term=NONE cterm=NONE ctermbg=81 ctermfg=16 gui=NONE guibg=#4d4d4d guifg=#000000
	CSAHi DiffAdd term=bold cterm=NONE ctermbg=38 ctermfg=16 gui=NONE guibg=#6a5acd guifg=#000000
	CSAHi DiffChange term=bold cterm=NONE ctermbg=20 ctermfg=16 gui=NONE guibg=#006400 guifg=#000000
	CSAHi DiffDelete term=bold cterm=bold ctermbg=69 ctermfg=16 gui=bold guibg=#ff7f50 guifg=#000000
	CSAHi DiffText term=reverse cterm=bold ctermbg=36 ctermfg=16 gui=bold guibg=#6b8e23 guifg=#000000
	CSAHi SignColumn term=NONE cterm=NONE ctermbg=83 ctermfg=31 gui=NONE guibg=#808080 guifg=#00ffff
	CSAHi Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=64 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
	CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=19 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
	CSAHi rubyAliasDeclaration2 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyAliasDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    endif

    if 1
	delcommand CSAHi
    endif

endif