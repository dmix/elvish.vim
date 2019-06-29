elvish.vim:  A vim plugin for [Elvish](https://github.com/elves/elvish) unix shell.
---

### Features

Currently includes support for Elven language files (*.elv) with syntax
highlighting, comment strings, and tabbing. Other features around coding Elvish
will be added in the future.

Pull requests are welcome as the Elvish language evolves.

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

### Change Log

Version 0.2

- Support for commenting out lines (`gc` inserts `#` before each line)
- Tabbing defaults to 2 spaces
- Various improvements to sytnax highlighting thanks to [jdgoal512](https://github.com.jdgoal512)

Version 0.1

- Basic support for Elven syntax
- Created a test.elv file for testing various language examples

### TODO

- [x] Basic syntax highlighting for base language and builtins
- [x] Create a test.elv file to test various syntax structures
- [x] Highlight variables ($var, @var)
- [ ] Highlight map keys
- [ ] Full support for builtin API commands https://elvish.io/ref/builtin.html
- [ ] Fix bug where math division slashes is also highlighting slashes in paths
- [ ] Highlight commands being called in parens
- [ ] Different colour for variable prefixes for example re:find matching "re"

### License

MIT

*Thanks to [huiyiqun](https://github.com.huiyiqun) the initial version which I based this on his original [elvish.vim](https://github.com/huiyiqun/elvish.vim)*
