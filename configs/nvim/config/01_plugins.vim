"
" ~.config/nvim/config/01_plugins.vim
" Neovim plugins
"

" Plugin call
call plug#begin('~/.local/share/nvim/plugged')
    " Appearance
        Plug 'deviantfero/wpgtk.vim'            " Wpgtk colorscheme
        Plug 'vim-airline/vim-airline'          " Status bar & tabline
    " Auto-completion
        Plug 'jiangmiao/auto-pairs'             " Automatic quote and bracket pairing
        Plug 'scrooloose/nerdcommenter'         " Automatic commenting
        Plug 'tpope/vim-surround'               " More quote and bracket automation
    " Development
        Plug 'sheerun/vim-polyglot'             " Syntax and formatting language pack
        Plug 'w0rp/ale'                         " Linting
    " File management
        Plug 'majutsushi/tagbar'                " Outline viewer
        Plug 'scrooloose/nerdtree'              " Sidebar navigation
        Plug 'tpope/vim-fugitive'               " Git wrapper
    " Tools
        Plug 'godlygeek/tabular'                " Aligning
        Plug 'lervag/vimtex'                    " Latex support
        Plug 'matze/vim-tex-fold'               " Latex folding
        Plug 'Konfekt/FastFold'                 " Folding performance
        Plug 'machakann/vim-highlightedyank'    " Hightlight yanked text
        Plug 'mbbill/undotree'                  " Undo tree
        Plug 'nathanaelkane/vim-indent-guides'  " Indent guide
        Plug 'terryma/vim-multiple-cursors'     " Multicursor support
        Plug 'tmhedberg/SimpylFold'             " Better folding
call plug#end()

" Plugin settings
" nerdcommenter
let g:NERDSpaceDelims = 1                       " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1                   " Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left'                 " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDCommentEmptyLines = 1                 " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1            " Enable trimming of trailing whitespace when uncommenting
let g:NERDToggleCheckAllLines = 1               " Enable NERDCommenterToggle to check all selected lines is commented or not
" highlightedyank
let g:highlightedyank_highlight_duration = 0
let g:tex_flavor  = 'latex'
let g:tex_conceal = ''
let g:vimtex_fold_manual = 1
let g:vimtex_latexmk_continuous = 1
let g:vimtex_compiler_progname = 'nvr'
