# Dotfiles

My dotfiles, managed with [dotbot](https://github.com/anishathalye/dotbot/).

## Contents

These dotfiles contain the following :

- [kovidgoyal/kitty](https://github.com/kovidgoyal/kitty)
- [neovim/neovim](https://github.com/neovim/neovim) using [junegunn/vimplug](https://github.com/junegunn/vim-plug)
- zsh using [z-shell/zi](https://github.com/z-shell/zi)
- [swaywm/sway](https://github.com/swaywm/sway)
- [emersion/kanshi](https://sr.ht/~emersion/kanshi/)
- and various local [scripts](configs/scripts) that are used throughout the config and should be checked on an individual basis (installation puts them in ~/.local/bin/ which should be added to \$PATH if not already)

## Usage

1. Fork and/or clone this repo.
2. Run `./install` to automatically set up all configs or specify specific programs to only configure them (i.e `./install zsh`). The script is idempotent meaning it can safely be run multiple times.

## Configuration

-   You can edit the configs directly in the eponymous folders.
-   To add new files to an existing config remember to edit the relevant yaml in the [meta/configs](meta/configs) file.
-   When adding a program, create a new folder in [configs](configs) and new yaml in [meta/configs](meta/configs).
