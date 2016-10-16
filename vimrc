" File .vimrc (ALL Platforms)
" ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
" This file contains all general, personal vim settings
" Filetype specific settings are in ${VIMCONFIG}/ftplugin
" Post-launch and overriding filetype-specific settings are
"+in ${VIMCONFIG}/after/ftplugin.
" ${VIMCONFIG} is ~/.vim in Linux and ~/vimfiles in Windows
" **********************************************************
" Main vim runtimepath -- This is shared by all!
" Start with the standard runtime
set runtimepath=$VIMRUNTIME
" Set the default configuration, in case it's not already set
" Currently available: 'c', 'lua', 'python', 'min', 'mutt', 'none'
" NOTE: this vimrc should be sourced by another script that would typically
" have already set this.
if !exists('config_type')
    let config_type = 'none'
endif
" Set the initial user configuration to the location of this script
let this_script_path = resolve(expand('<sfile>:p:h'))
let &runtimepath .= ',' . this_script_path
" Source flags for this configuration
execute 'source ' . this_script_path . '/config_' . config_type . '.vimrc'
" Now add the usual system-specific user configuration
if has('win64')
    set rtp+=substitute($USERPROFILE, "\\", "/", "g") . '/OneDrive/vimfiles'
elseif has('win32')
    set rtp+=substitute($USERPROFILE, "\\", "/", "g") . '/OneDrive/x86/vimfiles'
else
    set rtp+=$HOME/.vim
endif
" Now add the "/after" paths
let &runtimepath .= ',' . this_script_path . '/after'
if has('win64')
    set rtp+=substitute($USERPROFILE, "\\", "/", "g").'/OneDrive/vimfiles/after'
elseif has('win32')
    set rtp+=substitute($USERPROFILE, "\\", "/", "g").'/OneDrive/x86/vimfiles/after'
else
    set rtp+=$HOME/.vim/after
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle and plugins
"********************
" Must be set while Vundle is doing its thang - not necessarily desired config
set nocompatible
filetype off
" Add vundle to runtime path so vim can find installed plugins
if has('win32')
    if has('win64')
        set rtp+=$USERPROFILE\OneDrive\vimfiles\bundle\vundle
        call vundle#begin('$USERPROFILE\OneDrive\vimfiles\bundle')
    else
        set rtp+=$USERPROFILE\OneDrive\x86\vimfiles\bundle\vundle
        call vundle#begin('$USERPROFILE\OneDrive\x86\vimfiles\bundle')
    endif
else
    set rtp+=~/.vim/bundle/vundle
    call vundle#begin('~/.vim/bundle')
endif

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

" The bundles you install will be listed here
" Usage:
"   Some sources use Plugin, not Bundle; Plugin deprecated as of v0.10.2
"   UPDATE: NO! I got it backwards!!! :(
"     Plugin 'klen/python-mode' - plugin hosted on GitHub
"     Plugin 'L9' - plugin from http://viim-scripts.org/vim/scripts.html (?)
"     Plugin 'git://git.wincent.com/commant-t.git' - Git plugin not on GitHub
"     Plugin 'file:///home/gmarik/path/to/plugin' - Plugin stored locally
"   Can add extra options to any plugin, e.g.
"     Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} - sets runtime path (subdir
"     of plugin repo)
"     Plugin 'user/L9', {'name': 'newL9'} - Set plugin name
"    ****    ****    ****    ****    ****    ****    ****    ****    ****
" Begin list of plugins to add
"    ****    ****    ****
" Airline - info bar at bottom, works better than powerline!
if PLUGIN_VIM_AIRLINE
    Plugin 'vim-airline/vim-airline'
endif
if PLUGIN_VIM_AIRLINE_THEMES
    Plugin 'vim-airline/vim-airline-themes'
endif
" NerdTree - file explorer
if PLUGIN_NERDTREE
    Plugin 'scrooloose/nerdtree'
endif
" NerdTree - file explorer
if PLUGIN_LOCALRC
    Plugin 'thinca/vim-localrc'
endif
" vifm.vim - vifm in vim!
if PLUGIN_VIFM
    Plugin 'vifm/vifm.vim'
endif
" MiniBufExplorer - like tab bar but for buffers
"+unite kinda renders this unnecessary, unless I want to SEE the buffers
"+at all times, but they can never be removed (I think?). So, disabling for now.
if PLUGIN_MINIBUFEXPL
    Plugin 'fholgado/minibufexpl.vim'
endif
" gee-undo - visualize undo tree
if PLUGIN_GUNDO
    Plugin 'sjl/gundo.vim'
endif
" TaskList - ... task list
if PLUGIN_TASKLIST
    Plugin 'vim-scripts/TaskList.vim'
endif
" ConqueTerm - Run a (os native) terminal from within vim.
if PLUGIN_CONQUETERM_VIM
    Plugin 'pthrasher/conqueterm-vim'
endif
" 'mksession on steroids'; will use when I feel like trying it out, seems cool
if PLUGIN_VIM_SESSION
    Plugin 'xolox/vim-session'
endif
" General vim plugin function library; used by xolox e.g. vim-session
" xolox has a lot of good stuff, keep trying some of his stuff!
if PLUGIN_VIM_MISC
    Plugin 'xolox/vim-misc'
endif
" vim-shell - improved integration with shell; required for Windows to be
"+able to utilize asynchronous processing in easytags
if PLUGIN_VIM_SHELL
    Plugin 'xolox/vim-shell'
endif
" AutoComplPop - automatically pops open completion list
if PLUGIN_AUTOCOMPLPOP
    Plugin 'vim-scripts/AutoComplPop'
endif
" Supertab - allows tabbing through completions like YCM; also, gets rid
"+of <Space> conflict with double-underscore mapping?
if PLUGIN_SUPERTAB
    Plugin 'ervandew/supertab'
endif
" Matchit - extends % command to not only jump parens and brackets, but more!
if PLUGIN_MATCHIT
    Plugin 'tmhedberg/matchit'
endif
" EasyMotion - As the name says, makes it easy to get from point a to b.
if PLUGIN_VIM_EASYMOTION
    Plugin 'easymotion/vim-easymotion'
endif
" IncSearch - adds great functionality to incremental search
if PLUGIN_INCSEARCH
    Plugin 'haya14busa/incsearch.vim'
endif
" IncSearch-EasyMotion - itegration of two plugins
if PLUGIN_INCSEARCH_EASYMOTION
    Plugin 'haya14busa/incsearch-easymotion.vim'
endif
" IncSearch-fuzzy - fuzzy search extension to incsearch
if PLUGIN_INCSEARCH_FUZZY
    Plugin 'haya14busa/incsearch-fuzzy.vim'
endif
" EasyOperator Plugins screw up color somehow! TODO: Fix this!
" EasyOperator-Line - makes it easy to perform operations on specific lines
if PLUGIN_VIM_EASYOPERATOR_LINE
    Plugin 'haya14busa/vim-easyoperator-line'
endif
" EasyOperator-Phrase - makes it easy to perform operations on specific phrases
if PLUGIN_VIM_EASYOPERATOR_PHRASE
    Plugin 'haya14busa/vim-easyoperator-phrase'
endif
" linediff - make two selections and diff them!
if PLUGIN_LINEDIFF
    Plugin 'AndrewRadev/linediff.vim'
endif
" vim-surround - easily add/change/remove enclosing chars e.g. "", [], <> etc.
if PLUGIN_VIM_SURROUND
    Plugin 'tpope/vim-surround'
endif
" sudo.vim - allows you to use sudo to open privileged file from within vim
if PLUGIN_SUDO
    Plugin 'vim-scripts/sudo.vim'
endif
" vim-ref - Seems like a useful plugin for viewing documentation
if PLUGIN_VIM_REF
    Plugin 'thinca/vim-ref'
endif
" caw.vim - sophisticated comment plugin (not sure I need this)
if PLUGIN_CAW
    Plugin 'tyru/caw.vim'
endif
" vim-bookmarks - vim bookmark plugin
if PLUGIN_VIM_BOOKMARKS
    Plugin 'MattesGroeger/vim-bookmarks'
endif
"*******"
" UNITE "
"^^^^^^^"
" Unite - an awesome plugin that does many things!
if PLUGIN_UNITE
    Plugin 'Shougo/unite.vim'
endif
" neoyank - yank list functionality for Unite
if PLUGIN_NEOYANK
    Plugin 'Shougo/neoyank.vim'
endif
" neomru - Most Recently Used files functionality for Unite
if PLUGIN_NEOMRU
    Plugin 'Shougo/neomru.vim'
endif
" unite-history - adds command/search history to Unite sources
if PLUGIN_VIM_UNITE_HISTORY
    Plugin 'thinca/vim-unite-history'
endif
" unite-colorscheme - add colorschemes to Unite sources; can select from here?
if PLUGIN_UNITE_COLORSCHEME
    Plugin 'ujihisa/unite-colorscheme'
endif
" neoinclude - dependency for unite-tag; says it requires neocomplete but it
"+seems like it should be the other way around.... we'll see.
if PLUGIN_NEOINCLUDE
    Plugin 'Shougo/neoinclude.vim'
endif
" unite-tag - another added funcitonality to Unite
if PLUGIN_UNITE_TAG
    Plugin 'tsukkee/unite-tag'
endif
" unite-quickfix - yet another added funcitonality to Unite
if PLUGIN_UNITE_QUICKFIX
    Plugin 'osyo-manga/unite-quickfix'
endif
" unite-outline - a cool sounding outline generator: parses buffer for
"+headings and creates a sort of table of contents that you can use to jump
"+to specific sections
if PLUGIN_UNITE_OUTLINE
    Plugin 'Shougo/unite-outline'
endif
" unite-help - not quite sure, but I would image this lists help available
if PLUGIN_UNITE_HELP
    Plugin 'Shougo/unite-help'
endif
" unite-mark - no documentation, but I think this lists all marks
if PLUGIN_UNITE_MARK
    Plugin 'tacroe/unite-mark'
endif
" unite-giti - git integration with Unite
if PLUGIN_VIM_UNITE_GITI
    Plugin 'kmnk/vim-unite-giti'
endif
" vimproc - library to enable asynchronous processing in unite and others
if PLUGIN_VIMPROC
    Plugin 'Shougo/vimproc.vim'
endif
"***************************
" Wrappers and integrations
"^^^^^^^^^^^^^^^^^^^^^^^^^^^
" NOTE: Ability to diff is dependent on external binary, such as GNUWin32
"+diff.exe available on PATH
" Fugitive - Git wrapper
if PLUGIN_VIM_FUGITIVE
    Plugin 'tpope/vim-fugitive'
endif
" GitGutter - Shows git diff in the gutter (sign column)
if PLUGIN_VIM_GITGUTTER
    Plugin 'airblade/vim-gitgutter'
endif
" vim-signify - more generalized diff-sign in gutter
if PLUGIN_VIM_SIGNIFY
    Plugin 'mhinz/vim-signify'
endif
" vim-gita - Looks like a VERY cool git handling plugin (says it's in alpha)
if PLUGIN_VIM_GITA
    Plugin 'lambdalisue/vim-gita'
endif
" agit.vim - A powerful Git log viewer
if PLUGIN_AGIT
    Plugin 'cohama/agit.vim'
endif
" gist-vim - the more traditional, it seems, gist plugin
if PLUGIN_GIST_VIM
    Plugin 'mattn/gist-vim'
endif
" vim-gista - a plugin for handling gists
if PLUGIN_VIM_GISTA
    Plugin 'lambdalisue/vim-gista'
endif
" vim-gista-unite - use unite with gista
if PLUGIN_VIM_GISTA_UNITE
    Plugin 'lambdalisue/vim-gista-unite'
endif
" vital-VCS-Git - vital library add-on, needed for gita
if PLUGIN_VITAL_VCS_GIT
    Plugin 'lambdalisue/vital-VCS-Git'
endif
" vital - comprehensive library of VimL utility functions (also gita dep.)
if PLUGIN_VITAL
    Plugin 'vim-jp/vital.vim'
endif
" vital-ArgumentParser - another library needed by gita
if PLUGIN_VITAL_ARGUMENTPARSER
    Plugin 'lambdalisue/vital-ArgumentParser'
endif
" Mercenary - Mercurial wrapper
if PLUGIN_VIM_MERCENARY
    Plugin 'phleet/vim-mercenary'
endif
" Lawrencium - Another Mercurial wrapper - seems to offer a different subset
"+of commands than Mercenary
" WREAKS HAVOC! With MZSCHEME support and those annoying output lines, this
"+plugin goes nuts!
if PLUGIN_VIM_LAWRENCIUM
    Plugin 'ludovicchabant/vim-lawrencium'
endif
" TmuxLine - Statusline integration with tmux
if PLUGIN_TMUXLINE
    Plugin 'edkolev/tmuxline.vim'
endif
" OpenBrowser - Open URIs in browser; execute searches.
if PLUGIN_OPEN_BROWSER
    Plugin 'tyru/open-browser.vim'
endif
"************
" vim as IDE
"^^^^^^^^^^^^
" YouCompleteMe - Supposedly combines the best autocompletions for all
"+major programming languages, including Jedi for Python.
" Pops a single mzsc-output on the top line on startup.
if PLUGIN_YOUCOMPLETEME
    Plugin 'valloric/youcompleteme'
endif
" Ultisnips - Provides (supposedly) awesome snippet support; fast, simple
if PLUGIN_ULTISNIPS
    Plugin 'SirVer/ultisnips'
endif
" vim-addon-mw-utils - library for vim; SnipMate dependency
if PLUGIN_VIM_ADDON_MW_UTILS
    Plugin 'MarcWeber/vim-addon-mw-utils'
endif
" tlib_vim - library for vim; SnipMate dependency
if PLUGIN_TLIB_VIM
    Plugin 'tomtom/tlib_vim'
endif
"SnipMate - Another popular snippet plugin
if PLUGIN_VIM_SNIPMATE
    Plugin 'garbas/vim-snipmate'
endif
" Vim-Snippets - a collection of snippets for both Ultisnips and SnipMate
if PLUGIN_VIM_SNIPPETS
    Plugin 'honza/vim-snippets'
endif
" Syntastic - Syntax checking hacks for vim
if PLUGIN_SYNTASTIC
    Plugin 'scrooloose/syntastic'
endif
" vim-easytags - Automated tag file generation and syntax highlighting of tags
if PLUGIN_VIM_EASYTAGS
    Plugin 'xolox/vim-easytags'
endif
" TagBar - A class outline viewer for Vim
" pops a single mzsc-output line on bottom line on startup
if PLUGIN_TAGBAR
    Plugin 'majutsushi/tagbar'
endif
" splitjoin - switches between multiline code and single-line
if PLUGIN_SPLITJOIN
    Plugin 'AndrewRadev/splitjoin.vim'
endif
"*********
" C / C++
"^^^^^^^^^
" Alternate - switch between header and source files easily
if PLUGIN_A
    Plugin 'vim-scripts/a.vim'
endif
" Syntax Highlighting - seems to use builtin syntax with minor improvements
"+and additions;
if PLUGIN_VIM_CPP
    Plugin 'vim-jp/vim-cpp'
endif
"********
" Lua
"^^^^^^^^
" Lua-ftplugin - Lua plugin by xolox
" Includes an optional omnicomplete I may try later
" My own modified version
if PLUGIN_VIM_LUA_FTPLUGIN
    Plugin 'pajamapants3000/vim-lua-ftplugin'
endif
" Lua-omnicomplete - My own mod of one on vim.org; will be used by YCM
" This doesn't work very well, needs some work; gonna try xolox' omnicompl
if PLUGIN_LUA_OMNI
    Plugin 'pajamapants3000/lua_omni'
endif
" Lua52 Manual - reference for version 5.2
if PLUGIN_VIM_LUA_MANUAL
    Plugin 'whoisusingmyname/vim-lua-manual'
endif
"********
" Python
"^^^^^^^^
" Jedi - awesome python autocompletion. Replace with YouCompleteMe?
if PLUGIN_JEDI_VIM
    Plugin 'davidhalter/jedi-vim'
endif
" Python_PyDoc.vim - Integrates PyDoc. Needs work in Windows, functionality
"+already exists anyway with....Jedi?
if PLUGIN_PYDOC
    Plugin 'fs111/pydoc.vim'
endif
" VirtualEnv - Allows you to use vim inside a virtualenv for python
if PLUGIN_VIM_VIRTUALENV
    Plugin 'jmcantrell/vim-virtualenv'
endif
if PLUGIN_VIM_RACER 
    Plugin 'racer-rust/vim-racer'
endif
"******************************
" Colorscheme and theme related
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
" CSApprox - Helps colorschemes fit any terminal's available colors
if PLUGIN_CSAPPROX
    Plugin 'godlygeek/csapprox'
endif
" Colorstepper - Quick, easy cycling through colorschemes;
" My own modified version
if PLUGIN_VIM_COLORSTEPPER
    Plugin 'pajamapants3000/vim-colorstepper'
endif
" Thematic - Awesome control over visual elements!
if PLUGIN_VIM_THEMATIC
    Plugin 'reedes/vim-thematic'
endif
" fontzoom - resize font (GUI only)
if PLUGIN_VIM_FONTZOOM
    Plugin 'thinca/vim-fontzoom'
endif
" TabpageColorscheme - different colorscheme on each tab!
if PLUGIN_TABPAGECOLORSCHEME
    Plugin 'ujihisa/tabpagecolorscheme'
endif
" Colorschemes
" for vim-colorschemes: such a long list that I keep my own shortened versions
"+Many of these seem to do undesirable things; try instead Colour-Sampler-Pk
if PLUGIN_FLAZZ_VIM_COLORSCHEMES
    Plugin 'flazz/vim-colorschemes'
endif
" Colour-Sampler-Pack - promises not to have "evil' colorschemes (undesirable)
"+side effects); also comes with GUI-browser!
if PLUGIN_COLOUR_SAMPLER_PACK
    Plugin 'vim-scripts/Colour-Sampler-Pack'
endif
" ScrollColors - a color browser/chooser that works in Console as well as GUI
if PLUGIN_SCROLLCOLORS
    Plugin 'vim-scripts/ScrollColors'
endif
if PLUGIN_VIM_COLORS_SOLARIZED
    Plugin 'altercation/vim-colors-solarized'
endif
if PLUGIN_BASE16_VIM
    Plugin 'chriskempson/base16-vim'
endif
if PLUGIN_MOLOKAI
    Plugin 'tomasr/molokai'
endif
if PLUGIN_SHIRACHA_VIM
    Plugin 'shiracha/shiracha-vim'
endif
if PLUGIN_VIM_LUNA
    Plugin 'notpratheek/vim-luna'
endif
if PLUGIN_ZENESQUE
    Plugin 'vim-scripts/zenesque.vim'
endif
if PLUGIN_NEVERLAND_VIM_THEME
    Plugin 'trapd00r/neverland-vim-theme'
endif
if PLUGIN_VIM_ALDMERIS
    Plugin 'veloce/vim-aldmeris'
endif
if PLUGIN_VIM_HYBRID
    Plugin 'w0ng/vim-hybrid'
endif
if PLUGIN_VIM_HYBRID_MATERIAL
    Plugin 'kristijanhusak/vim-hybrid-material'
endif
if PLUGIN_LAST256
    Plugin 'sk1418/last256'
endif
"********************************
" Additional Syntax Highlighting
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
if PLUGIN_VIM_QML
    Plugin 'peterhoeg/vim-qml'
endif
" ft-cmake - This is actually a dict/ entry for cmake
if PLUGIN_FT_CMAKE
    Plugin 'ujihisa/ft-cmake'
endif
" moonscript
if PLUGIN_MOONSCRIPT_VIM
    Plugin 'leafo/moonscript-vim'
endif
" coffeescript
if PLUGIN_VIM_COFFEE_SCRIPT
    Plugin 'kchmck/vim-coffee-script'
endif
" rc shell
if PLUGIN_RCSHELL
    Plugin 'weakish/rcshell.vim'
endif
" rust
if PLUGIN_RUST
    Plugin 'rust-lang/rust.vim'
endif
" toml
if PLUGIN_VIM_TOML
    Plugin 'cespare/vim-toml'
endif
" toml
if PLUGIN_VBNET
    Plugin 'vim-scripts/vbnet.vim'
endif
if PLUGIN_ASPNET
    Plugin 'vim-scripts/aspnet.vim'
endif
if PLUGIN_HLA
    Plugin 'jmahler/hla.vim'
endif
"**********************"
"**********************"
" Doing more with vim! "
"^^^^^^^^^^^^^^^^^^^^^^"
" Calendar.vim - VERY cool! A calendar that syncs with google.
if PLUGIN_CALENDAR
    Plugin 'itchyny/calendar.vim'
endif
" vim-pager - use vim as a pager
if PLUGIN_VIM_PAGER
    Plugin 'lambdalisue/vim-pager'
endif
" vim-manpager - use vim to display manpages, both in vim and from shell
"+add-to/change shell environment: MANPAGER="vim -c MANPAGER -"
if PLUGIN_VIM_MANPAGER
    Plugin 'lambdalisue/vim-manpager'
endif
" vimshell - a shell completely written in vimscript
if PLUGIN_VIMSHELL
    Plugin 'Shougo/vimshell.vim'
endif
" vimfiler - file explorer
if PLUGIN_VIMFILER
    Plugin 'Shougo/vimfiler.vim'
endif
" *** Web Browser Plugins (experiment and pick one - ideally) ***
" browser.vim by Moshe Kamensky - requires synmark.vim and perl/perl modules
if PLUGIN_VS_BROWSER
    Plugin 'vim-scripts/browser.vim'
endif
" synmark - provides commands for highlighting text at fixed position
if PLUGIN_SYNMARK
    Plugin 'vim-scripts/synmark.vim'
endif
" browser.vim by Michael Browne - requires lynx
if PLUGIN_MJBROWNIE_BROWSER
    Plugin 'mjbrownie/browser.vim'
endif
" WebBrowser - requires lynx; seems aimed specifically at MS-Windows
if PLUGIN_VS_WEBBROWSER
    Plugin 'vim-scripts/webBrowser'
endif
" vimwiki - create personal wiki in vim
"   can also be used as notebook...?
if PLUGIN_VIMWIKI
    Plugin 'vimwiki/vimwiki'
endif
" vim-notes - note taking plugin from xolox
if PLUGIN_VIM_NOTES
    Plugin 'xolox/vim-notes'
endif
" vim-orgmode - ripoff of popular emacs plugin
"   used for organization and such
if PLUGIN_VIM_ORGMODE
    Plugin 'jceb/vim-orgmode'    
endif
" vim-taskwarrior - vim interface to taskwarrior utility
if PLUGIN_VIM_TASKWARRIOR
    Plugin 'blindFS/vim-taskwarrior'
endif
"    ****    ****    ****
" End list of plugins to add
"    ****    ****    ****
call vundle#end()
" Should append to vundle setup, but it is repeated further down.
"filetype plugin indent on
"***************************************************************************
" Main Configuration
"********************
" vifm integration
if has('unix')
    set runtimepath+=/usr/share/vifm/vim-doc/
    set runtimepath+=/usr/share/vifm/vim/
endif
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" For use with neovim
if has('nvim')
  runtime! python_setup.vim
endif
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" Highlight past 79 columns - More insistent; has odd effect on popup text
" This should be moved to the python config
"augroup vimrc_autocmds
"    autocmd!
"    " highlight characters past column 79
"    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=lightgrey
"    autocmd FileType python match Excess /\%79v.*/
"    autocmd FileType python set nowrap
"    augroup END
" Cool alternative, just color the column!
set colorcolumn=80
highlight ColorColumn ctermbg=darkgray
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" Change one of the tabstops to 1? Only tabs are pressed, not built in.
" UPDATE: I like the built-in tab stops now.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set foldmethod=marker
set foldlevel=99
set showcmd
set incsearch
syntax on                       " syntax highlighing
filetype on                     " try to detect filetypes
filetype plugin indent on       " enable loading indent file for filetype
" Set tags to include ctags
set tags+=./tags
" Session options to save on request
set ssop-=options               " Don't mess with options/plugins loaded!
" GUI Options
"*************
" Turn off toolbar
set guioptions-=T
" Turn off GUI tabs; use tabline instead
set guioptions-=e
set showtabline=1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions
"***********
" For super-line-numbering!
"^^^^^^^^^^^^^^^^^^^^^^^^^^
function! NumberToggleRel()
    if(&number == 1)
        if(&relativenumber == 1)
            set norelativenumber
        else
            set relativenumber
        endif
    endif
endfunc
"
function! NumberToggle()
    if(&relativenumber == 1)
        if(&number == 1)
            set norelativenumber
            set nonumber
        else
            set number
        endif
    else
        if(&number == 1)
            set nonumber
        else
            set number
        endif
    endif
endfunc
"
" UltiSnips functions
"^^^^^^^^^^^^^^^^^^^^^
    if PLUGIN_ULTISNIPS
" Map expand and jump forward to the same key; applies as appropriate
" This currently doesn't work!
function! UltiSnipsExpandOrJump()
    call UltiSnips#ExpandSnippetOrJump()
endfunction
" Opens Unite - map to key
function! UltiSnipsCallUnite()
Unite -winheight=100 -immediately -no-empty ultisnips
return ''
endfunction
    endif   " PLUGIN_ULTISNIPS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin-specific settings and mappings
"***************************************

" Nerdtree
"^^^^^^^^^^
    if PLUGIN_NERDTREE
"**Options**
let NERDTreeShowLineNumbers=0
"**Mappings**
map <F2> :NERDTreeToggle<CR>
map <leader>d :Bookmark
map <leader>b :OpenBookmark
    endif   " PLUGIN_NERDTREE
" Gundo (gee-undo)
"^^^^^^^^^^^^^^^^^
    if PLUGIN_GUNDO
"**Options**
" set width of windows; default 45
"let g:gundo_width
" set height of preview window; default 15
"let g:gundo_preview_height
" force previews at very bottom instead of under graph - gives them
"+more space. default 0.
"let g:gundo_preview_bottom=1
" open to right instead of left; default 0.
"let g:gundo_right=1
" automatically close on revert, default 0 (no)
"let g:gundo_close_on_revert=1
" enable/disabke automatic diff rendering when an item is selected
"+disable (set to 0) to speed things up. In that case, just press 'r'
"+to manually render it. Default is 1 (enabled auto preview/diff)
"let g:gundo_auto_preview=0
"**Mappings**
" toggle gundo window
nnoremap <F5> :GundoToggle<CR>
    endif   " PLUGIN_GUNDO

" MiniBufExplorer
"^^^^^^^^^^^^^^^^^
    if PLUGIN_MINIBUFEXPL
" Dropped in favor of unite
"**Mappings**
"noremap <C-PageDown> :MBEbn<CR>
"noremap <C-PageUp> :MBEbp<CR>
    endif   " PLUGIN_MINIBUFEXPL

" tasklist.vim
"^^^^^^^^^^^^^^
    if PLUGIN_TASKLIST
"**Options**
"let g:tlWindowPosition = 1 "0 is default, window on top. 1 -> window on bottom
""tlTokenList: List of tokens that tasklist searches for
"+default = ['FIXME', 'TODO', 'XXX']
"let g:tlTokenList = ['FIXME', 'TODO', 'XXX']
"**Mappings**
"map <leader>t :TaskList<CR> "mapped by default
    endif   " PLUGIN_TASKLIST

" localrc
"^^^^^^^^^
    if PLUGIN_LOCALRC
" Sources any configuration file of the correct name in all parent directories
"+in the path, in order so that the most recent sourced is the nearest parent
"+or current directory. This is a very simple plugin that also allows
"+filetype-specific settings. The two configurable options are the filename
"+for the configurations, and the format for filetype-specific settings.
"let g:localrc_filename=".local.vimrc"
"let g:localrc_filetype='/^\.local\..*\<%s\>.*\.vimrc$' "e.g. .local.cpp.vimrc
    endif   " PLUGIN_LOCALRC

" Jedi
"^^^^^^
    if PLUGIN_JEDI_VIM
"**Options**
"let g:jedi#force_py_version = 3
"let g:jedi#completions_command = '<C-Space>'
    endif   " PLUGIN_JEDI_VIM

" Supertab
"^^^^^^^^^^
    if PLUGIN_SUPERTAB
" Mapping for these regularly switches back and forth, even during the same
"+session. I have left these here in case I ever feel it's better to reverse
"+them, or I decide on a different mapping altogether.
" TODO: Figure out what causes the reversal
" Answer: the last few times I tried, it seems like just the first time called
"+it's reversed. After that, it's normal. Probably don't need this then.
" UPDATE: another time it just kept doing it.... UGH!
"let g:SuperTabMappingForward = '<S-Tab>'
"let g:SuperTabMappingBackward = '<Tab>'
"
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
" What to use if no context match is found
let g:SuperTabContextDefaultCompletionType = "<c-p>"
"let g:SuperTabNoCompleteAfter = ['^', '\s', ',', ')', ']', '}', ':']
"let g:SuperTabNoCompleteBefore = []
"let g:SuperTabLongestEnhanced = 1
" TODO: figure out how to test for loaded plugin or existing function
"autocmd FileType *
"  \ if &omnifunc != '' |
"  \   call SuperTabChain(&omnifunc, "<c-p>") |
"  \ endif
    endif   " PLUGIN_SUPERTAB

" gitgutter
"^^^^^^^^^^^
    if PLUGIN_VIM_GITGUTTER
" gitgutter settings
    endif   " PLUGIN_VIM_GITGUTTER

" vim-signify
"^^^^^^^^^^^
    if PLUGIN_VIM_SIGNIFY
" vim-signify settings
    endif   " PLUGIN_VIM_SIGNIFY

" airline
"^^^^^^^^^
    if PLUGIN_VIM_AIRLINE
"**Options**
set laststatus=2
"*Integration with Tabline
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"*Integration with Fugitive and Lawrencium
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#branch#displayed_head_limit = 12
" to truncate all branch path sections but the last one
let g:airline#extensions#branch#format = 2
" use vcscommand.vim if available
"let g:airline#extensions#branch#use_vcscommand = 0
"*Integration with git-gutter, vim-signify, changesPlugin, and quickfixsigns
" enable/disable showing a summary of changed hunks under source control
let g:airline#extensions#hunks#enabled = 1
" enable/disable showing only non-zero hunks
let g:airline#extensions#hunks#non_zero_only = 1
" set hunk count symbols
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']
    endif   " PLUGIN_VIM_AIRLINE

" qualiabyte/vim-colorstepper
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    if PLUGIN_VIM_COLORSTEPPER
"**Mappings**
" Commented defaults, here in case I decide to change them
nmap <F6> <Plug>ColorstepPrev
nmap <F7> <Plug>ColorstepNext
nmap <S-F7> <Plug>ColorstepReload
    endif   " PLUGIN_VIM_COLORSTEPPER

" Molokai Theme - from readme
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    if PLUGIN_MOLOKAI
"  If you prefer the scheme to match the original monokai background color, put
"+ this in your .vimrc file:
"let g:molokai_original = 1
"  There is also an alternative scheme under development for color terminals
"+ which attempts to bring the 256 color version as " close as possible to the
"+ default (dark) GUI version. To access, add this to your .vimrc:
"let g:rehash256 = 1
    endif   " PLUGIN_MOLOKAI

" ConqueTerm
"^^^^^^^^^^^^
    if PLUGIN_CONQUETERM_VIM
"**Options**
let g:ConqueTerm_FastMode = 0
let g:ConqueTerm_PyVersion = 3
let g:ConqueTerm_PyExe = 'C:\Python35\python.exe'
let g:ConqueTerm_Syntax = 'python'
let g:ConqueTerm_Color = 1
"**Mappings**
nmap <leader>C :call Pycon()<CR>
"  bpython with Conque is disabled because it is too slow!
"+ However this is something to consider, or perhaps build
"+ from sorta-scratch.
"map <leader>b :ConqueTerm bpython<CR>
"  I am also disabling these useful mappings until I can find a way
"+ to activate them only when running conqueterm.
"  Ideas: add these to ConqueTerm filetype autoload, or
"+ put these in an autocommand
"imap <silent> <leader>m <Esc>Vy<C-w><C-w>p
"nmap <silent> <leader>m Vy<C-w><C-w>p
"vmap <silent> <leader>m y<C-w><C-w>p
"imap <silent> <leader>n <Esc><C-w><S-w>']0j
"nmap <silent> <leader>n <C-w><S-w>']0j
    endif   " PLUGIN_CONQUETERM_VIM

" Ultisnips
"^^^^^^^^^^^
    if PLUGIN_ULTISNIPS
"**Options**
" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
" This is sad I know, but for full cooperation with YCM, for the time being...
"+I tried setting both to Python 3 and YCM crashes! But like this they work
"+GREAT together!
"For Python/Jedi work (not YCM) Py3 is fine.
let g:UltiSnipsUsePythonVersion = 3
"**Mappings**
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"+I finally decided on putting these with mappings because they are
"+what tell the plugin what mappings to set.
let g:UltiSnipsExpandTrigger="j<tab>"
let g:UltiSnipsListSnippets="<F3>"
let g:UltiSnipsJumpForwardTrigger="<c-o>"
let g:UltiSnipsJumpBackwardTrigger="<c-i>"
" Trying to take advantage of the "expand or jump" combination, especially
"+since <tab> is taken by YCM, but haven't gotten it to work right yet.
"+the problem is executing the function from insert mode.
"inoremap <c-j> <C-o>:call UltiSnipsExpandOrJump()<CR>
" Mapping of UltiSnipsCallUnite function call to F12
inoremap <silent> <S-F12> <C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
nnoremap <silent> <S-F12> a<C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
" Use ONLY snippets in a single folder (ignore builtins, etc)
let g:UltiSnipsSnippetDirectories=[this_script_path . "/UltiSnips"]
" Set the private snippet storage folder; US will detect if it is an
"+absolute or relative path and act accordingly! So be careful with
"+expanding variables, append dot as needed to be explicit.
let g:UltiSnipsSnippetsDir=this_script_path . "/UltiSnips"
    endif   " PLUGIN_ULTISNIPS

" YouCompleteMe
"^^^^^^^^^^^^^^^
    if PLUGIN_YOUCOMPLETEME
"**Options**
let g:ycm_server_keep_logfiles=1
let g:ycm_use_ultisnips_completer=1
let g:ycm_auto_trigger=1
let g:ycm_confirm_extra_conf=1
let g:ycm_cache_omnifunc=0 "Default is 1"
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1
let g:ycm_collect_identifiers_from_comments_and_strings=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1
if has('win32')
    let g:ycm_rust_src_path = $USERPROFILE.'/repo/rust/src'
    let RUST_SRC_PATH = $USERPROFILE.'/repo/rust/src'
    let CARGO_HOME = $USERPROFILE.'/.cargo'
else
    let g:ycm_rust_src_path = $HOME.'/repo/rust/src'
    let RUST_SRC_PATH = $HOME.'/repo/rust/src'
    let CARGO_HOME = $HOME.'/.cargo'
endif

"let g:ycm_key_invoke_completion = '<C-.>' "Default=<C-Space>; changed for term
"                                         "except this doesn't work in Konsole!
"                                         "<C-Space> works in Konsole
nnoremap yd :<c-u>YcmCompleter GoTo<CR>
nnoremap yt :<c-u>YcmCompleter GetType<CR>
if has('win32')
    let g:ycm_path_to_python_interpreter="C:/Python35/python.exe"
    let g:ycm_server_python_interpreter="C:/Python35/python.exe"
    if has('win64')
        let g:ycm_global_ycm_extra_conf=$USERPROFILE."/OneDrive/vimfiles/.ycm_extra_conf.py"
    else
        let g:ycm_global_ycm_extra_conf=$USERPROFILE."/OneDrive/x86/vimfiles/.ycm_extra_conf.py"
    endif
    " white/blacklist for .ycm_extra_conf.py files. precede with ! if blacklist
    "+accepts wildcards *, ?, and [seq]
    let g:ycm_extra_conf_globlist=[$CXXPATH."/.ycm_extra_conf.py", $CPATH."/.ycm_extra_conf.py"]
else
    let g:ycm_path_to_python_interpreter="/usr/bin/python2"
    let g:ycm_global_ycm_extra_conf=$HOME."/.vim/.ycm_extra_conf.py"
    let g:ycm_extra_conf_globlist=[$CXXPATH."/.ycm_extra_conf.py", $CPATH."/.ycm_extra_conf.py"]
endif
    endif   " PLUGIN_YOUCOMPLETEME

" vim-racer
"^^^^^^^^^^^
    if PLUGIN_VIM_RACER
" rust omni-complete
" Part of YCM, or alone
"
" suggested in vim-racer README; not sure though
"set hidden
if has('win32')
    " uncomment if using standalone
    let g:racer_cmd = $USERPROFILE.'/OneDrive/vimfiles/bundle/vim-racer/racerd.exe'
    let RUST_SRC_PATH = $USERPROFILE.'/repo/rust/src'
    let CARGO_HOME = $USERPROFILE.'/.cargo'
else
    let g:racer_cmd = $HOME.'/.vin/bundle/vim-racer/racerd.exe'
    let RUST_SRC_PATH = $HOME.'/repo/rust/src'
    let CARGO_HOME = $HOME.'/.cargo'
endif
    endif   " PLUGIN_VIM_RACER

" Python_Pydoc.vim
"^^^^^^^^^^^^^^^^^^
    if PLUGIN_PYDOC
"**Options**
" Specify the command for pydoc
"let g:pydoc_cmd = 'python -m pydoc'
" Toggle highlight of searched word (default=1)
"let g:pydoc_highlight=0
" Open pydoc window with a set number of lines or fractional window size (default=10)
"+float values set fraction of total window size, integers give number of lines
"let g:pydoc_window_lines=15
    endif   " PLUGIN_PYDOC

" Unite
"^^^^^^^
    if PLUGIN_UNITE
" This is an amazing, versatile plugin that I doubt I will be leaving out ever!
" From help file: define special [unite] prefix key. They use 'f', but I like
"+the examples I found online where the guy uses space. Try that for now.
"**Options**
" Set recursive async command
let g:unite_source_rec_async_command="ls -a"
" Enable storing history of yanks
let g:unite_source_history_yank_enable = 1
"**Mappings**
" The prefix key
nnoremap [unite] <Nop>
nmap <space> [unite]
" View contents of all registers
nnoremap <silent> [unite]r  :<C-u>Unite
       \-buffer-name=register register<CR>
" View list of all mappings
nnoremap <silent> [unite]ma
       \:<C-u>Unite mapping<CR>
" Do recursive file list under current directory
nnoremap [unite]g :<C-u>Unite file_rec/async<cr>
" Recursive file list under current directory, insert mode;
nnoremap [unite]gg :<C-u>Unite -start-insert file_rec/async<cr>
" Content searching with grep, ack, or ag
nnoremap [unite]/ :<C-u>Unite grep:.<cr>
" Yank history
nnoremap [unite]y :<C-u>Unite history/yank<cr>
" Buffer switching
nnoremap [unite]b :<C-u>Unite -quick-match buffer<cr>
" Start a unite command
nnoremap [unite]u :<C-u>Unite
" Simple file browsing
nnoremap [unite]f :<C-u>Unite file<CR>
" Simple file browsing in insert mode
nnoremap [unite]ff :<C-u>Unite -start-insert file<CR>
" Biglist for cwd
nnoremap <silent> [unite]c  :<C-u>UniteWithCurrentDir
       \-buffer-name=files buffer bookmark file<CR>
" Biglist for cw-buffer
nnoremap <silent> [unite]d  :<C-u>UniteWithBufferDir
       \-buffer-name=files buffer bookmark file<CR>
" Some extra mappings I don't understand or don't need
"nnoremap <silent> [unite]o  :<C-u>Unite outline<CR>
"nnoremap <silent> [unite]f
"       \:<C-u>Unite -buffer-name=resume resume<CR>
"nnoremap <silent> [unite]me
"       \:<C-u>Unite output:message<CR>
"nnoremap  [unite]S  :<C-u>Unite source<CR>
"nnoremap <silent> [unite]s
"       \:<C-u>Unite -buffer-name=files -no-split
"       \jump_point file_point buffer_tab
"       \file_rec:! file file/new<CR>
    endif   " PLUGIN_UNITE

" Pyclewn
"^^^^^^^^^
    if PLUGIN_PYCLEWN
let g:pyclewn_terminal="konsole, -e"
let g:pyclewn_python="python3"
    endif   " PLUGIN_PYCLEWN

" xolox/vim-lua-ftplugin
"^^^^^^^^^^^^^^^^^^^^^^^^
    if PLUGIN_VIM_LUA_FTPLUGIN
" This plugin looks for buffer-defined ("b:") variables before using
"+these globally-defined ones.
" Uncomment to prevent plugin from setting the omnifunc option
" let g:lua_define_omnifunc = 0
" Uncomment to prevent plugin from setting the completefunc option
"let g:lua_define_completefunc = 0
" Uncomment to turn off syntax check on write;
" (manually check with :CheckSyntax)
"let g:lua_check_syntax = 0
" Uncomment to turn off undefined globals check on write;
" (manually check with :CheckGlobals)
"let g:lua_check_globals = 0
" Uncomment to force use of external interpreter over vim's Lua interface
"let g:lua_internal = 0
" Uncomment to use ill-advised omnicompletion
let g:lua_complete_omni = 1
" Blacklist certain modules from omnicompletion autoloading them
"+this is a comma-separated list of regular expressions
"let g:lua_omni_blacklist = []
" Only load standard Lua modules for omnicomplete; display skipped
"+modules with the :messages command.
"let g:lua_safe_omni_modules = 1
" Uncomment to prevent definition of completion mappings (', ", or .)
let g:lua_define_completion_mappings = 0
    endif   " PLUGIN_VIM_LUA_FTPLUGIN

" IncSearch
"^^^^^^^^^^^
    if PLUGIN_INCSEARCH
map [unite]/  <Plug>(incsearch-forward)
map [unite]?  <Plug>(incsearch-backward)
map [unite]g/ <Plug>(incsearch-stay)
    endif   " PLUGIN_INCSEARCH

" SnipMate
"^^^^^^^^^^
    if PLUGIN_VIM_SNIPMATE
"imap <C-J> <Plug>snipMateNextOrTrigger
"smap <C-J> <Plug>snipMateNextOrTrigger
"imap <C-K> <Plug>snipMateBack
"smap <C-K> <Plug>snipMateBack
"vmap <C-J> <Plug>snipMateVisual
"imap j<Tab> <Plug>snipMateTrigger
    endif   " PLUGIN_VIM_SNIPMATE

" AutoComplPop
"^^^^^^^^^^^^^^
    if PLUGIN_AUTOCOMPLPOP
"let g:acp_enableAtStartup = 1
"let g:acp_behaviorSnipmateLength = 1
"let g:acp_behaviorKeywordCommand = "\<C-N>"
"let g:acp_behaviorKeywordLength = 2
"let g:acp_completeoptPreview = 0
"let g:acp_completeOption = '.,w,b,k'
"let g:acp_ignorecaseOption = 1
    endif   " PLUGIN_AUTOCOMPLPOP

" Easytags
"^^^^^^^^^^
    if PLUGIN_VIM_EASYTAGS
let g:easytags_async = 1
let g:easytags_syntax_keyword = 'always'
let g:easytags_file = $HOME."/.vim/tags"
let g:easytags_dynamic_files = 1
let g:easytags_by_filetype = $HOME."/.vim/tags"
    endif   " PLUGIN_VIM_EASYTAGS

" xolox/vim-shell
"^^^^^^^^^^^^^^^^^
    if PLUGIN_VIM_SHELL
let g:shell_mappings_enabled = 0
inoremap <Leader>fs <C-o>:Fullscreen<CR>
nnoremap <Leader>fs :Fullscreen<CR>
inoremap <Leader>op <C-o>:Open<CR>
nnoremap <Leader>op :Open<CR>
    endif   " PLUGIN_VIM_SHELL

" vimwiki
"^^^^^^^^^
    if PLUGIN_VIMWIKI
" vimwiki settings
" NOTE: in a wiki, run command :echo vimwiki_list to see settings
let wiki = {}
" taken from default dictionary
let wiki.maxhi = 0
let wiki.css_name = 'style.css'
let wiki.auto_export = 0
let wiki.diary_index = 'diary'
let wiki.template_default = 'default'
let wiki.auto_toc = 0
let wiki.auto_tags = 0
let wiki.nested_syntaxes = {}
let wiki.diary_sort = 'desc'
let wiki.path = '/home/tommy/vimwiki/'
let wiki.diary_link_fmt = '%Y-%m-%d'
let wiki.template_ext = '.tpl'
let wiki.syntax = 'default'
let wiki.custom_wiki2html = ''
let wiki.automatic_nested_syntaxes = 1
let wiki.index = 'index'
let wiki.diary_header = 'Diary'
let wiki.ext = '.wiki'
let wiki.path_html = '/home/tommy/vimwiki_html/'
let wiki.temp = 0
let wiki.template_path = '/home/tommy/vimwiki/templates/'
let wiki.list_margin = -1
let wiki.diary_rel_path = 'diary/'
" Wiki directory structure
" vimwiki/ cloned at ssh://hg@bitbucket.org/pajamapants3000/my_vimwiki
if has('win32')
    let wiki.path = $USERPROFILE.'/vimwiki/'
    let wiki.path_html = $USERPROFILE.'/vimwiki/public_html/'
    let wiki.template_path = $USERPROFILE.'/vimwiki/templates/'
else
    let wiki.path = $HOME.'/vimwiki/'
    let wiki.path_html = $HOME.'/vimwiki/public_html/'
    let wiki.template_path = $HOME.'/vimwiki/templates/'
endif
"
let wiki.auto_export = 1
let wiki.auto_toc = 1
" start with 'c++' which doesn't get interpreted right as .c++; any others
let syntaxes = {'c++': 'cpp'}
let syntaxes.cpp = 'cpp'
let syntaxes.python = 'python'
let syntaxes.asm = 'asm'
let syntaxes.rust = 'rust'
let syntaxes.go = 'go'
let syntaxes.sh = 'sh'
let syntaxes.make = 'make'
let syntaxes.lua = 'lua'
let syntaxes.hla = 'hla'
let syntaxes.toml = 'toml'
let wiki.nested_syntaxes = syntaxes
" Add additional dictionaries to list for additional wikis
"let wiki2 = {}
" Global settings
let g:vimwiki_list = [wiki]
let g:vimwiki_hl_headers = 1
let g:vimwiki_use_calendar = 1
" Probably want to do this selectively; can do per file/buffer?
" Want off more often than on; just turn on before saving a specific buffer
" to get it to apply to that html page
let g:vimwiki_html_header_numbering = 0
" Default, 1, ignores newlines; 0 inserts <br />
"let g:vimwiki_list_ignore_newline = 0
" Heading colors
":hi VimwikiHeader1 guifg=#FF0000
":hi VimwikiHeader2 guifg=#00FF00
":hi VimwikiHeader3 guifg=#0000FF
":hi VimwikiHeader4 guifg=#FF00FF
":hi VimwikiHeader5 guifg=#00FFFF
":hi VimwikiHeader6 guifg=#FFFF00
    endif   " PLUGIN_VIMWIKI

" vim-notes
"^^^^^^^^^^^
    if PLUGIN_VIM_NOTES
" vim-notes settings
    endif   " PLUGIN_VIM_NOTES

" vim-orgmode
"^^^^^^^^^^^^^
    if PLUGIN_VIM_ORGMODE
" vim-orgmode settings
    endif " PLUGIN_VIM_ORGMODE

" vim-taskwarrior
"^^^^^^^^^^^^^^^^^
    if PLUGIN_VIM_TASKWARRIOR
" vimtaskwarrior settings
    endif " PLUGIN_VIM_TASKWARRIOR
    
" vim-snippets
"^^^^^^^^^^^^^^
if PLUGIN_VIM_SNIPPETS
    if !exists("g:snips_author")
        let g:snips_author = "Tommy Lincoln"
    endif

    if !exists("g:snips_email")
        let g:snips_email = "pajamapants3000@gmail.com"
    endif

    if !exists("g:snips_github")
        let g:snips_github = "https://github.com/pajamapants3000"
    endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"**************
" Switch windows, simpler keybindings
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
" Platform-specific
if has('win32')
    " Set quick access to most common folders - update as needed
    map <leader>dv :cd $USERPROFILE\vimfiles<CR>
    map <leader>dr :cd $USERPROFILE\repo<CR>
    map <leader>dow :cd $USERPROFILE\Downloads<CR>
    map <leader>doc :cd $USERPROFILE\Documents<CR>
    map <leader>dc :cd $CODEPATH<CR>
    map <leader>dC :cd $CODEPATH\C<CR>
    map <leader>dcxx :cd $CODEPATH\C++<CR>
    map <leader>dP :cd $CODEPATH\Python<CR>
    map <leader>dL :cd $CODEPATH\Lua<CR>
    map <leader>dJ :cd $CODEPATH\Java<CR>
    " Execute current script
    map <leader>e :!%:p<CR>
else
    " Set quick access to most common folders - update as needed
    map <leader>dv :cd $HOME/.vim<CR>
    map <leader>dr :cd $HOME/repo<CR>
    map <leader>dow :cd $HOME/downloads<CR>
    map <leader>doc :cd $HOME/documents<CR>
    map <leader>dc :cd $CODEPATH<CR>
    map <leader>dC :cd $CODEPATH/C<CR>
    map <leader>dcxx :cd $CODEPATH/C++<CR>
    map <leader>dP :cd $CODEPATH/Python<CR>
    map <leader>dL :cd $CODEPATH/Lua<CR>
    map <leader>dJ :cd $CODEPATH/Java<CR>
    " Execute current script
    map <leader>e :!%:p<CR>
    " Execute current script, pipe output to less
    map <leader>E :!%:p \| less<CR>
    " Toggle autoread - off for chmod
    map <leader>a :set autoread!<CR>
    " Make current script executable (modify later for auto-autoread-off?)
    map <leader>x :!sudo chmod +x %:p<CR>
endif
" Quick-escape/normal-mode
inoremap jj <Esc>
" Unindent
inoremap <leader><Enter><Space> <Enter><Left><Delete><Left><Delete><Left>
            \<Delete><Left><Delete>
inoremap <leader><Enter><Space><Space> <Enter><Left><Delete><Left><Delete>
            \<Left><Delete><Left><Delete><Left><Delete><Left><Delete>
            \<Left><Delete><Left><Delete>
inoremap <leader><Enter><Space><Space><Space> <Enter><Left><Delete><Left>
            \<Delete><Left><Delete><Left><Delete><Left><Delete><Left><Delete>
            \<Left><Delete><Left><Delete><Left><Delete><Left><Delete>
            \<Left><Delete><Left><Delete>
nnoremap <M-n> :call NumberToggle()<cr>
nnoremap <C-n> :call NumberToggleRel()<cr>
"***********************************************
" NOTE: List of mappings that can't hurt to use!
" <C-M> - default: a synonym for <CR> or + in Normal mode
" <C-;> - gvim
" <C-:> - gvim
" g[number] - like personal "Go" hotbar
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
" ctags (exuberant ctags) - mappings related to tags but no plugin;
" YouCompleteMe will include these tags for completion, but only those
"+tags whose language matches. So it might be a good idea to run ctags
"+with the --language-force option, especially since C and C++ are often
"+intermixed. Express language in quotes, e.g. --language-force="C";
" I'm not sure if I really need new mappings; the actual commands, are
"+quite easy! So for now I will just note them here and leave a space to
"+customize them if I ever feel the need.
" Jump to definition, first tag in list
"inoremap [Enter mapping here] <C-]>
" This is normally used to leave insert mode, but I have jj; this one
"+actually IS useful, since C-] moves forward.
" Move back through tag jumps
inoremap <C-S-]> <C-t>
" List all tag links, jump to specific one; can also specify tag
"inoremap [Enter mapping here] :<C-U>ts [identifier]
" Jump to next tag in list
"inoremap [Enter mapping here] :<C-U>tn
" Jump to previous  tag in list
"inoremap [Enter mapping here] :<C-U>tp
" Jump to first tag in list
"inoremap [Enter mapping here] :<C-U>tf
" Jump to last tag in list
"inoremap [Enter mapping here] :<C-U>tl
" Add tags based on included files/imported modules
" (still working on this one)
"nnoremap <c-i>io :<c-u>set tags+=$tags/stdio_h.ctags
"nnoremap <c-i>st :<c-u>set tags+=$tags/string_h.ctags
"nnoremap <c-i>li :<c-u>set tags+=$tags/stdlib_h.ctags
"nnoremap <c-i>ct :<c-u>set tags+=$tags/ctype_h.ctags
" ...etc.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"*************
:au FocusLost * :set norelativenumber
:au FocusGained * :set relativenumber
autocmd InsertEnter * :call NumberToggleRel()
autocmd InsertLeave * :call NumberToggleRel()

" Pick up desired filetypes and source any appropriate configuration
augroup filetypedetect
    " Mail
    autocmd BufNewFile,BufRead,BufEnter *mutt-* setf mail
    " VB.NET
    au BufNewFile,BufRead,BufEnter *.aspx.vb    setf vbnet
    " ASP.NET
    au BufNewFile,BufRead,BufEnter *.aspx       setf aspnet
    " Python
    au BufNewFile,BufRead,BufEnter *.py,*.py2,*.py3,*.pyw   setf python
    " Makefiles
    au BufNewFile,BufRead,BufEnter
                \ [Mm]akefile{,.*},*.{make,mak,mk}
                \ setf make
    " C
    au BufNewFile,BufRead,BufEnter *.[ch]       setf c
    " C++
    au BufNewFile,BufRead,BufEnter *.[ch]{xx,++,pp},*.C     setf cpp
    " Rust
    au BufNewFile,BufRead,BufEnter *.rst        setf rust
    " HTML
    au BufNewFile,BufRead,BufEnter *.htm{,l}    setf html
    " CSS
    au BufNewFile,BufRead,BufEnter *.css        setf css
    " HLA
    au BufNewFile,BufRead,BufEnter *.h{la,hf}   setf hla
    
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Final startup config - set config and theme
"*********************************************
set number
set relativenumber
" Font and colorscheme require some system-specific settings
if has('win32')
    "************************************
    " This version works on all non-LFS setups (so far; Fine as Windows setting.)
    set guifont=Source_Code_Pro_Medium:h13:cANSI
else
    "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    " This version worked on my LFS setup (seems ok on all Linux)
    set guifont=Source\ Code\ Pro\ 13
    set t_Co=256
    set background=dark
    "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
endif
" Here is a listing of my favorite colorschemes to choose from
"colorscheme base16-monokai
"colorscheme desert
"colorscheme Monokai
"colorscheme solarized
"colorscheme bmichaelsen
colorscheme luna
"colorscheme CodeFactoryv3
"colorscheme Chasing_Logic


