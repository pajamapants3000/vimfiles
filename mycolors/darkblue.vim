" Runs CSApprox version in console

if has("gui_running")

    " Vim color file
    " Maintainer:	Bohdan Vlasyuk <bohdan@vstu.edu.ua>
    " Last Change:	2008 Jul 18

    " darkblue -- for those who prefer dark background
    " [note: looks bit uglier with come terminal palettes,
    " but is fine on default linux console palette.]

    set bg=dark
    hi clear
    if exists("syntax_on")
	    syntax reset
    endif

    let colors_name = "darkblue"

    hi Normal		guifg=#c0c0c0 guibg=#000040						ctermfg=gray ctermbg=black
    hi ErrorMsg		guifg=#ffffff guibg=#287eff						ctermfg=white ctermbg=lightblue
    hi Visual		guifg=#8080ff guibg=fg		gui=reverse				ctermfg=lightblue ctermbg=fg cterm=reverse
    hi VisualNOS	guifg=#8080ff guibg=fg		gui=reverse,underline	ctermfg=lightblue ctermbg=fg cterm=reverse,underline
    hi Todo			guifg=#d14a14 guibg=#1248d1						ctermfg=red	ctermbg=darkblue
    hi Search		guifg=#90fff0 guibg=#2050d0						ctermfg=white ctermbg=darkblue cterm=underline term=underline
    hi IncSearch	guifg=#b0ffff guibg=#2050d0							ctermfg=darkblue ctermbg=gray

    hi SpecialKey		guifg=cyan			ctermfg=darkcyan
    hi Directory		guifg=cyan			ctermfg=cyan
    hi Title			guifg=magenta gui=none ctermfg=magenta cterm=bold
    hi WarningMsg		guifg=red			ctermfg=red
    hi WildMenu			guifg=yellow guibg=black ctermfg=yellow ctermbg=black cterm=none term=none
    hi ModeMsg			guifg=#22cce2		ctermfg=lightblue
    hi MoreMsg			ctermfg=darkgreen	ctermfg=darkgreen
    hi Question			guifg=green gui=none ctermfg=green cterm=none
    hi NonText			guifg=#0030ff		ctermfg=darkblue

    hi StatusLine	guifg=blue guibg=darkgray gui=none		ctermfg=blue ctermbg=gray term=none cterm=none
    hi StatusLineNC	guifg=black guibg=darkgray gui=none		ctermfg=black ctermbg=gray term=none cterm=none
    hi VertSplit	guifg=black guibg=darkgray gui=none		ctermfg=black ctermbg=gray term=none cterm=none

    hi Folded	guifg=#808080 guibg=#000040			ctermfg=darkgrey ctermbg=black cterm=bold term=bold
    hi FoldColumn	guifg=#808080 guibg=#000040			ctermfg=darkgrey ctermbg=black cterm=bold term=bold
    hi LineNr	guifg=#90f020			ctermfg=green cterm=none

    hi DiffAdd	guibg=darkblue	ctermbg=darkblue term=none cterm=none
    hi DiffChange	guibg=darkmagenta ctermbg=magenta cterm=none
    hi DiffDelete	ctermfg=blue ctermbg=cyan gui=bold guifg=Blue guibg=DarkCyan
    hi DiffText	cterm=bold ctermbg=red gui=bold guibg=Red

    hi Cursor	guifg=black guibg=yellow ctermfg=black ctermbg=yellow
    hi lCursor	guifg=black guibg=white ctermfg=black ctermbg=white


    hi Comment	guifg=#80a0ff ctermfg=darkred
    hi Constant	ctermfg=magenta guifg=#ffa0a0 cterm=none
    hi Special	ctermfg=brown guifg=Orange cterm=none gui=none
    hi Identifier	ctermfg=cyan guifg=#40ffff cterm=none
    hi Statement	ctermfg=yellow cterm=none guifg=#ffff60 gui=none
    hi PreProc	ctermfg=magenta guifg=#ff80ff gui=none cterm=none
    hi type		ctermfg=green guifg=#60ff60 gui=none cterm=none
    hi Underlined	cterm=underline term=underline
    hi Ignore	guifg=bg ctermfg=bg

    " suggested by tigmoid, 2008 Jul 18
    hi Pmenu guifg=#c0c0c0 guibg=#404080
    hi PmenuSel guifg=#c0c0c0 guibg=#2050d0
    hi PmenuSbar guifg=blue guibg=darkgray
    hi PmenuThumb guifg=#c0c0c0

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
	CSAHi Normal term=NONE cterm=NONE ctermbg=17 ctermfg=250 gui=NONE guibg=#000040 guifg=#c0c0c0
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
	CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=27 gui=bold guibg=bg guifg=#0030ff
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
	CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=69 ctermfg=231 gui=NONE guibg=#287eff guifg=#ffffff
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=159 ctermfg=68 gui=reverse guibg=#2050d0 guifg=#b0ffff
	CSAHi Search term=underline cterm=NONE ctermbg=68 ctermfg=159 gui=NONE guibg=#2050d0 guifg=#90fff0
	CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#2e8b57
	CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=80 gui=bold guibg=bg guifg=#22cce2
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=155 gui=NONE guibg=bg guifg=#90f020
	CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
	CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
	CSAHi Pmenu term=NONE cterm=NONE ctermbg=61 ctermfg=250 gui=NONE guibg=#404080 guifg=#c0c0c0
	CSAHi PmenuSel term=NONE cterm=NONE ctermbg=68 ctermfg=250 gui=NONE guibg=#2050d0 guifg=#c0c0c0
	CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=231 ctermfg=250 gui=NONE guibg=#ffffff guifg=#c0c0c0
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
	CSAHi Cursor term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=147 gui=NONE guibg=bg guifg=#80a0ff
	CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=217 gui=NONE guibg=bg guifg=#ffa0a0
	CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#ffa500
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
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#40ffff
	CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=228 gui=NONE guibg=bg guifg=#ffff60
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=120 gui=NONE guibg=bg guifg=#60ff60
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=147 gui=underline guibg=bg guifg=#80a0ff
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=26 ctermfg=166 gui=NONE guibg=#1248d1 guifg=#d14a14
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi VertSplit term=NONE cterm=NONE ctermbg=248 ctermfg=16 gui=NONE guibg=#a9a9a9 guifg=#000000
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
	CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=248 ctermfg=21 gui=NONE guibg=#a9a9a9 guifg=#0000ff
	CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_to_airline_warning_inactive_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=172 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=172 gui=bold guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=235 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c1_to_airline_x term=NONE cterm=NONE ctermbg=17 ctermfg=234 gui=NONE guibg=#000040 guifg=#202020
	CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=17 gui=NONE guibg=bg guifg=#000040
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
	CSAHi airline_c2_to_airline_x term=NONE cterm=NONE ctermbg=17 ctermfg=234 gui=NONE guibg=#000040 guifg=#202020
	CSAHi vimStdPlugin term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c3_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyInterpolation term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi NONE term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDelimEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=219 gui=NONE guibg=bg guifg=#ff80ff
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
	CSAHi airline_c1_to_airline_x_inactive term=NONE cterm=NONE ctermbg=17 ctermfg=236 gui=NONE guibg=#000040 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive term=NONE cterm=NONE ctermbg=17 ctermfg=236 gui=NONE guibg=#000040 guifg=#303030
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
	CSAHi airline_c1_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=19 ctermfg=236 gui=NONE guibg=#00008b guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=19 ctermfg=236 gui=bold guibg=#00008b guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=19 ctermfg=196 gui=NONE guibg=#00008b guifg=#ff0000
	CSAHi airline_c2_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=19 ctermfg=236 gui=NONE guibg=#00008b guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=19 ctermfg=236 gui=bold guibg=#00008b guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=19 ctermfg=196 gui=NONE guibg=#00008b guifg=#ff0000
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=19 ctermfg=234 gui=bold guibg=#00008b guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=19 ctermfg=196 gui=NONE guibg=#00008b guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=19 ctermfg=234 gui=bold guibg=#00008b guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00
	CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=34 gui=NONE guibg=bg guifg=#008000
	CSAHi StatusLine term=NONE cterm=NONE ctermbg=248 ctermfg=21 gui=NONE guibg=#a9a9a9 guifg=#0000ff
	CSAHi StatusLineNC term=NONE cterm=NONE ctermbg=248 ctermfg=16 gui=NONE guibg=#a9a9a9 guifg=#000000
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=201 gui=NONE guibg=bg guifg=#ff00ff
	CSAHi Visual term=reverse cterm=reverse ctermbg=147 ctermfg=250 gui=reverse guibg=#c0c0c0 guifg=#8080ff
	CSAHi VisualNOS term=bold,underline cterm=reverse,underline ctermbg=147 ctermfg=250 gui=reverse,underline guibg=#c0c0c0 guifg=#8080ff
	CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
	CSAHi WildMenu term=NONE cterm=NONE ctermbg=16 ctermfg=226 gui=NONE guibg=#000000 guifg=#ffff00
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
	CSAHi airline_c1_to_airline_x_red term=NONE cterm=NONE ctermbg=19 ctermfg=196 gui=NONE guibg=#00008b guifg=#ff0000
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=bold cterm=NONE ctermbg=17 ctermfg=244 gui=NONE guibg=#000040 guifg=#808080
	CSAHi FoldColumn term=bold cterm=NONE ctermbg=17 ctermfg=244 gui=NONE guibg=#000040 guifg=#808080
	CSAHi DiffAdd term=NONE cterm=NONE ctermbg=19 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
	CSAHi DiffChange term=bold cterm=NONE ctermbg=127 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
	CSAHi DiffDelete term=bold cterm=bold ctermbg=37 ctermfg=21 gui=bold guibg=#008b8b guifg=#0000ff
	CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
	CSAHi SignColumn term=NONE cterm=NONE ctermbg=244 ctermfg=51 gui=NONE guibg=#808080 guifg=#00ffff
	CSAHi Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
	CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
	CSAHi rubyAliasDeclaration2 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyAliasDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
	CSAHi Normal term=NONE cterm=NONE ctermbg=18 ctermfg=250 gui=NONE guibg=#000040 guifg=#c0c0c0
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
	CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=27 gui=bold guibg=bg guifg=#0030ff
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
	CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=75 ctermfg=255 gui=NONE guibg=#287eff guifg=#ffffff
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=195 ctermfg=69 gui=reverse guibg=#2050d0 guifg=#b0ffff
	CSAHi Search term=underline cterm=NONE ctermbg=69 ctermfg=159 gui=NONE guibg=#2050d0 guifg=#90fff0
	CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#2e8b57
	CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=87 gui=bold guibg=bg guifg=#22cce2
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=155 gui=NONE guibg=bg guifg=#90f020
	CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
	CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
	CSAHi Pmenu term=NONE cterm=NONE ctermbg=103 ctermfg=250 gui=NONE guibg=#404080 guifg=#c0c0c0
	CSAHi PmenuSel term=NONE cterm=NONE ctermbg=69 ctermfg=250 gui=NONE guibg=#2050d0 guifg=#c0c0c0
	CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=255 ctermfg=250 gui=NONE guibg=#ffffff guifg=#c0c0c0
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
	CSAHi Cursor term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi lCursor term=NONE cterm=NONE ctermbg=255 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#80a0ff
	CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=224 gui=NONE guibg=bg guifg=#ffa0a0
	CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=220 gui=NONE guibg=bg guifg=#ffa500
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
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=123 gui=NONE guibg=bg guifg=#40ffff
	CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=228 gui=NONE guibg=bg guifg=#ffff60
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=120 gui=NONE guibg=bg guifg=#60ff60
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=153 gui=underline guibg=bg guifg=#80a0ff
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=33 ctermfg=208 gui=NONE guibg=#1248d1 guifg=#d14a14
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi VertSplit term=NONE cterm=NONE ctermbg=248 ctermfg=16 gui=NONE guibg=#a9a9a9 guifg=#000000
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
	CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=248 ctermfg=21 gui=NONE guibg=#a9a9a9 guifg=#0000ff
	CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_to_airline_warning_inactive_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=208 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=208 gui=bold guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=235 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c1_to_airline_x term=NONE cterm=NONE ctermbg=18 ctermfg=234 gui=NONE guibg=#000040 guifg=#202020
	CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=18 gui=NONE guibg=bg guifg=#000040
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
	CSAHi airline_c2_to_airline_x term=NONE cterm=NONE ctermbg=18 ctermfg=234 gui=NONE guibg=#000040 guifg=#202020
	CSAHi vimStdPlugin term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c3_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyInterpolation term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi NONE term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDelimEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=219 gui=NONE guibg=bg guifg=#ff80ff
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
	CSAHi airline_c1_to_airline_x_inactive term=NONE cterm=NONE ctermbg=18 ctermfg=236 gui=NONE guibg=#000040 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive term=NONE cterm=NONE ctermbg=18 ctermfg=236 gui=NONE guibg=#000040 guifg=#303030
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
	CSAHi airline_c1_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=19 ctermfg=236 gui=NONE guibg=#00008b guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=19 ctermfg=236 gui=bold guibg=#00008b guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=19 ctermfg=196 gui=NONE guibg=#00008b guifg=#ff0000
	CSAHi airline_c2_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=19 ctermfg=236 gui=NONE guibg=#00008b guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=19 ctermfg=236 gui=bold guibg=#00008b guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=19 ctermfg=196 gui=NONE guibg=#00008b guifg=#ff0000
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=19 ctermfg=234 gui=bold guibg=#00008b guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=19 ctermfg=196 gui=NONE guibg=#00008b guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=19 ctermfg=234 gui=bold guibg=#00008b guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00
	CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=34 gui=NONE guibg=bg guifg=#008000
	CSAHi StatusLine term=NONE cterm=NONE ctermbg=248 ctermfg=21 gui=NONE guibg=#a9a9a9 guifg=#0000ff
	CSAHi StatusLineNC term=NONE cterm=NONE ctermbg=248 ctermfg=16 gui=NONE guibg=#a9a9a9 guifg=#000000
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=201 gui=NONE guibg=bg guifg=#ff00ff
	CSAHi Visual term=reverse cterm=reverse ctermbg=147 ctermfg=250 gui=reverse guibg=#c0c0c0 guifg=#8080ff
	CSAHi VisualNOS term=bold,underline cterm=reverse,underline ctermbg=147 ctermfg=250 gui=reverse,underline guibg=#c0c0c0 guifg=#8080ff
	CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
	CSAHi WildMenu term=NONE cterm=NONE ctermbg=16 ctermfg=226 gui=NONE guibg=#000000 guifg=#ffff00
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
	CSAHi airline_c1_to_airline_x_red term=NONE cterm=NONE ctermbg=19 ctermfg=196 gui=NONE guibg=#00008b guifg=#ff0000
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=bold cterm=NONE ctermbg=18 ctermfg=244 gui=NONE guibg=#000040 guifg=#808080
	CSAHi FoldColumn term=bold cterm=NONE ctermbg=18 ctermfg=244 gui=NONE guibg=#000040 guifg=#808080
	CSAHi DiffAdd term=NONE cterm=NONE ctermbg=19 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
	CSAHi DiffChange term=bold cterm=NONE ctermbg=127 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
	CSAHi DiffDelete term=bold cterm=bold ctermbg=37 ctermfg=21 gui=bold guibg=#008b8b guifg=#0000ff
	CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
	CSAHi SignColumn term=NONE cterm=NONE ctermbg=244 ctermfg=51 gui=NONE guibg=#808080 guifg=#00ffff
	CSAHi Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
	CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
	CSAHi rubyAliasDeclaration2 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyAliasDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    elseif has("gui_running") || &t_Co == 256
	CSAHi Normal term=NONE cterm=NONE ctermbg=17 ctermfg=250 gui=NONE guibg=#000040 guifg=#c0c0c0
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
	CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=27 gui=bold guibg=bg guifg=#0030ff
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
	CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=33 ctermfg=231 gui=NONE guibg=#287eff guifg=#ffffff
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=159 ctermfg=26 gui=reverse guibg=#2050d0 guifg=#b0ffff
	CSAHi Search term=underline cterm=NONE ctermbg=26 ctermfg=123 gui=NONE guibg=#2050d0 guifg=#90fff0
	CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=29 gui=bold guibg=bg guifg=#2e8b57
	CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=44 gui=bold guibg=bg guifg=#22cce2
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=118 gui=NONE guibg=bg guifg=#90f020
	CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
	CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
	CSAHi Pmenu term=NONE cterm=NONE ctermbg=60 ctermfg=250 gui=NONE guibg=#404080 guifg=#c0c0c0
	CSAHi PmenuSel term=NONE cterm=NONE ctermbg=26 ctermfg=250 gui=NONE guibg=#2050d0 guifg=#c0c0c0
	CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=231 ctermfg=250 gui=NONE guibg=#ffffff guifg=#c0c0c0
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
	CSAHi Cursor term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=111 gui=NONE guibg=bg guifg=#80a0ff
	CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=217 gui=NONE guibg=bg guifg=#ffa0a0
	CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#ffa500
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
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#40ffff
	CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=227 gui=NONE guibg=bg guifg=#ffff60
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=83 gui=NONE guibg=bg guifg=#60ff60
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=111 gui=underline guibg=bg guifg=#80a0ff
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=26 ctermfg=166 gui=NONE guibg=#1248d1 guifg=#d14a14
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi VertSplit term=NONE cterm=NONE ctermbg=248 ctermfg=16 gui=NONE guibg=#a9a9a9 guifg=#000000
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
	CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=248 ctermfg=21 gui=NONE guibg=#a9a9a9 guifg=#0000ff
	CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_to_airline_warning_inactive_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=166 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=166 gui=bold guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=235 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c1_to_airline_x term=NONE cterm=NONE ctermbg=17 ctermfg=234 gui=NONE guibg=#000040 guifg=#202020
	CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=17 gui=NONE guibg=bg guifg=#000040
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
	CSAHi airline_c2_to_airline_x term=NONE cterm=NONE ctermbg=17 ctermfg=234 gui=NONE guibg=#000040 guifg=#202020
	CSAHi vimStdPlugin term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c3_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyInterpolation term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi NONE term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDelimEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=213 gui=NONE guibg=bg guifg=#ff80ff
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
	CSAHi airline_c1_to_airline_x_inactive term=NONE cterm=NONE ctermbg=17 ctermfg=236 gui=NONE guibg=#000040 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive term=NONE cterm=NONE ctermbg=17 ctermfg=236 gui=NONE guibg=#000040 guifg=#303030
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
	CSAHi airline_c1_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=18 ctermfg=236 gui=NONE guibg=#00008b guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=18 ctermfg=236 gui=bold guibg=#00008b guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=18 ctermfg=196 gui=NONE guibg=#00008b guifg=#ff0000
	CSAHi airline_c2_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=18 ctermfg=236 gui=NONE guibg=#00008b guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=18 ctermfg=236 gui=bold guibg=#00008b guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=18 ctermfg=196 gui=NONE guibg=#00008b guifg=#ff0000
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=18 ctermfg=234 gui=bold guibg=#00008b guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=18 ctermfg=196 gui=NONE guibg=#00008b guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=18 ctermfg=234 gui=bold guibg=#00008b guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00
	CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=28 gui=NONE guibg=bg guifg=#008000
	CSAHi StatusLine term=NONE cterm=NONE ctermbg=248 ctermfg=21 gui=NONE guibg=#a9a9a9 guifg=#0000ff
	CSAHi StatusLineNC term=NONE cterm=NONE ctermbg=248 ctermfg=16 gui=NONE guibg=#a9a9a9 guifg=#000000
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=201 gui=NONE guibg=bg guifg=#ff00ff
	CSAHi Visual term=reverse cterm=reverse ctermbg=105 ctermfg=250 gui=reverse guibg=#c0c0c0 guifg=#8080ff
	CSAHi VisualNOS term=bold,underline cterm=reverse,underline ctermbg=105 ctermfg=250 gui=reverse,underline guibg=#c0c0c0 guifg=#8080ff
	CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
	CSAHi WildMenu term=NONE cterm=NONE ctermbg=16 ctermfg=226 gui=NONE guibg=#000000 guifg=#ffff00
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
	CSAHi airline_c1_to_airline_x_red term=NONE cterm=NONE ctermbg=18 ctermfg=196 gui=NONE guibg=#00008b guifg=#ff0000
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=bold cterm=NONE ctermbg=17 ctermfg=244 gui=NONE guibg=#000040 guifg=#808080
	CSAHi FoldColumn term=bold cterm=NONE ctermbg=17 ctermfg=244 gui=NONE guibg=#000040 guifg=#808080
	CSAHi DiffAdd term=NONE cterm=NONE ctermbg=18 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
	CSAHi DiffChange term=bold cterm=NONE ctermbg=90 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
	CSAHi DiffDelete term=bold cterm=bold ctermbg=30 ctermfg=21 gui=bold guibg=#008b8b guifg=#0000ff
	CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
	CSAHi SignColumn term=NONE cterm=NONE ctermbg=244 ctermfg=51 gui=NONE guibg=#808080 guifg=#00ffff
	CSAHi Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
	CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
	CSAHi rubyAliasDeclaration2 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyAliasDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    elseif has("gui_running") || &t_Co == 88
	CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=85 gui=NONE guibg=#000040 guifg=#c0c0c0
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
	CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=19 gui=bold guibg=bg guifg=#0030ff
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=#00ffff
	CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=23 ctermfg=79 gui=NONE guibg=#287eff guifg=#ffffff
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=63 ctermfg=22 gui=reverse guibg=#2050d0 guifg=#b0ffff
	CSAHi Search term=underline cterm=NONE ctermbg=22 ctermfg=47 gui=NONE guibg=#2050d0 guifg=#90fff0
	CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=#2e8b57
	CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=26 gui=bold guibg=bg guifg=#22cce2
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=44 gui=NONE guibg=bg guifg=#90f020
	CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=67 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
	CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=31 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
	CSAHi Pmenu term=NONE cterm=NONE ctermbg=17 ctermfg=85 gui=NONE guibg=#404080 guifg=#c0c0c0
	CSAHi PmenuSel term=NONE cterm=NONE ctermbg=22 ctermfg=85 gui=NONE guibg=#2050d0 guifg=#c0c0c0
	CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=79 ctermfg=85 gui=NONE guibg=#ffffff guifg=#c0c0c0
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
	CSAHi Cursor term=NONE cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi lCursor term=NONE cterm=NONE ctermbg=79 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=39 gui=NONE guibg=bg guifg=#80a0ff
	CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=69 gui=NONE guibg=bg guifg=#ffa0a0
	CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#ffa500
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
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=#40ffff
	CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=77 gui=NONE guibg=bg guifg=#ffff60
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=45 gui=NONE guibg=bg guifg=#60ff60
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=39 gui=underline guibg=bg guifg=#80a0ff
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=22 ctermfg=52 gui=NONE guibg=#1248d1 guifg=#d14a14
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi VertSplit term=NONE cterm=NONE ctermbg=84 ctermfg=16 gui=NONE guibg=#a9a9a9 guifg=#000000
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
	CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=84 ctermfg=19 gui=NONE guibg=#a9a9a9 guifg=#0000ff
	CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_to_airline_warning_inactive_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=52 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=52 gui=bold guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c1_to_airline_x term=NONE cterm=NONE ctermbg=16 ctermfg=80 gui=NONE guibg=#000040 guifg=#202020
	CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=#000040
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
	CSAHi airline_c2_to_airline_x term=NONE cterm=NONE ctermbg=16 ctermfg=80 gui=NONE guibg=#000040 guifg=#202020
	CSAHi vimStdPlugin term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c3_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyInterpolation term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi NONE term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDelimEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#ff80ff
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
	CSAHi airline_c1_to_airline_x_inactive term=NONE cterm=NONE ctermbg=16 ctermfg=80 gui=NONE guibg=#000040 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive term=NONE cterm=NONE ctermbg=16 ctermfg=80 gui=NONE guibg=#000040 guifg=#303030
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
	CSAHi airline_c1_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=17 ctermfg=80 gui=NONE guibg=#00008b guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=17 ctermfg=80 gui=bold guibg=#00008b guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=17 ctermfg=64 gui=NONE guibg=#00008b guifg=#ff0000
	CSAHi airline_c2_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=17 ctermfg=80 gui=NONE guibg=#00008b guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=17 ctermfg=80 gui=bold guibg=#00008b guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=17 ctermfg=64 gui=NONE guibg=#00008b guifg=#ff0000
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=17 ctermfg=80 gui=bold guibg=#00008b guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=17 ctermfg=64 gui=NONE guibg=#00008b guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=17 ctermfg=80 gui=bold guibg=#00008b guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=76 gui=bold guibg=bg guifg=#ffff00
	CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=20 gui=NONE guibg=bg guifg=#008000
	CSAHi StatusLine term=NONE cterm=NONE ctermbg=84 ctermfg=19 gui=NONE guibg=#a9a9a9 guifg=#0000ff
	CSAHi StatusLineNC term=NONE cterm=NONE ctermbg=84 ctermfg=16 gui=NONE guibg=#a9a9a9 guifg=#000000
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=67 gui=NONE guibg=bg guifg=#ff00ff
	CSAHi Visual term=reverse cterm=reverse ctermbg=39 ctermfg=85 gui=reverse guibg=#c0c0c0 guifg=#8080ff
	CSAHi VisualNOS term=bold,underline cterm=reverse,underline ctermbg=39 ctermfg=85 gui=reverse,underline guibg=#c0c0c0 guifg=#8080ff
	CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=64 gui=NONE guibg=bg guifg=#ff0000
	CSAHi WildMenu term=NONE cterm=NONE ctermbg=16 ctermfg=76 gui=NONE guibg=#000000 guifg=#ffff00
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
	CSAHi airline_c1_to_airline_x_red term=NONE cterm=NONE ctermbg=17 ctermfg=64 gui=NONE guibg=#00008b guifg=#ff0000
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=bold cterm=NONE ctermbg=16 ctermfg=83 gui=NONE guibg=#000040 guifg=#808080
	CSAHi FoldColumn term=bold cterm=NONE ctermbg=16 ctermfg=83 gui=NONE guibg=#000040 guifg=#808080
	CSAHi DiffAdd term=NONE cterm=NONE ctermbg=17 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
	CSAHi DiffChange term=bold cterm=NONE ctermbg=33 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
	CSAHi DiffDelete term=bold cterm=bold ctermbg=21 ctermfg=19 gui=bold guibg=#008b8b guifg=#0000ff
	CSAHi DiffText term=reverse cterm=bold ctermbg=64 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
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