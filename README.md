# Dotfiles

My dotfiles, managed with [dotbot](https://github.com/anishathalye/dotbot/).

## Contents

These dotfiles contain the following :

-   zsh with [zinit](https://github.com/zdharma/zinit)

## Usage

1. Fork and/or clone this repo.
2. Run `./install` to automatically set up all configs or specify specific programs to only configure them (i.e `./install zsh`). The script is idempotent meaning it can safely be run multiple times.

## Configuration

-   You can edit the configs directly in the eponymous folders.
-   To add new files to an existing config remember to edit the relevant yaml in the [meta/configs](meta/configs) file.
-   When adding a program, create a new folder in [configs](configs) and new yaml in [meta/configs](meta/configs).
