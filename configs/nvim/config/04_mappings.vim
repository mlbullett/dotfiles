"
" ~.config/nvim/config/04_mappings.vim
" Neovim mappings
"

" Map leader shortcuts
let mapleader = ";"

" Colemak navigation shortcuts
noremap n h
noremap e k 
noremap i j
noremap o l
noremap h n
noremap k e
noremap j i
noremap l o
noremap N H
noremap E K
noremap I J
noremap O L
noremap H N
noremap K E
noremap J I
noremap L O

" Faster window split navigation
noremap <A-n> <C-w>n
noremap <A-e> <C-w>e
noremap <A-i> <C-w>i
noremap <A-o> <C-w>o
noremap <A-Left> <C-w>n
noremap <A-Down> <C-w>e
noremap <A-Up> <C-w>i
noremap <A-Right> <C-w>o

" BOL/EOL
noremap <c-n> <home>
noremap <c-o> <end>

" Quick save
noremap <leader>w :w!<CR>

" Quick quit
noremap<leader>q :quit<CR>
noremap<leader>Q :qa!<CR>

" Searching in command history
cnoremap <c-e> <up>
cnoremap <c-i> <down>

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
