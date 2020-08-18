"
" ~.config/nvim/config/04_mappings.vim
" Neovim mappings
"

" Map leader shortcuts
let mapleader = ";"

" Faster window split navigation
noremap <A-h> <C-w>h
noremap <A-j> <C-w>j
noremap <A-k> <C-w>k
noremap <A-l> <C-w>l
noremap <A-Left> <C-w>h
noremap <A-Down> <C-w>j
noremap <A-Up> <C-w>k
noremap <A-Right> <C-w>l

" BOL/EOL
noremap <c-h> <home>
noremap <c-l> <end>

" Quick save
noremap <leader>w :w!<CR>

" Quick quit
noremap<leader>q :quit<CR>
noremap<leader>Q :qa!<CR>

" Searching in command history
cnoremap <c-k> <up>
cnoremap <c-j> <down>

" Sort selection
vnoremap <c-s> :sort i<CR>

" Select previously pasted text
noremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Shortcuts to open files in the same directory as current file
noremap <leader>oe :e <c-r>=expand("%:p:h") . "/" <cr>
noremap <leader>ot :tabe <c-r>=expand("%:p:h") . "/" <cr>
noremap <leader>os :split <c-r>=expand("%:p:h") . "/" <cr>
noremap <leader>ov :vsplit <c-r>=expand("%:p:h") . "/" <cr>

" Spellchecker
map <leader>s :setlocal spell! spelllang=en,fr,de<CR>

" Nerdtree
map <leader>n :NERDTreeToggle<CR>
