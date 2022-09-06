#!/bin/sh

# Set up .vimrc
if [ -f "~/.vimrc" ]; then
  if [ ! -L "~/.vimrc" ]; then
    cp ~/.vimrc ~/.vimrc.bak.$(date +%s)
  fi

  rm ~/.vimrc
fi

ln -s ~/.vim/.vimrc ~/.vimrc

# vim-gitgutter
vim -u NONE -c "helptags ~/.vim/pack/plugins/start/vim-gitgutter/doc" -c q

# coc.nvim
# Install nodejs LTS if not present
if [ ! -x "$(command -v node)" ]; then
  curl --fail -sfLS install-node.vercel.app/lts | sh
  curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
  export PATH="/usr/local/bin/:$PATH"
fi

cd ~/.vim/pack/plugins/start/coc.nvim

yarn install

vim -c "helptags ~/.vim/pack/plugins/start/coc.nvim/doc/ | q"
