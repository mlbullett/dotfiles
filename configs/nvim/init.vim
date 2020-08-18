"
" ~.config/nvim/init.vim
" Neovim init
"

" Source nvim configs
for f in split(glob('$XDG_CONFIG_HOME/nvim/config/*.vim'), '\n')
	execute 'source ' f
endfor
