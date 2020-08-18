"
" ~/.config/nvim/functions.vim
" Neovim auto commands
"

" On Open
" Jump to the last edit position when opening files
augroup LastPosition
	autocmd! BufReadPost *
		\ if line("'\"") > 0 && line("'\"") <= line("$") |
		\     exe "normal! g`\"" |
		\ endif
augroup END

" Disable automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" On Save
" Update nvim when config files change
augroup vimrchooks
    au!
    autocmd BufWritePost *.vim source ~/.config/nvim/init.vim
augroup END

" On focus loss
" Unfocused window has usual line numbers
augroup LineNumberHook
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave *
          \ if &modifiable | set relativenumber | endif
    autocmd BufLeave,FocusLost,InsertEnter   *
          \ if &modifiable | set norelativenumber | endif
augroup END

" Opens help vertically
autocmd FileType help wincmd L

" On Exit
" Close nvim if NERDTree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Clean out tex build files
autocmd VimLeave *.tex !texclear %
