elvish.vim
---

A vim plugin for [Elvish unix shell](https://github.com/elves/elvish).

### Features

Currently supports basic syntax highlighting for Elven language files (*.elv).

Other features around coding Elvish may be added in the future.

See `test.elv` for an example of various highlighting.

### Install

Vim Plug

    Plug 'dmix/elvish.vim', { 'on_ft': ['elvish']}

SpaceVim:

    \ ['dmix/elvish.vim', { 'on_ft' : ['elvish']}]
    
Vundle:

    Plugin 'dmix/elvish.vim'

Pathogen:
    
    cd ~/.vim/bundle && \
    git clone https://github.com/dmix/elvish.vim.git'

### TODO

- Highlight variables ($var, @var)
- Highlight map keys
- Full support for builtin API commands https://elvish.io/ref/builtin.html
- Fix bug where math division slashes is also highlighting slashes in paths
- Highlight commands being called in parens
- Different colour for variable prefixes for example `re:find` matching "re"

### Change Log

Version 0.1

    - Basic support for Elven syntax
    - Wrote README

### License

MIT

Thanks to @huiyiqun for the initial version which I based this on https://github.com/huiyiqun/elvish.vim
