#!/bin/sh

# Install oh my zsh
if [ ! -d ~/.oh-my-zsh ]; then
  echo "===> Installing oh-my-zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  sed -i 's/robbyrussell/davidlago/g' ~/.zshrc
fi

# Symlinks
rm ~/.vimrc
rm ~/.tmux.conf
ln -sf ~/dotfiles/.vimrc ~/.vimrc
mkdir -p ~/.vim/colors
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/davidlago.zsh-theme ~/.oh-my-zsh/themes/davidlago.zsh-theme
ln -sf ~/dotfiles/monokai.vim ~/.vim/colors/monokai.vim

# Link included file to .zshrc
if ! (grep ".zshrc-include" ~/.zshrc 2>&1 /dev/null); then
  echo "===> Linking .zshrc-include to main .zshrc..."
  echo "source ~/dotfiles/.zshrc-include" >> ~/.zshrc
fi

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
  git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
fi

# Powerline fonts (only needed in Macs)
if [ ! -d ~/powerline-fonts ]; then
  echo "===> Installing powerline fonts..."
  git clone https://github.com/powerline/fonts.git ~/powerline-fonts
  ~/powerline-fonts/install.sh
fi

# Nerdtree
if [ ! -d ~/.vim/bundle/nerdtree ]; then
  echo "===> Installing NERDTree..."
  git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
fi

# CtrlP
if [ ! -d ~/.vim/bundle/ctrlp.vim ]; then
  echo "===> Installing CtrlP..."
  git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
fi

# Vim Fugitive
if [ ! -d ~/.vim/bundle/vim-fugitive ]; then
  echo "===> Installing Vim Fugitive..."
  git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
  vim -u NONE -c "helptags vim-fugitive/doc" -c q
fi

# Git gutter
if [ ! -d ~/.vim/bundle/vim-gitgutter ]; then
  echo "===> Installing Vim Gitgutter..."
  git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
fi

# Silver searcher
if [ ! -d ~/.vim/bundle/ag ]; then
  echo "===> Installing Silver Searcher..."
  git clone https://github.com/rking/ag.vim ~/.vim/bundle/ag
fi

# indentLine
if [ ! -d ~/.vim/bundle/indentLine ]; then
  echo "===> Installing indentLine..."
  git clone https://github.com/Yggdroot/indentLine ~/.vim/bundle/indentLine
fi

echo "=================================================================="
echo " Done! Post install instructions:"
echo " Mac:"
echo "   * brew install the_silver_searcher"
echo "   * change the default font for the terminal to powerline"
echo " Linux:"
echo "   * sudo apt-get install silversearcher-ag"
echo " Both:"
echo "   * Add link to .gitconfig-include in .gitconfig:"
echo "     [include]"
echo "         path = ~/dotfiles/.gitconfig-include"
echo "=================================================================="
