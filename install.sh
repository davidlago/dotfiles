#!/bin/sh
set -e

# Install oh my zsh
if [ ! -d ~/.oh-my-zsh ]; then
  echo "===> Installing oh-my-zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  sed -i 's/robbyrussell/davidlago/g' ~/.zshrc
fi

# Link included file to .zshrc
if ! (grep ".zshrc-include" ~/.zshrc 2>&1 /dev/null); then
  echo "===> Linking .zshrc-include to main .zshrc..."
  echo "source ~/.zshrc-include" >> ~/.zshrc
fi
stow zsh

# (n)vim
rm -rf ~/.vimrc
mkdir -p ~/.vim/colors
stow vim
mkdir -p ~/.config
stow nvim

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
rm -rf nvim-linux-x86_64.tar.gz

# Install vim-plug
if [ ! -f ~/.vim/autoload/plug.vim ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim
fi
vim -c ':PlugInstall | q | :q!'

# Powerline fonts
if [ ! -d ~/powerline-fonts ]; then
  echo "===> Installing powerline fonts..."
  git clone https://github.com/powerline/fonts.git ~/powerline-fonts
  ~/powerline-fonts/install.sh
fi

# tmux
rm -rf ~/.tmux.conf
if [ ! -d ~/.tmux/plugins/tpm ]; then
  echo "===> Installing TPM..."
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
stow tmux

# git
rm -rf ~/.gitconfig
rm -rf ~/.gitconfig-include
stow git

# Use a case statement to determine the OS
case $(uname -s) in
    Linux)
        sudo apt-get install silversearcher-ag
        ;;
    Darwin)
        brew install the_silver_searcher
        ;;
esac

echo "=================================================================="
echo " Done! If you are on a Mac, remember to update the terminal font  "
echo " to one of the Powerline variants. Also, you need to reload tmux  "
echo " config by opening it and hitting ctrl + b + r, and installing    "
echo " tmux-powerlin with ctrl + b + I.                                 "
echo "=================================================================="
