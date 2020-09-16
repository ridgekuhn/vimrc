# Requirements
Vim 8+

# Included Modules
* [pathogen.vim](https://github.com/tpope/vim-pathogen)

* [Solarized Colorscheme for Vim](https://github.com/altercation/vim-colors-solarized)

* [lightline.vim](https://github.com/itchyny/lightline.vim)

* [NERDtree](https://github.com/preservim/nerdtree)

* [EditorConfig Vim](https://github.com/editorconfig/editorconfig-vim)

* [emmet-vim](https://github.com/mattn/emmet-vim)

* [vim-visual-multi](https://github.com/mg979/vim-visual-multi)

* [auto-pairs](https://github.com/jiangmiao/auto-pairs)

* [Asynchronous Lint Engine (ALE)](https://github.com/dense-analysis/ale)

* [Vim Better Whitespace](https://github.com/ntpeters/vim-better-whitespace)

* [vim-prettier](https://github.com/prettier/vim-prettier)

* [vim-jsx-pretty](https://github.com/MaxMEllon/vim-jsx-pretty)

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

5. (Optional) Set the background color of your terminal to `#002b36` for Solarized compatibility.
        MacOS users, try the [included Terminal Profile](https://github.com/ridgekuhn/vimrc/blob/master/HomebrewBlue.terminal).

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

# Resources
* [emmet-vim cheatsheet](https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL)
* [EditorConfig Properties](https://github.com/editorconfig/editorconfig/wiki/EditorConfig-Properties)
