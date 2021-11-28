# Requirements

Vim 8+
[NodeJS](https://nodejs.org/)
[Yarn](https://yarnpkg.com/)

&nbsp;

---

# Included Modules

## Auto-Completion ##

* [auto-pairs](https://github.com/jiangmiao/auto-pairs)

* [emmet-vim](https://github.com/mattn/emmet-vim)

* [vim-visual-multi](https://github.com/mg979/vim-visual-multi)

## Code Style ##

* [EditorConfig Vim](https://github.com/editorconfig/editorconfig-vim)

* [Vim Better Whitespace](https://github.com/ntpeters/vim-better-whitespace)

* [vim-styled-components](https://github.com/styled-components/vim-styled-components.git)

* [indentLine](https://github.com/Yggdroot/indentLine)

## Code Syntax ##

* [typescript-vim](https://github.com/leafgarland/typescript-vim)

* [vim-javascript](https://github.com/pangloss/vim-javascript)

* [vim-jsx-pretty](https://github.com/MaxMEllon/vim-jsx-pretty)

* [vim-jsx-typescript](https://github.com/peitalin/vim-jsx-typescript)

## Color Schemes ##

* [Solarized Colorscheme for Vim](https://github.com/altercation/vim-colors-solarized)

* [vim-solarized8](https://github.com/lifepillar/vim-solarized8)

## Utils ##

* [Conquer of Completion](https://github.com/neoclide/coc.nvim)

* [lightline.vim](https://github.com/itchyny/lightline.vim)

* [NERDtree](https://github.com/preservim/nerdtree)

* [vim-gitgutter](https://github.com/airblade/vim-gitgutter)

&nbsp;

---

# Installation

1. Remove any existing vim configuration
    ```shell
    $ rm ~/.vimrc
    $ rm -r ~/.vim
    ```

2. Clone the repository to your home directory
    ```shell
    $ git clone git@github.com:ridgekuhn/vimrc.git ~/.vim
    ```

3. Initialize the submodules
    ```shell
    $ cd ~/.vim
    $ git submodule init && git submodule update
    ```

4. Run the post-install script
    ```shell
    $ ~/.vim/.post-install.sh
    ```
5. Install Node and Yarn (for Conquer of Completion)

6. (Optional) Set the background color of your terminal to `#002b36` for Solarized compatibility.
        MacOS users, try the [included Terminal Profile](https://github.com/ridgekuhn/vimrc/blob/master/HomebrewBlue.terminal).

&nbsp;

---

# Key Binding Cheatsheet

## NERDtree
* `Ctrl + O`: Opens NERDtree file browser

## emmet-vim
* `Ctrl + Y`: Emmet leader

## vim-visual-multi
* select words with Ctrl-N (like Ctrl-d in Sublime Text/VS Code)
* create cursors vertically with Ctrl-Down/Ctrl-Up
* select one character at a time with Shift-Arrows
* press n/N to get next/previous occurrence
* press [/] to select next/previous cursor
* press q to skip current and get next occurrence
* press Q to remove current cursor/selection

## auto-pairs
* `M-p`: Toggle Autopairs (g:AutoPairsShortcutToggle)

&nbsp;

---

# Resources

* [Conquer of Completion extensions](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#implemented-coc-extensions)

* [emmet-vim cheatsheet](https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL)

* [EditorConfig Properties](https://github.com/editorconfig/editorconfig/wiki/EditorConfig-Properties)

