" ============ GUNGNIR ===========
"
" Copyright 2017, Mike DeFrancis. mike(AT)defrancis(dot)org
"
" @Warrantee
" There is no warrantee provided for this software, not even an implied
" warrantee regarding fitness for a particular use. I am not responsible
" for anything bad that happens when you use this .vimrc or any of the
" corresponding scripts from the containing repository. FOR INSTANCE:
" I DISABLED SWAP FILES. THEY ARE NOT NECESSARY IF YOU REMEMBER TO SAVE OFTEN.
" I AM NOT RESPONSIBLE FOR YOUR LOST DATA!
"
" @Description
" GUNGNIR is a heavily edited vim configuration.
" Sometimes, Stock vim will do.
" Sometimes, you need the spear of odin.
" All of the modifications are contained within this .vimrc (except plugins)
" This has been tested within gnome-terminal on ubuntu 16.04 but may work on
" other systems. This version of vim uses Ctrl+a for switching to normal mode
" and a to switch to insert mode. In order to make this possible, your bashrc must be
" modified to allow remapping of Ctrl-a. To do this, add the following line to 
" your .bashrc file and then resource it.
"
" WARNING: You MUST add the following line to your .vimrc:
" stty -ixon
"
" GOAL:
" GUNGNIR is my personal vim configuration. You are welcome to try it out for yourself.
"
" NOTE:
"       The KEY REMAPPINGS listed BELOW may be OUT OF DATE (I am a bit lazy)
"       LOOK AT THE SOURCE IN THIS FILE TO BE SURE.
"
" CONTROL KEY REMAPPINGS FOR ALL MODES:
"
"       Ctrl+a: goto normal/insert mode, accordingly
"       Ctrl+q:   save and quit (one window/tab at a time)
"       Ctrl+s:   save
"       Ctrl+e:   edit (open) a file
"       Ctrl+x:   cut
"       Ctrl+c:   copy
"       Ctrl+v:   paste
"       Ctrl+d:   delete
"       Ctrl+z:   undo
"       Ctrl+r:   redo
"       Ctrl+o:   toggle line numbers
"       Ctrl+w:   new window
"       Ctrl+y:   new horozontal window
"       Ctrl+b:   new tab
"       Ctrl+f:   find in open file (same as /)
"       Ctrl+w:   insert newline
"       Ctrl+t:   toggle mouse
"       Ctrl+u:   toggle insert paste mode
"       Ctrl+g:   toggle nerdtree
"       Ctrl+p:   paste register p
"       Ctrl+{h,j,k,l}: go left, down, up, right by 3 lines at a time
"       Ctrl+Left: go to window to the Left (requires easymotion plugin)
"       Ctrl+Right:go to window to the Right(requires easymotion plugin)
"       Ctrl+Up:   go to window to the Up   (requires easymotion plugin)
"       Ctrl+Down: go to window to the Down (requires easymotion plugin)
"
" LETTER KEY REMAPPINGS FOR NORMAL MODE:

"       a              insert mode
"       ff             find word under cursor in open file
"       gg/q           start/stop recording macro g
"       fd             ctrlp find in files
"       ww             show whitespace characters
"       cc             show current working directory
"       ls             show current working directory in nerdtree
"       cd             change directory using :cd command
"       bb             go back one directory and show in nerdtree
"       gt             goto top of file
"       gb             goto bottom of file
"       gs             goto start of line
"       gl             goto start of line (exclude whitespace)
"       ga             insert at the of current line
"       cw             change word under cursor
"       ci{'"{[(}      change inside quotes/braces/etc.
"       b+{qwerty}     create qwerty bookmark
"       dd             cut line
"       de             cut to end of current line
"       dw             delete word under cursor
"       hm             toggle hex editing mode (DANGEROUS FOR NON BIN FILES!)
"       pp             open previous files
"       cp             copy current line into p register
"
" SHIFT KEY REMAPPINGS FOR NORMAL MODE:
"
"       Shift+z+z:   close all windows and tabs without saving
"       Shift+x+x:   close all windows and tabs and save all
"       Shift+{qwerty} go to qwerty bookmark
"       Shift+p        toggle colors (dark/light)
"       Shift+d        find in files using ACK/AG (REQUIRES PLUGIN)
"       Shift+f        find and replace in current file
"       Shift+u        edit notes file ~/.notes.txe
"       Shift+i        toggle search highlight
"       Shift+v        enter visual line/block mode
"       Shift+b        tabedit
"       Shift+c        set current working directory to current file (REQUIRES NERDTREE PLUGIN)
"       Shift+g        run macro g
"       Shift+a        back to prev location
"       Shift+s        forward to next location
"       Shift+h        toggle line highlight
"       Shift+l        toggle background color (light/dark)
"       shift+j        tjump to definitions for text under cursor (ctags)
"       Shift+n        go to previous search result in file
"       Shift+o        set write permissions on current file using sudo
"       Shift+Left     go to previous tab
"       Shift+Right    go to next tap
"       Shift+Up       go up 6 lines
"       Shift+Down     go down 6 lines
"       Shift+Tab      unindent (visual mode)
"
" OTHER KEY REMAPPINGS:
"
"       Alt+Left    back
"       Alt+Right   forward
"       Tab         autocomplete text (insert mode)
"       Tab         toggle syntastic (normal mode)
"       Tab         indent (visual mode)
"       Space       toggle center-scroll (normal mode)
"       ;           Enter command mode (:<command)
"       '           Run external command (:!<command>)
"       Ctrl+o      Insert snippet (for/while loop/struct/etc.) (insert mode)
"       ,           Leader
"       ,c<Space>   Toggle comment/uncomment selected line(s)
"
" SOME USEFUL COMMANDS NOT MAPPED:
"
"       :<number>  Goto line number
"       :make      Run make and capture output
"       :cn        Jump to file containing make error
"       :cc        Show make error message
"       :Delete    delete file in buffer
"       :SudoEdit  edit a file using sudo
"       :Find      use find and output results to quickfix window
"       :Chmod     change the permission of the current file
"
" PLUGINS:
"   I am using Vundle to install my plugins
"   THERE IS A SEPARATE VERSION OF THIS FILE FOR THE PLUGINS BECAUSE IT CONTAINS PLUGIN REMAPS
"   Please look through this file to see which plugins have been added
"   (they are all included in one block of text down there so it should be
"   obvious)
"
"
" PLEASE NOT THAT:
"  - I love vim, but I am no vim guru. I needed to make it usable fast.
"  - I am removing some regular vim functionality
"    (usability is more important than features I hardly use)
"  - This vim may be used with or without plugins. The plugin version has remappings for the plugins.
"  - vim is designed to use <ESC>: (command) or <ESC>(command) for much of 
"    its regular functionality. I find this clunky, because" A) it requires memorizing a lot of key combinations
"     B) it requires a lot of typing 
"    THEREFORE, I created a lot of ctrl+{key} shortcuts
"  - I am not responsible for any pain in your pinky caused by use of 
"    these ctrl+{key} shortcuts!
"  - Feel free to enable the extra plugins and try them out, add your own,
"    etc. Some plugins are really awesome like syntastic but very slow.
"    so I don't always use them. If someone thinks that I should add one to this
"    list, please send me a message. I appreciate input.

" ______________________________________________________________ "
" ==== PLUGINS ====
set nocompatible
filetype off
set exrc

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" All plugins using vundle
Plugin 'VundleVim/Vundle.vim'

" useful tools for renaming files, etc.
" :Rename, :Mkdir, :Delete, :Wall, :SudoEdit, :SudoWrite, :Move, :Chmod,
" :Find, etc.
" Plugin 'tpope/vim-eunuch'

" search index is pretty much required if you want to study large c files
" Plugin 'google/vim-searchindex'
" having a built-in search inside of vim is also pretty much required if you
" want to be able to use it for large projects
" Plugin 'mileszs/ack.vim'

Plugin 'scrooloose/nerdcommenter'

" Plugin 'itchyny/lightline.vim'
"Plugin 'vim-scripts/L9'
"Plugin 'tpope/vim-fugitive'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"
"SUPER AWESOME EVERYONE SHOULD USE NERDTREE
" Plugin 'scrooloose/nerdtree'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'airblade/vim-gitgutter'
" DANGERWILLROBINSON syntastic is slow and often shows 
" errors that are not really there in complex makefile systems
" Plugin 'scrooloose/syntastic'
"Plugin 'christoomey/vim-conflicted'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'mattn/emmet-vim'
"Plugin 'sjl/gundo.vim'

" SUPER AWESOME EVERYONE SHOULD USE EASYMOTION

" Plugin 'easymotion/vim-easymotion'

"Plugin 'tpope/vim-surround'
"
" SUPER AWESOME EVERYONE SHOULD USE CTRLP

Plugin 'kien/ctrlp.vim'

"Plugin 'godlygeek/tabular'
"Plugin 'SirVer/ultisnips'

" ==== PLUGIN THEMES ====
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'vim-scripts/darktango.vim'
"Plugin 'jonathanfilip/vim-lucius'
Plugin 'tomasr/molokai'
" Plugin 'fmoralesc/molokayo'
" Plugin 'morhetz/gruvbox'
" ==== END PLUGIN THEMES ====

" ======== SNIPMATE ==
"SnipMate Plugins (code snippet completion)
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'
" Plugin 'honza/vim-snippets'
" =================

"press tab to autocomplete anything you are typing.
"This one is awesome
" Plugin 'ervandew/supertab'

" ==== PLUGIN SYNTAXES ====
"Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'hdima/python-syntax'
"Plugin 'othree/yajs.vim'
"Plugin 'mitsuhiko/vim-jinja'
"Plugin 'evanmiller/nginx-vim-syntax'
" === END PLUGIN SYNTAXES ====

" STAGING LIST TO TRY LATER:
"better block comments than already in here?
"Plugin 'tomtom/tcomment_vim'
"
"shows git changes in the corresponding files!
"Plugin 'airblade/vim-gitgutter'
"
"python autocomplete:
"THIS IS COOL BUT THERE ARE SOME ISSUES WITH IT SOMETIMES
"Plugin 'Valloric/YouCompleteMe'


call vundle#end()
filetype plugin indent on

" PLUGIN CONFIGURATIONS...
colorscheme molokai

" let g:gruvbox_contrast_dark ='hard'
" let g:gruvbox_contrast_light ='hard'
" let g:gruvbox_number_column_dark ='blue'

" ==== NERDTREE ====
" let NERDTreeIgnore = ['\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*', '[a-zA-Z]*egg[a-zA-Z]*', '[a-zA-Z]*cache[a-zA-Z]*']
" let NERDTreeShowHidden=1
" let g:NERDTreeWinPos="left"
" let g:NERDTreeDirArrows=0

" ==== Syntastic ====
" Only use syntastic when there is a problem. Set it to passive by default.
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_mri_args = "--config=$HOME/.jshintrc"
" let g:syntastic_python_checkers = [ 'pylint', 'python']
" let g:syntastic_python_checkers = [ 'pylint', 'flake8', 'pep8', 'pyflakes', 'python']
"let g:syntastic_yaml_checkers = ['jsyaml']
"let g:syntastic_html_tidy_exec = 'tidy5'

" ==== Snips ====
"let g:UltiSnipsExpandTrigger="<A-ENTER>"
"let g:UltiSnipsJumpForwardTrigger="<A-ENTER>"
"let g:UltiSnipsJumpBackwardTrigger="<A-BACKSPACE>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

" ==== Easymotion ====
" let g:EasyMotion_do_mapping = 0
" let g:EasyMotion_smartcase = 1
" nmap f <Plug>(easymotion-s)

" nmap <silent> <C-Up> :wincmd k<CR>
" nmap <silent> <C-Down> :wincmd j<CR>
" nmap <silent> <C-Left> :wincmd h<CR>
" nmap <silent> <C-Right> :wincmd l<CR>
" inoremap <silent> <C-Up> <ESC>:wincmd k<CR>
" inoremap <silent> <C-Left> <ESC>:wincmd h<CR>
" inoremap <silent> <C-Down> <ESC>:wincmd j<CR>
" inoremap <silent> <C-Right> <ESC>:wincmd l<CR>
" nnoremap <silent> <C-Up> <ESC>:wincmd k<CR>
" nnoremap <silent> <C-Left> <ESC>:wincmd h<CR>
" nnoremap <silent> <C-Down> <ESC>:wincmd j<CR>
" nnoremap <silent> <C-Right> <ESC>:wincmd l<CR>

"NERDCOMMENTER
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

cnoreabbrev Ack Ack!
cnoreabbrev ag Ack!

let g:ctrlp_map = 'fd'
" map <C-g> <ESC>:NERDTreeToggle %<CR><ESC>:wincmd l<CR>

" nnoremap <C-i> :SyntasticToggleMode<CR>

nnoremap fp <ESC>:Ack! <search> -G ".*(<filepat>)$" 
vnoremap fp <ESC>:Ack! <search> -G ".*(<filepat>)$" 
cnoremap fp <ESC>:Ack! <search> -G ".*(<filepat>)$" 

nnoremap <S-d> <ESC>:Ack! 
vnoremap <S-d> <ESC>:Ack!

" nnoremap <S-c> <ESC>:cd %:p:h<CR><ESC>:wincmd l<CR><ESC>:pwd<CR>
" noremap ls <ESC>:NERDTree .<CR><ESC>:wincmd l<CR>

" ==== END PLUGINS ====
 

" ______________________________________________________________ "
" ==== PROPERTIES ====

"colorscheme solarized
syntax enable
set background=dark
set guifont=Monospace\ 10
set fillchars+=vert:\$
set ruler
set hidden
set number
set laststatus=2
set smartindent
set st=4 sw=4 et
set shiftwidth=4
set tabstop=4
"let &colorcolumn="80"
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

" I AM COMMENTING OUT THIS LINE BECAUSE I WANT USER TO DECIDE SIZE OF VIM WINDOW
":set lines=999 columns=999
" more hacks
" DANGER WILL ROBINSON! I do not like the backup files vim creates. It is a clunky system and causes problems.
" I am disabling the backup files here. Do not break your files. Save them using git or something frequently!
set history=1000
set undolevels=1000
set title
set nobackup
" this is an awesome one. makes all '/' searches non-case sensitive unless the search contains an upper case letter
set ignorecase smartcase 
set incsearch
set autoindent smartindent

" DANGER WILL ROBINSON! SWAP FILES ARE REALLY ANNOYING WHEN SOMETHING CLOSES
" IMPROPERLY AND VIM THINKS IT IS STILL OPEN.
" SAVE AND BACKUP YOUR WORK MANUALLY ALL OF THE TIME INSTEAD!
set noswapfile
set clipboard=unnamedplus

" maybe move these somewhere else
let g:ackhighlight = 1
let g:ackpreview = 1

" colon = semicolon
nnoremap ; :
" leader key is comma
let mapleader=","

" ______________________________________________________________ "
" ==== KEY BINDINGS ====



"===========
"""" BASICS (KNOW ALL OF THESE)
" in general using Control+Key mappings to avoid
" clobbering existing functionality of vim
" CLOSE ALL WINDOWS AND BUFFERS
"close all without save
nnoremap <S-z><S-z> <ESC>:qa!<CR>
"save and close all
nnoremap <S-x><S-x> <ESC>:xa!<CR>
" INSERT AND REGULAR MODE SWITCH
nnoremap a i
inoremap <C-a> <ESC>l
nnoremap <C-a> <ESC><ESC>l
vnoremap <C-a> <ESC>l
cnoremap <C-a> <C-c><ESC><ESC>l
" FIND
nnoremap <C-f> /
" search for word under cursor with ff
nnoremap ff gd
vnoremap ?? *
" nnoremap fd gd
" EDIT AND DELETE
nnoremap <C-e> <ESC>:edit 
inoremap <C-e> <ESC>:edit
vnoremap <C-e> <ESC>:edit
cnoremap <C-e> <ESC>:edit
nnoremap <C-d> <Delete>
inoremap <C-d> <Delete>
vnoremap <C-d> <Delete>
cnoremap <C-d> <Delete>
" SAVE AND QUIT
nnoremap <C-q> <ESC>:x!<CR>
inoremap <C-q> <ESC>:x!<CR>
vnoremap <C-q> <ESC>:x!<CR>
cnoremap <C-q> <ESC>:x!<CR>
nnoremap <C-s> <ESC>:w<CR>
inoremap <C-s> <ESC>:w<CR>l
vnoremap <C-s> <ESC>:w<CR>
cnoremap <C-s> <ESC>:w<CR>
" UNDO AND REDO
inoremap <C-z> <ESC>:undo<CR>
nnoremap <C-z> <ESC>:undo<CR>
vnoremap <C-z> <ESC>:undo<CR>
cnoremap <C-z> <ESC>:undo<CR>
nnoremap <C-r> <ESC>:redo<CR>
inoremap <C-r> <ESC>:redo<CR>
vnoremap <C-r> <ESC>:redo<CR>
cnoremap <C-r> <ESC>:redo<CR>
" COPY, CUT, PASTE, REDO, UNDO
"using control +z, x, c, v, r for undo, cut, copy, paste, redo
"like all other programs
"note that for copy paste compatibility with other editors is broken
"because vim uses yank instead of copy
"also note that you need to be in visual mode to block copy
vnoremap <C-c> y'] `]
nnoremap <C-c> <Home>y$
inoremap <C-c> <ESC><Home>y$i
set pastetoggle=<C-u>
"TODO: CHANGE FIX PASTE MODE VERSIONS OF OTHER THINGS
inoremap <C-v> <ESC>pi<Right>
nnoremap <C-v> <ESC>p
vnoremap <C-v> <ESC>pv
vnoremap <C-x> d
nnoremap <C-x> <Home>d$
nnoremap <C-x> <Home>d$

"===========
"""" MOVEMENT
" arrow keys
nnoremap <silent> <A-Up> 128<Up>
nnoremap <silent> <A-Down> 128<Down>
vnoremap <silent> <A-Up> 128<Up>
vnoremap <silent> <A-Down> 128<Down>
inoremap <silent> <A-Up> <ESC>128<Up>i
inoremap <silent> <A-Down> <ESC>128<Down>i
nnoremap <silent> <S-Up> 10<Up>
nnoremap <silent> <S-Down> 10<Down>
inoremap <silent> <S-Up> <ESC>10<Up>i
inoremap <silent> <S-Down> <ESC>10<Down>i
nnoremap <silent> <A-PageUp> 4<PageUp>
nnoremap <silent> <A-PageDown> 4<PageDown>
vnoremap <silent> <A-PageUp> 4<PageUp>
vnoremap <silent> <A-PageDown> 4<PageDown>
inoremap <silent> <A-PageUp> 4<PageUp>
inoremap <silent> <A-PageDown> 4<PageDown>

" Shift nav
vnoremap <C-j> 64j
nnoremap <C-j> 64j
vnoremap <C-k> 64k
nnoremap <C-k> 64k

" tab switch
vnoremap <C-h> <ESC>gT
nnoremap <C-h> <ESC>gT
vnoremap <C-l> <ESC>gt
nnoremap <C-l> <ESC>gt

" Ctrl nav
vnoremap <S-j> 8j
nnoremap <S-j> 8j
vnoremap <S-k> 8k
nnoremap <S-k> 8k

vnoremap <S-l> 8l
nnoremap <S-l> 8l
vnoremap <S-h> 8h
nnoremap <S-h> 8h

"===========
" FILE // WINDOW NAVIGATION
" windows and tabs
nnoremap <C-w> <ESC>:vsplit<CR><ESC>:wincmd l<CR>
vnoremap <C-w> <ESC>:vsplit<CR><ESC>:wincmd l<CR>
cnoremap <C-w> <ESC>:vsplit<CR><ESC>:wincmd l<CR>
nnoremap <C-y> <ESC>:split<CR><ESC>:wincmd j<CR>
vnoremap <C-y> <ESC>:split<CR><ESC>:wincmd j<CR>
cnoremap <C-y> <ESC>:split<CR><ESC>:wincmd j<CR>
"tabs
nnoremap <C-b> <ESC>:tabedit<CR>  
vnoremap <C-b> <ESC>:tabedit<CR>  
cnoremap <C-b> <ESC>:tabedit<CR>  
inoremap <C-b> <ESC>:tabedit<CR>  
" prev and next location
nnoremap <S-a> <C-o>
nnoremap <S-s> <Tab>

"===========
" LINE MANIPULATIONS
" delete to end of line with de
nnoremap de d$
" indent things with tab in visual mode
vnoremap <Tab>   >><ESC>gv
vnoremap <S-Tab> <<<ESC>gv
" OVERRIDE STANDARD G KEY MOVEMENT BECAUSE I LIKE THIS FUNCTIONALITY MORE
" making it slightly easier to go to the start and end of real text in a line
" (ignore whitespace)
nnoremap ge g_
" nnoremap gl _
" nnoremap gs _
nnoremap gs 0i
nnoremap gf - 
nnoremap ga g_i<Right>
vnoremap ge g_
vnoremap gs _
vnoremap gf - 
" CHANGE IN WORD
nnoremap cw ciw
" make yanking a bit easier
" nnoremap yw yiw
" nnoremap yl yy


"===========
" SETTINGS
" toggle line numbers 
nnoremap <C-o> <ESC>:call ToggleLines()<CR>                                               
inoremap <C-o> <ESC>:call ToggleLines()<CR> 
vnoremap <C-o> <ESC>:call ToggleLines()<CR>
cnoremap <C-o> <ESC>:call ToggleLines()<CR>
" toggle mouse
nnoremap <C-t> <ESC>:call ToggleMouse()<CR>
vnoremap <C-t> <ESC>:call ToggleMouse()<CR>
" CHANGE BACKGROUND COLOR WITH SHIFT P
nnoremap <S-p> <ESC>:call ToggleBackground()<CR>
"toggle whitespace chars with i
nnoremap i <ESC>:set list!<CR>

"===========
" WILL ROBINSON'S SPECIAL UTILITIES
" #1 KAPPA BUFFER SPECIAL COPY PASTE
" adding easy use of an additional copy and paste buffer
" so that I can cut and paste things around without blowing away 
" all of that good stuff that I found somewhere to insert
" [kappa] buffer
nnoremap cp <Home>"ky$<ESC>:echo "copied line to p register"<CR> 
vnoremap cp "ky<ESC>:echo "copied selection to p register"<CR>
inoremap <C-p> <ESC>"kpi<Right><ESC>:echo "pasted contents from p register"<CR>
vnoremap <C-p> "kp<Right><ESC>:echo "pasted contents from p register"<CR>
cnoremap <C-p> "kp<Right><ESC>:echo "pasted contents from p register"<CR>
nnoremap <C-p> "kp<Right><ESC>:echo "pasted contents from p register"<CR>
" FIND AND REPLACE WITHIN FILE
nnoremap <S-f> <ESC>:%s/<find>/<replace>/gc
vnoremap <S-f> <ESC>:%s/<find>/<replace>/gc
" This is a really fun hack. If you don't have write permissions hit this hotkey
nnoremap <S-o> <ESC>:w !sudo tee %<CR>

" SEARCH HIGHLIGHT
let hlstate=0
nnoremap <S-i> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<CR><ESC>:echo "toggle search highlight"<CR>
set hlsearch

" toggle auto scroll using space key
let scrollstate=1
nnoremap <Space> :if (scrollstate%2 == 0) \| set scrolloff=999 \| else \| set scrolloff=0 \| endif \| let scrollstate=scrollstate+1<CR><ESC>:echo "toggle center scroll"<CR>
set scrolloff=999
" show current directory
nnoremap cc <ESC>:pwd<CR>

" show full path of current file
nnoremap cv <ESC>:echo expand('%:p')<CR>

" change current directory
nnoremap cd <ESC>:cd 

" STARCRAFT-STYLE
nnoremap qq 'Q
" nnoremap ww 'W
" nnoremap ee 'E
nnoremap rr 'R
nnoremap tt 'T
nnoremap yy 'Y

" Copyright 2017, Mike DeFrancis. mike(AT)defrancis(dot)org
nnoremap <S-q> <ESC>mQ<ESC>:echo "mapped bookmark Q"<CR>
" nnoremap <S-w> <ESC>mW<ESC>:echo "mapped bookmark W"<CR>
" nnoremap <S-e> <ESC>mE<ESC>:echo "mapped bookmark E"<CR>
nnoremap <S-r> <ESC>mR<ESC>:echo "mapped bookmark R"<CR>
nnoremap <S-t> <ESC>mT<ESC>:echo "mapped bookmark T"<CR>
nnoremap <S-y> <ESC>mY<ESC>:echo "mapped bookmark Y"<CR>

" recording fun
" MAYBE CHANGE THESE
nnoremap <S-g> @g
nnoremap gg qg
nnoremap <C-g> q

" execute shell command
nnoremap ' <ESC>:! 

" MACRO RECORDING SHORTCUT
" Note that the following gg and G are remapped later in this, but work for go
" top and go bottom listed below.
nnoremap gt gg
nnoremap gb G

" OPEN PREVIOUS FILES
nnoremap pp <ESC>:browse oldfiles!<CR>

" open some favorite files like cake
nnoremap vim <ESC>:edit ~/.vimrc<CR>
nnoremap bash <ESC>:edit ~/.bashrc<CR>
nnoremap zsh <ESC>:edit ~/.zshrc<CR>
"nnoremap notes <ESC>:edit ~/.notes.txt<CR>Gi
" nnoremap <S-b> <ESC>:tabedit

" some cool server thing probably slows things down
"com! -complete=file -nargs=* Edit silent! exec "!vim --servername " . v:servername . " --remote-tab-silent <args>"

"Toggle Hexmode Fun
nnoremap mm <ESC>:Hexmode<CR>

" ex command for toggling hex mode - define mapping if desired
command! -bar Hexmode call ToggleHex()

" FUNCTIONS:
function! ToggleBackground()
	if &background == "dark"
		set background=light
	else
		set background=dark
	endif
endfunction

function! ToggleMouse()
    if &mouse == 'a'
        set mouse=
    else
        set mouse=a
    endif
endfunc

function! ToggleLines()
    set invnumber
endfunc

" helper function to toggle hex mode
function! ToggleHex()
  " hex mode should be considered a read-only operation
  " save values for modified and read-only for restoration later,
  " and clear the read-only flag for now
  let l:modified=&mod
  let l:oldreadonly=&readonly
  let &readonly=0
  let l:oldmodifiable=&modifiable
  let &modifiable=1
  if !exists("b:editHex") || !b:editHex
    " save old options
    let b:oldft=&ft
    let b:oldbin=&bin
    " set new options
    setlocal binary " make sure it overrides any textwidth, etc.
    silent :e " this will reload the file without trickeries 
              "(DOS line endings will be shown entirely )
    let &ft="xxd"
    " set status
    let b:editHex=1
    " switch to hex editor
    %!xxd
  else
    " restore old options
    let &ft=b:oldft
    if !b:oldbin
      setlocal nobinary
    endif
    " set status
    let b:editHex=0
    " return to normal editing
    %!xxd -r
  endif
  " restore values for modified and read only state
  let &mod=l:modified
  let &readonly=l:oldreadonly
  let &modifiable=l:oldmodifiable
endfunction

" vim -b : edit binary using xxd-format!
augroup Binary

  au BufReadPre  *.bin let &bin=1
  au BufReadPost *.bin if &bin | %!xxd
  au BufReadPost *.bin set ft=xxd | endif
  au BufWritePre *.bin if &bin | %!xxd -r
  au BufWritePre *.bin endif
  au BufWritePost *.bin if &bin | %!xxd
  au BufWritePost *.bin set nomod | endif
  "elf files
  au BufReadPre  *.elf let &bin=1
  au BufReadPost *.elf if &bin | %!xxd
  au BufReadPost *.elf set ft=xxd | endif
  au BufWritePre *.elf if &bin | %!xxd -r
  au BufWritePre *.elf endif
  au BufWritePost *.elf if &bin | %!xxd
  au BufWritePost *.elf set nomod | endif
augroup END

set secure

"""""""""""""""""""""""""""""""""""""
" IDEAS // REMOVED // SAVED FOR LATER


"function! ChangeToInsertCursor()

" MAYBE REMOVE THIS BELOW
"if has("autocmd")
"  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
"  au InsertEnter,InsertChange *
"    \ if v:insertmode == 'i' | 
"    \   silent execute '!echo -ne "\e[3 q"' | redraw! |
"    \ endif
"  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
"endif

"endfunction

" FUN WITH CTAGS!!!
" MAYBE REMOVE THIS ONE
"set tags=./tags,tags;
"nnoremap gj <ESC><C-]> 
"nnoremap tag <ESC>:!ctags -R --exclude=.git .
"nnoremap <C-j> <ESC><C-]>

" nnoremap rn <ESC>:Rename 
" nnoremap mv <ESC>:Move 
" Adding this line to allow manpage viewing
" runtime ftplugin/man.vim

" NOTES FOR EDITING YOURSELF

" mode switches (hotkeys only available when the correct switch used):
" nnoremap - normal mode
" inoremap - insert mode
" vnoremap - visual and select mode
" xnoremap - visual mode
" snoremap - select mode
" cnoremap - command line mode
" onoremap - operator pending mode

