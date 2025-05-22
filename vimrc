" Set Background
set background=dark
" Set colorscheme
colorscheme gruvbox
" Enable Vim-specific features, disabling strict vi compatibility
set nocompatible"

" Enable auto-indentation, copying indent from previous line
set autoindent

" Exclude #include files from completion to speed up
set complete-=i

" Insert tabs as spaces when at start of line
set smarttab

" Convert tabs to spaces
set expandtab

" Set tab width to 2 spaces
set tabstop=2

" Set soft tab (spaces) width to 2
set softtabstop=2

" Set indentation width to 2 spaces (auto indent, >>, <<, =
" If shiftwidth is set to 0, Vim uses the value of tabstop instead.
set shiftwidth=0

" Exclude octal from number formats (e.g., for increment/decrement)
set nrformats-=octal

" Enable timeout for key sequences
set ttimeout

" Set timeout length for key sequences to 100ms
set ttimeoutlen=100

" Highlight search matches as you type
set incsearch

" Always show status line (0=never, 1=default=show if 2+ windows)
set laststatus=2

" Enable enhanced command-line completion menu
set wildmenu

" Keep X lines visible above/below cursor
set scrolloff=4

" Keep X columns visible left/right of cursor
set sidescrolloff=5

" Display last line even if too long
set display+=lastline

" Customize invisible character display (tabs, trailing spaces, etc.)
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+

" Allow joining lines with comments cleanly
set formatoptions+=j

" Include gems.tags file for tag searches
set tags+=gems.tags

" Store up to 1000 command-line history entries
set history=1000

" Allow up to 50 tabs (=tab pages opened)
set tabpagemax=50

" Include ! for viminfo to save uppercase marks
set viminfo^=!

" Store file marks in viminfo
set viminfo+=f1

" Exclude options from session saving
set sessionoptions-=options

" Exclude options from view saving
set viewoptions-=options

" Enable true color support in terminal
set termguicolors

" Set backup directory (must exist)
let &backupdir = '/home/thomasgrusz/.local/share/vim/backup//'

" Set undo directory (must exist)
let &undodir = '/home/thomasgrusz/.local/share/vim/undodir//'

" Enable persistent undo
set undofile

" Enable mouse support in all modes
set mouse=a

" Show line numbers
set number

" Highlight current line
set cursorline

" Highlight only the line number for cursorline
set cursorlineopt=number

" Set minimum window width to 79 columns
set winwidth=79

" Set minimum window height to 5 lines
set winheight=5

" Set minimum height for inactive windows to 5 lines
set winminheight=5

" Complete longest match first, then show full menu
set wildmode=longest,full

" Ignore object files, git, and other temporary files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Ignore compressed archives
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore vendor and cache directories
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore swap and backup files
set wildignore+=*.swp,*~,._*

" Set fold method to indent-based (commented out)
"set foldmethod=indent

" Limit fold nesting to 3 levels
set foldnestmax=3

" Disable folding by default
set nofoldenable

" Highlight search matches
set hlsearch

" Make searches case-insensitive
set ignorecase

" Override ignorecase if search contains uppercase
set smartcase

" Include hyphen in keywords for word boundaries
set iskeyword+=-

" Open vertical splits to the right
set splitright

" Open horizontal splits below
set splitbelow

" Suppress intro message
set shortmess+=I

" Show partial commands in bottom-right
set showcmd

" Use existing tab if buffer is open
set switchbuf=usetab

" Allow switching buffers without saving
set hidden

" Wrap lines at word boundaries
set linebreak

" Show one space as wrap indicator on next line
set showbreak=" "

" Suppress swap file attention message (commented out)
"set shortmess+=A

" Set idle time for swap file updates to 1500ms
set updatetime=1500

" Use git grep for :grep command
set gp=git\ grep\ -n

" Start new undo block before Ctrl+U in insert mode
inoremap <C-U> <C-G>u<C-U>

" Start new undo block before Ctrl+W in insert mode
inoremap <C-W> <C-G>u<C-W>

" Map jj to escape in insert mode
inoremap jj <esc>

" Copy to end of line with Y in normal mode
nnoremap Y y$

" Repeat last substitution with flags
nnoremap & :&&<CR>

" Repeat last substitution with flags in visual mode
xnoremap & :&&<CR>

" Move down display lines in visual mode
vmap j gj

" Move up display lines in visual mode
vmap k gk

" Move down display lines in normal mode
nmap j gj

" Move up display lines in normal mode
nmap k gk

" Center screen on next search match
noremap n nzz

" Center screen on previous search match
noremap N Nzz

" Visually select last changed/yanked text
noremap gV `[v`]

" Restore cursor position after yank in visual mode
vnoremap <silent> y y`]

" Restore cursor position after paste in normal mode
nnoremap <silent> p p`]

" Expand %% to current file's directory in command mode
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Clear search highlight and update diff
nnoremap <silent> <C-P> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>

" Set swap file directory
let &directory = '/home/thomasgrusz/.vim' . '//,' . &directory

" Auto-check for file changes on focus or buffer enter
au FocusGained,BufEnter,CursorHold,CursorHoldI * if !bufexists("[Command Line]") | checktime | endif

" Move to left window
map <C-h> <C-w>h

" Move to bottom window
map <C-j> <C-w>j

" Move to top window
map <C-k> <C-w>k

" Move to right window
map <C-l> <C-w>l

" Set leader key to backslash
let mapleader = "\\"

" Open vertical terminal with leader + backslash
nnoremap <leader>\ :vertical terminal<CR>

" Map space to enter command mode
nnoremap <space> :

" Insert new line below and return to normal mode
nnoremap o o<esc>

" Insert new line above and return to normal mode
nnoremap O O<esc>

" Move line up
nnoremap <silent> <Esc>k :m-2<CR>

" Move line down
nnoremap <silent> <Esc>j :m+1<CR>

" Move line up (Alt+Up)
nnoremap <silent> <M-Up> :m-2<CR>

" Move line down (Alt+Down)
nnoremap <silent> <M-Down> :m+1<CR>

" Move selected lines up in visual mode
xnoremap <silent> <Esc>k :m-2<CR>gv=gv

" Move selected lines down in visual mode
xnoremap <silent> <Esc>j :m'>+<CR>gv=gv

" Configure lightline plugin with wombat colorscheme
let g:lightline = {
\   'colorscheme': 'wombat',
\   'active': {
\     'left': [ [ 'mode', 'paste' ],
\               [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
\   },
\   'component_function': {
\     'gitbranch': 'FugitiveHead'
\   },
\ }

" Configure ALE linters for specific filetypes
let g:ale_linters = {
\   'python': ['flake8'],
\   'javascript': ['eslint'],
\   'html': ['tidy', 'eslint'],
\ }

" Configure ALE fixers for specific filetypes
let g:ale_fixers = {
\    'python': ['autopep8'],
\    'javascript': ['eslint'],
\    'html': ['tidy'],
\ }

" Define 16 ANSI colors for terminal
let g:terminal_ansi_colors = [
  \ '#000000', '#cc0000', '#4e9a06', '#c4a000',
  \ '#3465a4', '#75507b', '#06989a', '#d3d7cf',
  \ '#555753', '#ef2929', '#8ae234', '#fce94f',
  \ '#729fcf', '#ad7fa8', '#34e2e2', '#eeeeec'
  \ ]

" Set terminal foreground and background colors
highlight Terminal guifg=#ebdbb2 guibg=#282828

" Define custom Grep command using silent grep
command! -nargs=+ Grep silent grep! <args>

" Set up Python development environment
augroup PythonSettings
    autocmd!
    autocmd FileType python call s:LoadPythonDevEnvironment()
augroup END

" Load Python-specific plugins and mappings
function! s:LoadPythonDevEnvironment()
    packadd ale         " Load linter plugin
    packadd jedi-vim    " Load Python syntax plugin
    nnoremap <buffer> <leader>f :ALEFix<CR>
    nnoremap <buffer> <leader>] :update<CR>:terminal python3 %:p<CR>
endfunction

" Set up HTML/CSS development environment
augroup HTMLCSSSettings
    autocmd!
    autocmd FileType html,css call s:htmlAndCss()
augroup END

" Load HTML/CSS-specific plugins and mappings
function! s:htmlAndCss()
    packadd ale             " Load linter plugin
    packadd emmet-vim       " Load emmet plugin
    packadd vim-css-color   " Load css color plugin
    nnoremap <buffer> <leader>f :ALEFix<CR>
    nnoremap <buffer> <leader>l :terminal browser-sync -w<CR>
endfunction

" Set up JavaScript development environment
augroup JavaScriptSettings
    autocmd!
    autocmd FileType javascript call s:jsSettings()
augroup END

" Load JavaScript-specific plugins and mappings
function! s:jsSettings()
    packadd ale
    nnoremap <buffer> <leader>f :ALEFix<CR>
    nnoremap <buffer> <leader>] :update<CR>:terminal node %:p<CR>
endfunction

" Remove trailing whitespace on save
augroup whitespaceremoval
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END

" Open quickfix window after non-location list commands
autocmd QuickFixCmdPost [^l]* nested cwindow 20 | redraw!

" Close quickfix window after selecting an item
autocmd FileType qf nnoremap <buffer> <CR> <CR>:cclose<CR>

"===============================================================================
" %s/\Csearchterm/replacement/g - force case-sensitive searches (\C)
" %s/\cSEARCHTERM/replacement/g - force case-insensitive searches (\c)

" sudo apt install fonts-powerline fonts-jetbrains-mono

" *** Python projects
" Create and start a virtual environment
" in the project folder and download relevant packages:
"   python3 -m venv venv
"   source venv/bin/activate
"   pip install flake8 autopep8
"
" *** Javascript projects
" Locally install the js linter 'eslint' in the project directory and initialize it:
"   npm install eslint --save-dev
"   npx eslint --init

"Also install a plugin to lint javascript within html files:
" 'eslint-plugin-html' and add 2 configuration lines inside
" 'eslint.config.mjs':

" import html from "eslint-plugin-html"
"   export default [
"     {
"       files: ["**/*.html"],
"       plugins: { html },
"     },
"   ]

" Then add a ternjs (autocomplete) configuration file:
"
"   .tern-project:
"     {
"       "libs": [
"         "browser",
"         "ecmascript"
"       ],
"       "plugins": {
"         "esmodules": {}
"       }
"     }

" Also make sure that the 'tidy' package is installed on the system.
" This package is needed by the vim plugin for 'ale' for html linting.
"       'sudo apt install tidy'
