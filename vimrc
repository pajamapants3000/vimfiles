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
" Set the initial user configuration to the location of this script
let this_script_path = resolve(expand('<sfile>:p:h'))
let &runtimepath .= ',' . this_script_path
" Now add the usual user configuration
if has('win32')
    set rtp+=$USERPROFILE\vimfiles
else
    set rtp+=$HOME/.vim
endif
" Now add the "/after" paths
let &runtimepath .= ',' . this_script_path . '/after'
if has('win32')
    set rtp+=$USERPROFILE\vimfiles\after
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
    set rtp+=$HOMEPATH\vimfiles\bundle\vundle
    call vundle#begin('$HOMEPATH\vimfiles\bundle')
else
    set rtp+=~/.vim/bundle/vundle
    call vundle#begin('~/.vim/bundle')
endif

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" The bundles you install will be listed here
" Usage:
"   Some sources use Plugin, not Bundle; Plugin deprecated as of v0.10.2
"     Bundle 'klen/python-mode' - plugin hosted on GitHub
"     Bundle 'L9' - plugin from http://viim-scripts.org/vim/scripts.html (?)
"     Bundle 'git://git.wincent.com/commant-t.git' - Git plugin not on GitHub
"     Bundle 'file:///home/gmarik/path/to/plugin' - Bundle stored locally
"   Can add extra options to any plugin, e.g.
"     Bundle 'rstacruz/sparkup', {'rtp': 'vim/'} - sets runtime path (subdir
"     of plugin repo)
"     Bundle 'user/L9', {'name': 'newL9'} - Set plugin name
"    ****    ****    ****    ****    ****    ****    ****    ****    ****
" Begin list of plugins to add
"    ****    ****    ****
" Web Browser
" ???
" Airline - info bar at bottom, works better than powerline!
Bundle 'bling/vim-airline'
" NerdTree - file explorer
Bundle 'scrooloose/nerdtree'
" MiniBufExplorer - like tab bar but for buffers
"+unite kinda renders this unnecessary, unless I want to SEE the buffers
"+at all times, but they can never be removed (I think?). So, disabling for now.
"Bundle 'fholgado/minibufexpl.vim'
" gee-undo - visualize undo tree
Bundle 'sjl/gundo.vim'
" TaskList - ... task list
Bundle 'vim-scripts/TaskList.vim'
" ConqueTerm - Run a (os native) terminal from within vim.
Bundle 'pthrasher/conqueterm-vim'
" Unite - an awesome plugin that does many things!
Bundle 'Shougo/unite.vim'
" 'mksession on steroids'; will use when I feel like trying it out, seems cool
"Bundle 'xolox/vim-session'
" General vim plugin function library; used by xolox e.g. vim-session
" xolox has a lot of good stuff, keep trying some of his stuff!
Bundle 'xolox/vim-misc'
" AutoComplPop - automatically pops open completion list
"Bundle 'vim-scripts/AutoComplPop'
" Supertab - allows tabbing through completions like YCM; also, gets rid
"+of <Space> conflict with double-underscore mapping?
"Bundle 'ervandew/supertab'
" Matchit - extends % command to not only jump parens and brackets, but more!
Bundle 'tmhedberg/matchit'
" EasyMotion - As the name says, makes it easy to get from point a to b.
Bundle 'easymotion/vim-easymotion'
" IncSearch - adds great functionality to incremental search
Bundle 'haya14busa/incsearch.vim'
" IncSearch-EasyMotion - itegration of two plugins
Bundle 'haya14busa/incsearch-easymotion.vim'
" IncSearch-fuzzy - fuzzy search extension to incsearch
Bundle 'haya14busa/incsearch-fuzzy.vim'
" EasyOperator Plugins screw up color somehow! TODO: Fix this!
" EasyOperator-Line - makes it easy to perform operations on specific lines
"Bundle 'haya14busa/vim-easyoperator-line'
" EasyOperator-Phrase - makes it easy to perform operations on specific phrases
"Bundle 'haya14busa/vim-easyoperator-phrase'
"***************************
" Wrappers and integrations
"^^^^^^^^^^^^^^^^^^^^^^^^^^^
" NOTE: Ability to diff is dependent on external binary, such as GNUWin32
"+diff.exe available on PATH
" Fugitive - Git wrapper
Bundle 'tpope/vim-fugitive'
" Mercenary - Mercurial wrapper
Bundle 'phleet/vim-mercenary'
" Lawrencium - Another Mercurial wrapper - seems to offer a different subset
"+of commands than Mercenary
Bundle 'ludovicchabant/vim-lawrencium'
"************
" vim as IDE
"^^^^^^^^^^^^
" YouCompleteMe - Supposedly combines the best autocompletions for all
"+major programming languages, including Jedi for Python.
Bundle 'valloric/youcompleteme'
" Ultisnips - Provides (supposedly) awesome snippet support; fast, simple
Bundle 'SirVer/ultisnips'
" vim-addon-mw-utils - library for vim; SnipMate dependency
"Plugin 'MarcWeber/vim-addon-mw-utils'
" tlib_vim - library for vim; SnipMate dependency
"Plugin 'tomtom/tlib_vim'
"SnipMate - Another popular snippet plugin
"Bundle 'garbas/vim-snipmate'
" Vim-Snippets - a collection of snippets for both Ultisnips and SnipMate
Bundle 'honza/vim-snippets'
"*********
" C / C++
"^^^^^^^^^
" Alternate - switch between header and source files easily
Bundle 'vim-scripts/a.vim'
"********
" Lua
"^^^^^^^^
" Lua-ftplugin - Lua plugin by xolox
" Includes an optional omnicomplete I may try later
"Bundle 'xolox/vim-lua-ftplugin'
" Lua-omnicomplete - My own mod of one on vim.org; will be used by YCM
" This doesn't work very well, needs some work; gonna try xolox' omnicompl
" Bundle 'pajamapants3000/lua_omni'
" Lua52 Manual - reference for version 5.2
"Bundle 'whoisusingmyname/vim-lua-manual'
"********
" Python
"^^^^^^^^
" Jedi - awesome python autocompletion. Replace with YouCompleteMe?
"Bundle 'davidhalter/jedi-vim'
" Python_PyDoc.vim - Integrates PyDoc. Needs work in Windows, functionality
"+already exists anyway with....Jedi?
"Bundle 'fs111/pydoc.vim'
"******************************
" Colorscheme and theme related
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
" CSApprox - Helps colorschemes fit any terminal's available colors
Bundle 'godlygeek/csapprox'
" Colorstepper - Quick, easy cycling through colorschemes;
" My own modified version
Bundle 'pajamapants3000/vim-colorstepper'
" Thematic - Awesome control over visual elements!
"Bundle 'reedes/vim-thematic'
" Colorschemes
" for vim-colorschemes: such a long list that I keep my own shortened versions
"Bundle 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/base16-vim'
Bundle 'tomasr/molokai'
"********************************
" Additional Syntax Highlighting
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Bundle 'peterhoeg/vim-qml'
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
set tags+=./tags;/
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin-specific settings and mappings
"***************************************

" Nerdtree
"^^^^^^^^^^
"**Options**
let NERDTreeShowLineNumbers=0
"**Mappings**
map <F2> :NERDTreeToggle<CR>
map <leader>d :Bookmark
map <leader>b :OpenBookmark

" Gundo (gee-undo)
"^^^^^^^^^^^^^^^^^
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

" MiniBufExplorer
"^^^^^^^^^^^^^^^^^
" Dropped in favor of unite
"**Mappings**
"noremap <C-PageDown> :MBEbn<CR>
"noremap <C-PageUp> :MBEbp<CR>

" tasklist.vim
"^^^^^^^^^^^^^^
"**Options**
"let g:tlWindowPosition = 1 "0 is default, window on top. 1 -> window on bottom
""tlTokenList: List of tokens that tasklist searches for
"+default = ["FIXME", "TODO", "XXX"]
"let g:tlTokenList = ['FIXME', 'TODO', 'XXX']
"**Mappings**
"map <leader>t :TaskList<CR> "mapped by default

" localrc
"^^^^^^^^^
" Sources any configuration file of the correct name in all parent directories
"+in the path, in order so that the most recent sourced is the nearest parent
"+or current directory. This is a very simple plugin that also allows
"+filetype-specific settings. The two configurable options are the filename
"+for the configurations, and the format for filetype-specific settings.
"let g:localrc_filename=".local.vimrc"
"let g:localrc_filetype='/^\.local\..*\<%s\>.*\.vimrc$'

" Jedi
"^^^^^^
"**Options**
"let g:jedi#force_py_version = 3
"let g:jedi#completions_command = '<C-Space>'

" Supertab
"^^^^^^^^^^
"
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

" airline
"^^^^^^^^^
"**Options**
set laststatus=2

" qualiabyte/vim-colorstepper
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
"**Mappings**
" Commented defaults, here in case I decide to change them
"nmap <F6> <Plug>ColorstepPrev
"nmap <F7> <Plug>ColorstepNext
"nmap <S-F7> <Plug>ColorstepReload

" Molokai Theme - from readme
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
"  If you prefer the scheme to match the original monokai background color, put
"+ this in your .vimrc file:
"let g:molokai_original = 1
"  There is also an alternative scheme under development for color terminals
"+ which attempts to bring the 256 color version as " close as possible to the
"+ default (dark) GUI version. To access, add this to your .vimrc:
"let g:rehash256 = 1

" ConqueTerm
"^^^^^^^^^^^^
"**Options**
let g:ConqueTerm_FastMode = 0
let g:ConqueTerm_PyVersion = 3
let g:ConqueTerm_PyExe = 'C:\Python34\python.exe'
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

" Ultisnips
"^^^^^^^^^^^
"**Options**
" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
" This is sad I know, but for full cooperation with YCM, for the time being...
"+I tried setting both to Python 3 and YCM crashes! But like this they work
"+GREAT together!
"For Python/Jedi work (not YCM) Py3 is fine.
let g:UltiSnipsUsePythonVersion = 2
"**Mappings**
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"+I finally decided on putting these with mappings because they are
"+what tell the plugin what mappings to set.
let g:UltiSnipsExpandTrigger="j<tab>"
let g:UltiSnipsListSnippets="<F3>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" Trying to take advantage of the "expand or jump" combination, especially
"+since <tab> is taken by YCM, but haven't gotten it to work right yet.
"+the problem is executing the function from insert mode.
"inoremap <c-j> <C-o>:call UltiSnipsExpandOrJump()<CR>
" Mapping of UltiSnipsCallUnite function call to F12
inoremap <silent> <S-F12> <C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
nnoremap <silent> <S-F12> a<C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
" Use ONLY snippets in a single folder (ignore builtins, etc)
let g:UltiSnipsSnippetDirectories=[$CODEPATH."/vim/UltiSnips"]
" Set the private snippet storage folder; US will detect if it is an
"+absolute or relative path and act accordingly! So be careful with
"+expanding variables, append dot as needed to be explicit.
let g:UltiSnipsSnippetsDir=$CODEPATH."/vim/UltiSnips"

" YouCompleteMe
"^^^^^^^^^^^^^^^
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
let g:ycm_key_invoke_completion = 'QQ' "Default=<C-Space>; changed for term
nnoremap yd :<c-u>YcmCompleter GoTo<CR>
nnoremap yt :<c-u>YcmCompleter GetType<CR>
if has('win32')
    let g:ycm_path_to_python_interpreter="C:/Python27/python.exe"
    let g:ycm_global_ycm_extra_conf=$USERPROFILE."/vimfiles/.ycm_extra_conf.py"
    " white/blacklist for .ycm_extra_conf.py files. precede with ! if blacklist
    "+accepts wildcards *, ?, and [seq]
    let g:ycm_extra_conf_globlist=[$CXXPATH."/.ycm_extra_conf.py", $CPATH."/.ycm_extra_conf.py"]
else
    let g:ycm_path_to_python_interpreter="/usr/bin/python2"
    let g:ycm_global_ycm_extra_conf=$HOME."/.vim/.ycm_extra_conf.py"
    let g:ycm_extra_conf_globlist=[$CXXPATH."/.ycm_extra_conf.py", $CPATH."/.ycm_extra_conf.py"]
endif

" Python_Pydoc.vim
"^^^^^^^^^^^^^^^^^^
"**Options**
" Specify the command for pydoc
"let g:pydoc_cmd = 'python -m pydoc'
" Toggle highlight of searched word (default=1)
"let g:pydoc_highlight=0
" Open pydoc window with a set number of lines or fractional window size (default=10)
"+float values set fraction of total window size, integers give number of lines
"let g:pydoc_window_lines=15

" Unite
"^^^^^^^
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

" Pyclewn
"^^^^^^^^^
let g:pyclewn_temrinal="konsole, -e"
let g:pyclewn_python="python3"

" xolox/vim-lua-ftplugin
"^^^^^^^^^^^^^^^^^^^^^^^^
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

" IncSearch
"^^^^^^^^^^^
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" SnipMate
"^^^^^^^^^^
"imap <C-J> <Plug>snipMateNextOrTrigger
"smap <C-J> <Plug>snipMateNextOrTrigger
"imap <C-K> <Plug>snipMateBack
"smap <C-K> <Plug>snipMateBack
"vmap <C-J> <Plug>snipMateVisual
"imap j<Tab> <Plug>snipMateTrigger

" AutoComplPop
"^^^^^^^^^^^^^^
"let g:acp_enableAtStartup = 1
"let g:acp_behaviorSnipmateLength = 1
"let g:acp_behaviorKeywordCommand = "\<C-N>"
"let g:acp_behaviorKeywordLength = 2
"let g:acp_completeoptPreview = 0
"let g:acp_completeOption = '.,w,b,k'
"let g:acp_ignorecaseOption = 1

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
    map <leader>dc :cd $SYNCPATH\Copy\Code<CR>
    map <leader>dC :cd $SYNCPATH\Copy\Code\C<CR>
    map <leader>dcxx :cd $SYNCPATH\Copy\Code\C++<CR>
    map <leader>dP :cd $SYNCPATH\Copy\Code\Python<CR>
    map <leader>dL :cd $SYNCPATH\Copy\Code\Lua<CR>
    map <leader>dJ :cd $SYNCPATH\Copy\Code\Java<CR>
    " Execute current script
    map <leader>e :!%:p<CR>
else
    " Set quick access to most common folders - update as needed
    map <leader>dv :cd $HOME/.vim<CR>
    map <leader>dr :cd $HOME/repo<CR>
    map <leader>dow :cd $HOME/downloads<CR>
    map <leader>doc :cd $HOME/documents<CR>
    map <leader>dc :cd $SYNCPATH/Copy/Code<CR>
    map <leader>dC :cd $SYNCPATH/Copy/Code/C<CR>
    map <leader>dcxx :cd $SYNCPATH/Copy/Code/C++<CR>
    map <leader>dP :cd $SYNCPATH/Copy/Code/Python<CR>
    map <leader>dL :cd $SYNCPATH/Copy/Code/Lua<CR>
    map <leader>dJ :cd $SYNCPATH/Copy/Code/Java<CR>
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

