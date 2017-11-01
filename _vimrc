" File ~/.vimrc (Linux) or ~/_vimrc (Windows)
"***********************************************************
" This is a generic vimrc, whose sole purpose is to link
"+to the particular vimrc to be used
" We assume an environment variable to Google Drive exists,
"+which is where the vim files are stored. This way, we can
"+apply this configuration with the minimum of changes to
"+any system.
" Essentially this is a wrapper to the vimrc that takes care
"+of system-specific as well as session-specific configuration.
" Make sure either VIMFILES or DRIVEPATH are set!
"***********************************************************

" set specific configuration to be used
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
" Current options are "default", "c", "lua", "python", "mutt", "none", and "min"
" If nothing is set here, we use a default (currently "default")
"

"++++++++++++++++++++++++++++++++++++++++++++++"
"\\\\\\\\\\\\\\\\\\\\\\|///////////////////////"
" *** This is our main configuration option! ***
let config_type="default"
"//////////////////////|\\\\\\\\\\\\\\\\\\\\\\\"
"++++++++++++++++++++++++++++++++++++++++++++++"

"**************************************************************
" You usually won't have to change anything else in this file!
"**************************************************************

" Set default configuration (in case config_type not set)
let def_config_type="default"

if empty(config_type)
    let config_type=def_config_type
endif

" Set path to the vim files
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
" First try environment variable VIMFILES, in case the vim files
"+repo is cloned directly somewhere and we are working from that.
" Otherwise, use USERPROFILE or HOME, depending on whether we are
" in Windows (USERPROFILE), which are always set to the user's home
" directory.
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
let s:PlatformIndependentHome =
        \ has('win32') ? substitute($USERPROFILE, "\\", "/", "g") : $HOME
let s:PlatformIndependentVimFolder =
        \ has('win32') ? 'vimfiles' : '.vim'
let s:LocalConfig =
      \ s:PlatformIndependentHome . '/' . s:PlatformIndependentVimFolder
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
" Source the appropriate vimrc
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
execute "source" s:LocalConfig . "/" . "vimrc"
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
" Add configuration that can generalize to all systems
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
" set titlebar string to show config type
" +doesn't work+
"    execute 'set titlestring=' . expand('%') . &ro ? '=' : ''
"    execute 'set titlestring=' . &titlestring . &mod ? '+' : ''
"    execute 'set titlestring=' . &titlestring . &ma ? '-' : ''
"    execute 'set titlestring=' . &titlestring . pathshorten(getcwd())
"    set titlestring+=' | VIM'
"    set titlestring+=' | '.config_type
"    execute 'set titlestring=' . &titlestring . " | VIM"
"    execute 'set titlestring=' . &titlestring . " | " . config_type
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
" Add desired modifications, specific to this computer
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
set guifont=Source_Code_Pro_Light:h11:cANSI:qDRAFT
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

