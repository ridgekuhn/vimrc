#!/bin/bash

# Set up .vimrc
ln -s ~/.vim/.vimrc ~/.vimrc

# vim-gitgutter
vim -u NONE -c "helptags ~/.vim/pack/utils/start/vim-gitgutter/doc" -c q

# indentLine
vim -u NONE -c "helptags  ~/.vim/pack/vendor/start/indentLine/doc" -c q

# vim-graphql
vim -u NONE -c "helptags ~/.vim/pack/codesyntax/start/vim-graphql/doc" -c q

# Conquest of Completion
# Install nodejs LTS if not present
if [ ! -x "$(command -v node)" ]; then
  curl --fail -sfLS install-node.vercel.app/lts | sh
  export PATH="/usr/local/bin/:$PATH"
fi

cd ~/.vim/pack/utils/start/coc.nvim

yarn install

