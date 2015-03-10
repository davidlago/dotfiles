#!/bin/sh

# Symlinks
rm ~/.vimrc
rm ~/.tmux.conf
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/davidlago.zsh-theme ~/.oh-my-zsh/themes/davidlago.zsh-theme

# Pathogen
if [ ! -d ~/.vim/bundle ]; then
  echo "===> Installing pathogen..."
  mkdir -p ~/.vim/autoload ~/.vim/bundle
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi

# Vim airline
if [ ! -d ~/.vim/bundle/vim-airline ]; then
  echo "===> Installing vim-airline..."
  git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
fi

# Powerline fonts
if [ ! -d ~/powerline-fonts ]; then
  echo "===> Installing powerline fonts..."
  echo "===> Don't forget to change the default font for the terminal"
  git clone git@github.com:powerline/fonts.git ~/powerline-fonts
  ~/powerline-fonts/install.sh
fi

# Nerdtree
if [ ! -d ~/.vim/bundle/nerdtree ]; then
  echo "===> Installing NERDTree..."
  echo "===> Don't forget to exec :Helptags in Vim"
  git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
fi

# CtrlP
if [ ! -d ~/.vim/bundle/ctrlp.vim ]; then
  echo "===> Installing CtrlP..."
  echo "===> Don't forget to exec :Helptags in Vim"
  git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
fi

# Vim Fugitive
if [ ! -d ~/.vim/bundle/vim-fugitive ]; then
  echo "===> Installing Vim Fugitive..."
  git clone git://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
  vim -u NONE -c "helptags vim-fugitive/doc" -c q
fi

# Git gutter
if [ ! -d ~/.vim/bundle/vim-gitgutter ]; then
  echo "===> Installing Vim Gitgutter..."
  git clone git://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
fi
