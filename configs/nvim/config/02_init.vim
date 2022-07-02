"
" ~.config/nvim/config/02_init.vim
" Neovim settings
"

" General
filetype plugin indent on               " Enable filetype plugins
syntax enable                           " Use syntax-highlight

set autoread                            " Reread file when changed from the outside
set autowrite                           " Save buffers automatically
set clipboard=unnamedplus              " Set clipboard register
set encoding=utf8                       " Utf-8 encoding
set hidden                              " Allow buffer switching
set history=10000                       " Length of history
set path+=**                            " fuzzy matching
set shell=$SHELL                        " Use environment shell
set updatetime=100                      " Reduce update delay to 100ms
set winminheight=0                      " Windows can be 0 line height

" Appearance
set cmdheight=1                         " Height of command bar
set background=dark                     " Background is always dark
set laststatus=2                        " Show status line
set list                                " Display invisible characters
set listchars=tab:»»,trail:•,nbsp:~     " Define those invisible characters
set more                                " Show more prompt when listing fills screen
set noerrorbells                        " Remove annoying error bells
set nolazyredraw                        " don't redraw while executing macros
set notermguicolors                     " Enable true color
set novisualbell                        " Remove visual bells too
set ruler                               " Show the cursor position
set rulerformat=%l,%v                   " Format of ruler
set showmatch                           " Show matching braces
set splitbelow splitright               " Sane splits
set title                               " Set title of window to file title

" Input
set backspace=indent,eol,start          " Backspace functions as normal
set mouse=a                             " Use mouse in all modes
set mousemodel=popup                    " Mouse menu
set nostartofline                       " Don't reset cursor to start of line when moving around
set scrolloff=10                        " Start scrolling before horizontal border of window
set scrolljump=0                        " Lines to scroll when cursor leaves screen
set sidescrolloff=10                    " Start scrolling before vertical border of window
set ttimeoutlen=0                       " Remove wait for key code sequence completion
set wildmode=list:longest,full          " Command <Tab> completion, list matches, then longest common part, then all.

" Lines
"set cursorline                          " Highlights current line
set linespace=0                         " No extra spaces between rows
set number relativenumber               " Line numbers
set numberwidth=4                       " Width of line col
set wrap breakindent                    " Line wrapping preserves indentation
set wrapscan                            " Search wraps around the file

" Indentation
set autoindent                          " Copy indent of previous line
set expandtab                           " Expand tabs to spaces
set linebreak                           " Soft wrapping
set nojoinspaces                        " Prevents inserting two spaces after punctuation on a join (J)
set shiftround                          " Round indent to multiple of shiftwidth
set shiftwidth=4                        " The # of spaces for indenting
set showbreak=↪                         " Show ellipsis at breaking
set smartindent                         " Automatic indentation rules
set smarttab                            " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces
set softtabstop=4                       " # of spaces a tab counts for while editing
set tabstop=4                           " hard spaces in tab

" Search
set hlsearch                            " Stop highlighting searches
set grepprg=rg\ --vimgrep               " Use ripgrep instead of grep
set ignorecase                          " Case insensitive
set incsearch                           " Highlight search result dynamically as typing
set magic                               " Enable extended regexes
set smartcase                           " Ignores case insensitivity if pattern contains uppercase letter

" Folding
set foldlevelstart=99                   " folds open by default
set foldmethod=syntax                   " Fold are defined by syntax highlighting

" Undo
if has('persistent_undo') && exists("&undodir")
    set undodir=$XDG_CACHE_HOME/.nvim_undo
    set undolevels=1000
    set undoreload=10000
endif
